---迷你世界脚本API语法库，世界 UI 管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1361)
---@meta

---游戏世界管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1361)
---@class UiLib
UI = {}

---@alias __UiWidgetName
---| 'left_title' # 左标题（默认："第1"）
---| 'right_title' # 右标题（默认："/40"）
---| 'left_desc' # 左描述（默认："大吉大利，我是第一"）
---| 'left_little_desc' # 左简述（默认："排名1"）
---| 'right_little_desc' # 右简述（默认："战胜4"）
---| 'battle_btn' # 比分面板按钮显示（默认：true）
---| 'result' # 比赛结果显示（默认：true）
---| 'result_bkg' # 比赛结果背景显示（默认：true）
---| 'reopen' # 再来一局按钮显示（默认：true）

---设置战斗总结（左标题）。
---@param name __UiWidgetName # 名称
---@param value string | boolean # 值
---@return ErrorCode
------
function UI:setGBattleUI(name, value) end

---世界坐标转换为小地图坐标。
---@param x number # X 坐标
---@param y number # Y 坐标
---@return ErrorCode, number, number # X 坐标、Z 坐标
function UI:world2RadarPos(x, y) end

---世界长度转换为小地图长度。
---@param length number # 长度
---@return ErrorCode, number
function UI:world2RadarDist(length) end

---@alias __MinimapRenderMode
---| 0 # 默认
---| 1 # 45° 旋转视角
---| 2 # 俯视角
---设置小地图视角。
---@param mode __MinimapRenderMode # 视角
---@return ErrorCode
------
function UI:setMinimapRenderMode(mode) end

---在小地图上作线段。
---@param uiname string
---@param p1x number # 起点 X 坐标
---@param p1y number # 起点 Y 坐标
---@param p2x number # 终点 X 坐标
---@param p2y number # 终点 Y 坐标
---@return ErrorCode
function UI:setShapeLine(uiname, p1x, p1y, p2x, p2y) end

---在小地图上作圆。
---@param uiname string
---@param x number # 圆心 X 坐标
---@param y number # 圆心 Y 坐标
---@param radius number # 半径
---@return ErrorCode
function UI:setShapeCircle(uiname, x, y, radius) end

---@alias __ScreenEffect
---| 1 # speedline
---| 2 # powerline
---| 3 # fog
---显示迷雾效果。
---@param type __ScreenEffect # 效果类型
---@param isloop boolean # 是否循环
---@param incspeed number # 增速
---@return ErrorCode
------
function UI:ShowScreenEffect(type, isloop, incspeed) end
