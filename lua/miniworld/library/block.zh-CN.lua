---迷你世界脚本API语法库，方块管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1357)
---@meta

---方块管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1357)
---@class BlockLib
Block = {}

---判断是否固体方块。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@return ErrorCode
function Block:isSolidBlock(x, y, z) end

---判断是否液体方块。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@return ErrorCode
function Block:isLiquidBlock(x, y, z) end

---判断是否气体方块。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@return ErrorCode
function Block:isAirBlock(x, y, z) end

---获取方块 ID。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@return ErrorCode, number
function Block:getBlockID(x, y, z) end

---设置方块 blockalldata。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param blockid number # 方块 ID
---@param data number
---@return ErrorCode
function Block:setBlockAll(x, y, z, blockid, data) end

---获取方块 blockdata。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@return ErrorCode, number
function Block:getBlockData(x, y, z) end

---获取方块 blockdata。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param dropitem boolean # 是否掉落道具
---@return ErrorCode, number
function Block:destroyBlock(x, y, z, dropitem) end

---放置方块。
---@param blockid number # 方块 ID
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param face FaceDirection # 方块朝向
---@param color number # 方块颜色
---@return ErrorCode
function Block:placeBlock(blockid, x, y, z, face, color) end

---替换方块。
---@param blockid number # 方块 ID
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param face FaceDirection # 方块朝向
---@param color number # 方块颜色
---@return ErrorCode
function Block:replaceBlock(blockid, x, y, z, face, color) end

---设置 blockalldata ，通知周围方块
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param blockid number # 方块 ID
---@return ErrorCode
function Block:setBlockAllForUpdate(x, y, z, blockid) end

---设置 blockalldata，通知当前位置方块
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param blockid number # 方块 ID
---@return ErrorCode
function Block:setBlockAllForNotify(x, y, z, blockid) end

---设置方块属性。
---@param blockid number # 方块 ID。
---@param attrtype BlockAttr # 方块属性
---@param switch boolean # 属性值。
---@return ErrorCode
function Block:setBlockSettingAttState(blockid, attrtype, switch) end

---获取方块属性。
---@param blockid number # 方块 ID。
---@param attrtype BlockAttr # 方块属性
---@return ErrorCode, boolean
function Block:getBlockSettingAttState(blockid, attrtype) end

---获取功能方块的开关状态。
---@param pos __PositionTable # 方块位置
---@return ErrorCode, boolean
function Block:getBlockSwitchStatus(pos) end

---设置功能方块的开关状态。
---@param pos __PositionTable # 方块位置
---@param isactive boolean # 开关状态
---@return ErrorCode
function Block:setBlockSwitchStatus(pos, isactive) end

---通过方向获取 blockdata。
---@param blockid number # 方块 ID
---@param dir FaceDirection # 方向
---@return ErrorCode, number
function Block:getBlockDataByDir(blockid, dir) end

---获取方块通电状态。
---@param pos __PositionTable # 方块位置
---@return ErrorCode, boolean
function Block:getBlockPowerStatus(pos) end

---随机获取一个方块 ID。
---@return ErrorCode, number # 随机结果
function Block:randomBlockID() end

---通过 ID 获取方块名称。
---@param blockid number # 方块 ID
---@return ErrorCode, string # 方块名称
function Block:GetBlockDefName(blockid) end

---通过 ID 获取方块描述。
---@param blockid number # 方块 ID
---@return ErrorCode, string # 方块描述
function Block:GetBlockDefDesc(blockid) end

---通过 ID 获取方块外观。
---@param blockid number
---@return ErrorCode, number # 外观 ID
function Block:GetBlockFacade(blockid) end

---播放微缩模型动作。
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param animid number 动作 ID
---@param playmode AnimMode # 播放模式
---@return ErrorCode
function Block:PlayAct(x, y, z, animid, playmode) end

---comment
---@param x number # 方块 X 坐标
---@param y number # 方块 Y 坐标
---@param z number # 方块 Z 坐标
---@param blueprint string # 蓝图资源 ID
---@param angle number # 旋转角度
---@param mirror boolean # 是否镜像翻转
---@param placeMode boolean # 是否放置
---@return ErrorCode
function Block:ReplaceBluePrint(x, y, z, blueprint, angle, mirror, placeMode) end
