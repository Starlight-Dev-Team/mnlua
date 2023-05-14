import * as vscode from 'vscode';

import { EXTENSION_ID, reloadWindow } from './utils';

/** Enable plugin. */
async function enable() {
  await vscode.workspace.getConfiguration('mnlua').update('enable', true);
  await reloadWindow();
}

/**
 * @returns The folder path where the Lua library is located.
 */
function getLibraryPath(): string {
  const path = vscode.extensions.getExtension(EXTENSION_ID)?.extensionPath;
  return `${path}\\lua`;
}
/**
 * Setup Lua library for Miniworld Lua Script.
 */
async function setupLuaLibrary() {
  const luaLib = getLibraryPath();
  const luaConfig = vscode.workspace.getConfiguration('Lua');
  const oldLuaLib = (luaConfig.get('workspace.library') ?? []) as string[];
  if (!oldLuaLib.includes(luaLib)) { // not in existing config lib
    oldLuaLib.push(luaLib);
    luaConfig.update('workspace.library', oldLuaLib);
  }
}
/**
 * Remove Lua library for Miniworld Lua Script.
 */
async function removeLuaLibrary() {
  const luaConfig = vscode.workspace.getConfiguration('Lua');
  const luaLib = (luaConfig.get('workspace.library') ?? []) as string[];
  const lib = getLibraryPath();
  if (luaLib.includes(lib)) { // already loaded
    // remove library path
    await luaConfig.update('workspace.library', luaLib.filter((v) => v !== lib));
  }
}

/** Setup commands for VSCode. */
function setupCommands() {
  vscode.commands.registerCommand('mnlua.enable', enable);
}
/** Listen for user events. */
function listenEvents() {
  // config changed
  vscode.workspace.onDidChangeConfiguration(async (e) => {
    if (!e.affectsConfiguration('mnlua.enable')) return; // no effect
    const ans = await vscode.window.showWarningMessage(
      'MnLua config changed, reload to take effect?',
      'Reload',
      'Cancel',
    );
    if (ans === 'Reload') reloadWindow();
  });
}

export async function activate(context: vscode.ExtensionContext) {
  setupCommands();
  listenEvents();
  const config = vscode.workspace.getConfiguration('mnlua');
  if (!vscode.workspace.isTrusted) return; // enable in only trusted workspaces
  if (config.get('enable') !== true) { // not enabled
    await removeLuaLibrary();
    return;
  }
  await setupLuaLibrary();
}

// This method is called when your extension is deactivated
export function deactivate() {}
