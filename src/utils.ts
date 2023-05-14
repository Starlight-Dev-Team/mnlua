import * as vscode from 'vscode';

/** Extension ID. */
export const EXTENSION_ID = 'starlight-dev-team.mnlua';

/** Reload window. */
export async function reloadWindow() {
  await vscode.commands.executeCommand('workbench.action.reloadWindow');
}
