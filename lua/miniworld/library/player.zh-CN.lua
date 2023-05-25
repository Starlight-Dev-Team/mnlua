---迷你世界脚本API语法库，玩家管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1359)
---@meta

---玩家管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1359)
---@class PlayerLib
Player = {}

---获取玩家属性。
---@param objid number # 玩家 ID
---@param attrtype PlayerAttr # 属性
---@return ErrorCode, number
function Player:getAttr(objid, attrtype) end

---设置玩家属性。
---@param objid number # 玩家 ID
---@param attrtype PlayerAttr # 属性
---@param val PlayerAttr # 值
---@return ErrorCode
function Player:setAttr(objid, attrtype, val) end

---获取房主 ID。
---@return ErrorCode, number
function Player:getHostUin() end

---判断玩家是否房主。
---@param objid number # 玩家 ID
---@return ErrorCode, boolean
function Player:isMainPlayer(objid) end

---获取房主 ID。
---@return ErrorCode, number
function Player:getMainPlayerUin() end

---获取玩家比赛结果。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getGameResults(objid) end

---设置玩家比赛结果。
---@param objid number # 玩家 ID
---@param result number # 比赛结果
---@return ErrorCode
function Player:setGameResults(objid, result) end

---获取玩家游戏分数。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getGameScore(objid) end

---设置玩家游戏分数。
---@param objid number # 玩家 ID
---@param score number # 游戏分数
---@return ErrorCode, number
function Player:setGameScore(objid, score) end

---获取玩家排行。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getGameRanking(objid) end

---设置玩家排行。
---@param objid number # 玩家 ID
---@param rank number # 排行
---@return ErrorCode
function Player:setGameRanking(objid, rank) end

---给玩家添加道具。
---@param objid number # 玩家 ID
---@param itemid number # 道具 ID
---@param num number # 道具数量
---@param prioritytype number # 优先顺序（`1` 表示快捷栏，`2` 表示背包栏）
---@return ErrorCode
function Player:gainItems(objid, itemid, num, prioritytype) end

---将玩家传送到出生点。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:teleportHome(objid) end

---获取玩家当前手持道具 ID。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getCurToolID(objid) end

---获取玩家昵称。
---@param objid number # 玩家 ID
---@return ErrorCode, string
function Player:getNickname(objid) end

---移除玩家的道具。
---@param objid number # 玩家 ID
---@param itemid number # 道具 ID
---@param num number # 移除数量
---@return ErrorCode
function Player:removeBackpackItem(objid, itemid, num) end

---获取玩家死亡次数。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getDieTimes(objid) end

---获取玩家剩余生命数。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getLeftLifeNum(objid) end

---获取玩家队伍。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getTeam(objid) end

---设置玩家队伍。
---@param objid number # 玩家 ID
---@param teamid number # 队伍 ID
---@return ErrorCode
function Player:setTeam(objid, teamid) end

---获取玩家当前饱食度。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getFoodLevel(objid) end

---设置玩家当前饱食度。
---@param objid number # 玩家 ID
---@param foodLevel number # 玩家饱食度
---@return ErrorCode
function Player:getFoodLevel(objid, foodLevel) end

---获取玩家当前快捷栏。
---@param objid number # 玩家 ID
---@return ErrorCode, number
function Player:getCurShotcut(objid) end

---设置玩家当前手持道具的消耗。
---@param objid number # 玩家 ID
---@param num number # 道具数量
---@return ErrorCode
function Player:onCurToolUsed(objid, num) end

---设置玩家道具冷却时间。
---@param objid number # 玩家 ID
---@param itemid number # 道具 ID
---@param cd number # 冷却时间（秒）
---@return ErrorCode
function Player:setSkillCD(objid, itemid, cd) end

---击败玩家，复活到指定位置。
---@param objid number # 玩家 ID
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@return ErrorCode
function Player:reviveToPos(objid, x, y, z) end

---设置玩家复活点位置。
---@param objid number # 玩家 ID
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@return ErrorCode
function Player:setRevivePoint(objid, x, y, z) end

---乘骑或脱离载具。
---@param objid number # 玩家 ID
---@param mountobjid number # 目标 Actor ID
---@param posindex number # 乘骑位置
---@return ErrorCode
function Player:mountActor(objid, mountobjid, posindex) end

---播放玩家动作。
---@param objid number # 玩家 ID
---@param actid number # 动作 ID
---@return ErrorCode
function Player:playAct(objid, actid) end

---对玩家显示飘窗文字。
---@param objid number # 玩家 ID
---@param info string # 飘窗文字
---@return ErrorCode
function Player:notifyGameInfo2Self(objid, info) end

---使玩家使用道具。
---@param objid number # 玩家 ID
---@param itemid number # 道具 ID
---@param status number # 使用状态
---@param onshift boolean # 是否按下 `Shift` 键
---@return ErrorCode
function Player:useItem(objid, itemid, status, onshift) end

---旋转玩家镜头。
---@param objid number # 玩家 ID
---@param yaw number # 水平偏移
---@param pitch number # 垂直偏移
---@return ErrorCode
function Player:rotateCamera(objid, yaw, pitch) end

---改变玩家视角。
---@param objid number # 玩家 ID
---@param viewmode ViewportType # 视角
---@param islock boolean # 是否锁定视角
---@return ErrorCode
function Player:changeViewMode(objid, viewmode, islock) end

---获取玩家行为属性状态。
---@param objid number # 玩家 ID
---@param actionattr PlayerAttr # 行为属性
---@return ErrorCode, boolean
function Player:checkActionAttrState(objid, actionattr) end

---设置玩家行为属性状态。
---@param objid number # 玩家 ID
---@param actionattr PlayerAttr # 行为属性
---@param switch boolean # 是否启用
---@return ErrorCode
function Player:setActionAttrState(objid, actionattr, switch) end

---设置玩家装备。
---@param objid number # 玩家 ID
---@param itemid number # 装备 ID
---@return ErrorCode
function Player:isEquipByResID(objid, itemid) end

---设置玩家位置。
---@param objid number # 玩家 ID
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@return ErrorCode
function Player:setPosition(objid, x, y, z) end

---获取玩家准星位置。
---@param objid number # 玩家 ID
---@return ErrorCode, number, number, number # 准星坐标
function Player:getAimPos(objid) end

---设置玩家对道具的操作属性。
---@param objid number # 玩家 ID
---@param attrtype PlayerAttr # 道具操作属性
---@param switch boolean # 是否启用
---@return ErrorCode
function Player:setItemAttAction(objid, itemid, attrtype, switch) end

---给玩家播放背景音乐。
---@param objid number # 玩家 ID
---@param musicId number # 背景音乐 ID
---@param volume number # 音量系数
---@param pitch number # 音调系数
---@param isLoop boolean # 是否循环播放
---@return ErrorCode
function Player:playMusic(objid, musicId, volume, pitch, isLoop) end

---停止玩家背景音乐。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:stopMusic(objid) end

---使玩家胜利。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:setGameWin(objid) end

---使玩家打开开发者商店。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:openDevStore(objid) end

---获取玩家手持道具类型。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:getPropsType(objid) end

---检测掉落物半径。
---@param objid number # 玩家 ID
---@param range number # 缩放比例
---@return ErrorCode
function Player:setCheckBoxScale(objid, range) end

---使玩家打开箱子。
---@param objid number # 玩家 ID
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@return ErrorCode
function Player:openBoxByPos(objid, x, y, z) end

---强制使玩家打开交互方块。
---@param objid number # 玩家 ID
---@param itemid number # 方块 ID
---@return ErrorCode
function Player:forceOpenBoxUI(objid, itemid) end

---打开商品购买弹窗。
---@param objid number # 玩家 ID
---@param devGoodsId number # 商品 ID
---@param customDesc string # 商品推荐语
---@return ErrorCode
function Player:openDevGoodsBuyDialog(objid, devGoodsId, customDesc) end

---设置玩家移动方式。
---@param objid number # 玩家 ID
---@param moveType MoveType # 移动方式
---@return ErrorCode
function Player:changPlayerMoveType(objid, moveType) end

---设置伤害免疫。
---@param objid number # 玩家 ID
---@param immunetype number # 免疫类型
---@param isadd boolean # 是否启用免疫
---@return ErrorCode
function Player:setImmuneType(objid, immunetype, isadd) end

---抖动玩家镜头。
---@param objid number # 玩家 ID
---@param duration number # 抖动时长
---@param power number # 力度系数
---@return ErrorCode
function Player:shakeCamera(objid, duration, power) end

---停止抖动玩家镜头。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:stopShakeCamera(objid) end

---给玩家播放 QQ 音乐。
---@param objid number # 玩家 ID
---@param musicId number # 音乐 ID
---@param volume number # 音量系数
---@param isLoop boolean # 是否循环播放
---@return ErrorCode
function Player:playQQMusic(objid, musicId, volume, isLoop) end

---暂停/恢复/停止 玩家的 QQ 音乐。
---@param operate QqMusicOp # 操作类型
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:operateQQMusic(operate, objid) end

---使玩家打开地图评价页。
---
---注意：游戏超过 3 分钟后才能调用，10 分钟内仅可调用一次。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:OpenAppraiseView(objid) end

---使玩家打开地图收藏页。
---
---注意：游戏超过 3 分钟后才能调用，10 分钟内仅可调用一次。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:OpenCollectionView(objid) end

---判断玩家是否迷你会员。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:IsMiniVip(objid) end

---发送好友请求。
---@param playerid number # 发送请求的玩家 ID
---@param playerid2 number # 收到请求的玩家 ID
---@return ErrorCode
function Player:SendFriendApply(playerid, playerid2) end

---判断是否存在好友。
---@param playerid number # 玩家 ID
---@param playerid2 number # 需要判断的玩家 ID
---@return ErrorCode
function Player:HasFriend(playerid, playerid2) end

---使玩家播放微缩道具动画。
---@param playerid number # 玩家 ID
---@param animid number # 动作 ID
---@param playmode AnimMode # 播放模式
---@return ErrorCode
function Player:PlayActInHand(playerid, animid, playmode) end

---使玩家打开开发者商店。
---@param objid number # 玩家 ID
---@return ErrorCode
function Player:openDevStoreNew(objid) end

---使玩家打开排行榜。
---@param playerid number # 玩家 ID
---@param id number # 排行榜 ID
---@return ErrorCode
function Player:OpenBuiltinRank(playerid, id) end

---使玩家关闭排行榜。
---@param playerid number # 玩家 ID
---@return ErrorCode
function Player:HideBuiltinRank(playerid) end
