---迷你世界脚本API语法库，游戏规则管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1355)
---@meta

---游戏世界管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1355)
---@class WorldLib
World = {}

---是否为白天。
---@return ErrorCode, boolean
function World:isDaytime() end

---是否自定义游戏。
---@return ErrorCode, boolean
function World:isCustomGame() end

---是否创造模式。
---@return ErrorCode, boolean
function World:isCreativeMode() end

---是否多人创造模式/编辑模式。
---@return ErrorCode, boolean
function World:isGodMode() end

---是否极限模式。
---@return ErrorCode, boolean
function World:isExtremityMode() end

---是否冒险旁观模式。
---@return ErrorCode, boolean
function World:isFreeMode() end

---是否单人游戏/冒险旁观。
---@return ErrorCode, boolean
function World:isSurviveMode() end

---是否创造转生存模式。
---@return ErrorCode, boolean
function World:isCreateRunMode() end

---是否编辑模式。
---@return ErrorCode, boolean
function World:isGameMakerMode() end

---是否玩法模式。
---@return ErrorCode, boolean
function World:isGameMakerRunMode() end

---获取当前时间（小时）。
---@return ErrorCode, number
function World:getHours() end

---设置当前时间（小时）。
---@param hour number # 要设置时间（小时）。
---@return ErrorCode
function World:setHours(hour) end

---是否视角编辑模式。
---@return ErrorCode, number
function World:getCameraEditState() end

---设置视角编辑模式。
---@param state CameraEditState # 视角编辑状态。
---@return ErrorCode
function World:setCameraEditState(state) end

---获取自定义视角配置。
---@return ErrorCode, CameraEditState
function World:getCustomCameraConfig() end

---获取区块范围，返回区块始末位置。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1355#getrangexz)
---@return ErrorCode, number, number, number, number
function World:getRangeXZ() end

---计算指定方向射线长度（遇到方块结束）。
---@param srcx number # 起始点 X 坐标
---@param srcy number # 起始点 Y 坐标
---@param srcz number # 起始点 Z 坐标
---@param dstx number # 终点方向 X 坐标
---@param dsty number # 终点方向 Y 坐标
---@param dstz number # 终点方向 Z 坐标
---@param distance number # 限制最大距离
---@return ErrorCode, number
function World:getRayLength(srcx, srcy, srcz, dstx, dsty, dstz, distance) end

---获取射线达到的第一个方块。
---@param srcx number # 起始点 X 坐标
---@param srcy number # 起始点 Y 坐标
---@param srcz number # 起始点 Z 坐标
---@param face FaceDirection # 方向
---@return ErrorCode, boolean
function World:getRayBlock(srcx, srcy, srcz, face, distance) end

---获取范围内指定类型的 Actor。
---@param objtype ObjType # Actor 类型，不限制则为 `0`。
---@param x1 number # 起点 X 坐标
---@param y1 number # 起点 Y 坐标
---@param z1 number # 起点 Z 坐标
---@param x2 number # 终点 X 坐标
---@param y2 number # 终点 Y 坐标
---@param z2 number # 终点 Z 坐标
---@return ErrorCode, number, number[]
function World:getActorsByBox(objtype, x1, y1, z1, x2, y2, z2) end

---@alias __WorldAliveConfig
---| -1 # 所有玩家
---| 0 # 死亡玩家
---| 1 # 存活玩家

---获取指定区域内的玩家数量。
---@param alive __WorldAliveConfig # 统计哪些玩家
---@return ErrorCode, number
---
------
function World:getPlayerTotal(alive) end

---获取所有玩家。
---@param alive __WorldAliveConfig # 统计哪些玩家
---@return ErrorCode, number, number[]
function World:getAllPlayers(alive) end

---随机获取一位玩家。
---@param alive __WorldAliveConfig # 包括哪些玩家
---@return ErrorCode, number
function World:randomOnePlayer(alive) end

---移除 Actor。
---@param objid number # Actor ID
---@return ErrorCode
function despawnActor(objid) end

---生成生物。
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@param actorid number # 生物类型 ID
---@param num number # 生成数量
---@return ErrorCode, number[] # 生成的生物 ID 列表
function spawnCreature(x, y, z, actorid, num) end

---移除生物。
---@param objid number # 生物 ID
---@return ErrorCode
function despawnCreature(objid) end

---生成道具。
---@param x number # 道具 X 坐标
---@param y number # 道具 Y 坐标
---@param z number # 道具 Z 坐标
---@param itemid number # 道具类型 ID
---@param num number # 生成数量
function spawnItem(x, y, z, itemid, num) end

---移除区域内的道具。
---@param x1 number # 起点 X 坐标
---@param y1 number # 起点 Y 坐标
---@param z1 number # 起点 Z 坐标
---@param x2 number # 终点 X 坐标
---@param y2 number # 终点 Y 坐标
---@param z2 number # 终点 Z 坐标
---@return ErrorCode
function despawnItemByBox(x1, y1, z1, x2, y2, z2) end

---移除道具。
---@param objid number # 道具 ID
---@return ErrorCode
function World:despawnItemByObjid(objid) end

---生成投掷物。
---@param shooter number # 投掷物归属者 ID
---@param itemid number # 投掷物类型 ID
---@param x number # 起点 X 坐标
---@param y number # 起点 Y 坐标
---@param z number # 起点 Z 坐标
---@param dstx number # 终点 X 坐标
---@param dsty number # 终点 Y 坐标
---@param dstz number # 终点 Z 坐标
---@param speed number # 速度系数
---@return ErrorCode, number # 投掷物 ID
function World:spawnProjectile(shooter, itemid, x, y, z, dstx, dsty, dstz, speed) end

---生成投掷物。
---@param shooter number # 投掷物归属者 ID
---@param itemid number # 投掷物类型 ID
---@param x number # 起点 X 坐标
---@param y number # 起点 Y 坐标
---@param z number # 起点 Z 坐标
---@param dirx number # 方向 X 坐标
---@param diry number # 方向 Y 坐标
---@param dirz number # 方向 Z 坐标
---@param speed number # 速度系数
---@return ErrorCode, number # 投掷物 ID
function World:spawnProjectileByDir(shooter, itemid, x, y, z, dirx, diry, dirz, speed) end

---计算位置之间的距离。
---@param pos1 __PositionTable # 位置 1
---@param pos2 __PositionTable # 位置 2
---@return ErrorCode, number # 距离
function World:calcDistance(pos1, pos2) end

---在指定位置播放特效。
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@param particleId number # 特效类型 ID
---@param scale number # 特效大小系数
---@return ErrorCode
function World:playParticalEffect(x, y, z, particleId, scale) end

---停止指定位置的特效。
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@param particleId number # 特效 ID
---@return ErrorCode
function World:stopEffectOnPosition(x, y, z, particleId) end

---设置指定位置特效的大小。
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@param particleId number # 特效 ID
---@param scale number # 特效大小系数
---@return ErrorCode
function World:setEffectScaleOnPosition(x, y, z, particleId, scale) end

---随机获取一个特效类型。
---@return ErrorCode, number # 特效类型 ID
function World:randomParticleEffectID() end

---在指定位置上播放音效。
---@param pos __PositionTable # 位置
---@param soundId number # 音效 ID
---@param volume number # 音量系数
---@param pitch number # 音调系数
---@param isLoop boolean # 是否循环播放
---@return ErrorCode
function World:playSoundEffectOnPos(pos, soundId, volume, pitch, isLoop) end

---停止指定位置上的指定音效。
---@param pos __PositionTable # 位置
---@param soundId number # 音效 ID
function World:stopSoundEffectOnPos(pos, soundId) end

---获取指定位置光照强度。
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@return ErrorCode, number # 光照强度
function World:getLightByPos(x, y, z) end

---设置指定位置光照强度。
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@param lv number # 光照强度
---@return ErrorCode
function World:setBlockLightEx(x, y, z, lv) end

---随机获取一个音效。
---@return ErrorCode, number # 音效 ID
function World:randomSoundID() end

---随机获取一个天气。
---@return ErrorCode, number # 天气值
function World:randomWeatherID() end

---获取客户端时间。
---@param enum EventDate 枚举值
---@return ErrorCode, number # 客户端时间中此枚举位上的值
function World:getLocalDate(enum) end

---获取完整客户端时间。
---@return ErrorCode, string # 时间
function World:getLocalDateString() end

---获取服务器时间。
---@param enum EventDate 枚举值
---@return ErrorCode, number # 服务器时间中此枚举位上的值
function World:getServerDate(enum) end

---获取完整服务器时间。
---@return ErrorCode, string # 时间
function World:getServerDateString() end

---取时间戳指定枚举位上的值。
---@param time number # 时间戳
---@param enum EventDate # 枚举值
---@return ErrorCode, number # 此枚举位上的值
function World:getDateFromTime(time, enum) end

---时间戳转为完整时间。
---@param time number # 时间戳
---@return ErrorCode, string # 时间
function World:getDateStringFromTime(time) end
