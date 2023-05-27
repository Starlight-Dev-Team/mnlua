---迷你世界脚本API语法库，生物管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1360)
---@meta

---生物管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1360)
---@class CreatureLib : ActorLib
Creature = {}

---获取生物属性。
---@param objid number # 生物 ID
---@param attrtype CreatureAttr # 生物属性
---@return ErrorCode, number
function Creature:getAttr(objid, attrtype) end

---设置生物属性。
---@param objid number # 生物 ID
---@param attrtype CreatureAttr # 生物属性
---@param val number # 属性值
---@return ErrorCode
function Creature:setAttr(objid, attrtype, val) end

---判断生物是否成年。
---@param objid number # 生物 ID
---@return ErrorCode # `0` 表示才能，`1001` 表示未成年
function Creature:isAdult(objid) end

---设置生物是否依赖氧气。
---@param objid number # 生物 ID
---@param v boolean # 是否依赖氧气
---@return ErrorCode
function Creature:setOxygenNeed(objid, v) end

---获取驯养主 ID。
---@param objid number # 生物 ID
---@return ErrorCode, number # `0` 代表未驯服
function Creature:getTamedOwnerID(objid) end

---设置生物是否处于惊慌状态。
---@param objid number # 生物 ID
---@param v boolean # 是否处于惊慌状态
---@return ErrorCode
function Creature:setPanic(objid, v) end

---设置 AI 功能是否启用。
---@param objid number # 生物 ID
---@param v boolean # 是否启用
---@return ErrorCode
function Creature:setAIActive(objid, v) end

---获取生物 Actor ID。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getActorID(objid) end

---获取生物 Actor 名称。
---@param objid number # 生物 ID
---@return ErrorCode, string
function Creature:getActorName(objid) end

---给生物添加附魔。
---@param objid number # 生物 ID
---@param attrtype ModAttribType # 附魔类型
---@param value number # 附魔等级
---@return ErrorCode
function Creature:addModAttrib(objid, attrtype, value) end

---获取生物附魔等级。
---@param objid number # 生物 ID
---@param attrtype ModAttribType # 附魔类型
---@return ErrorCode, number
function Creature:getModAttrib(objid, attrtype) end

---获取生物队伍。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getTeam(objid) end

---设置生物队伍。
---@param objid number # 生物 ID
---@param teamid number # 队伍 ID
---@return ErrorCode
function Creature:setTeam(objid, teamid) end

---获取生物当前饱食度。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getFood(objid) end

---设置生物当前饱食度。
---@param objid number # 生物 ID
---@param foodLevel number # 生物饱食度
---@return ErrorCode
function Creature:getFood(objid, foodLevel) end

---获取生物生命值恢复速度。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getHpRecover(objid) end

---设置生物生命值恢复速度。
---@param objid number # 生物 ID
---@param val number # 生命值恢复速度
---@return ErrorCode
function Creature:setHpRecover(objid, val) end

---获取生物氧气值上限。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getMaxOxygen(objid) end

---获取生物移动速度。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getWalkSpeed(objid) end

---设置生物移动速度。
---@param objid number # 生物 ID
---@param val number # 移动速度
---@return ErrorCode
function Creature:setWalkSpeed(objid, val) end

---获取生物游泳速度。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getSwinSpeed(objid) end

---设置生物游泳速度。
---@param objid number # 生物 ID
---@param val number # 游泳速度
---@return ErrorCode
function Creature:setSwinSpeed(objid, val) end

---获取生物跳跃能力。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getJumpPower(objid) end

---设置生物跳跃能力。
---@param objid number # 生物 ID
---@param val number # 跳跃能力
---@return ErrorCode
function Creature:setJumpPower(objid, val) end

---获取生物重量。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getMass(objid) end

---获取生物闪避率。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getDodge(objid) end

---设置生物闪避率。
---@param objid number # 生物 ID
---@param val number # 闪避率
---@return ErrorCode
function Creature:setWalkSpeed(objid, val) end

---获取生物近战攻击系数。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getPunchAttack(objid) end

---设置生物近战攻击系数。
---@param objid number # 生物 ID
---@param val number # 近战攻击系数
---@return ErrorCode
function Creature:setPunchAttack(objid, val) end

---获取生物远程攻击系数。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getRangeAttack(objid) end

---设置生物远程攻击系数。
---@param objid number # 生物 ID
---@param val number # 远程攻击系数
---@return ErrorCode
function Creature:setRangeAttack(objid, val) end

---获取生物近战防御系数。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getPunchDefense(objid) end

---设置生物近战防御系数。
---@param objid number # 生物 ID
---@param val number # 近战防御系数
---@return ErrorCode
function Creature:setPunchDefense(objid, val) end

---获取生物远程防御系数。
---@param objid number # 生物 ID
---@return ErrorCode, number
function Creature:getRangeDefense(objid) end

---设置生物远程防御系数。
---@param objid number # 生物 ID
---@param val number # 远程防御系数
---@return ErrorCode
function Creature:setWalkSpeed(objid, val) end

---设置生物生命值上限。
---@param objid number # 生物 ID
---@param val number # 生命值上限
---@return ErrorCode
function Creature:setMaxHP(objid, val) end

---设置生物当前生命值。
---@param objid number # 生物 ID
---@param val number # 当前生命值
---@return ErrorCode
function Creature:setHP(objid, val) end

---设置生物当前氧气值。
---@param objid number # 生物 ID
---@param val number # 当前氧气值
---@return ErrorCode
function Creature:setOxygen(objid, val) end

---替换生物。
---@param objid number # 被替换下来的生物 ID
---@param actorid number # 替换上去的生物 ID
---@param hp number # 生命值
---@return ErrorCode
function Creature:replaceActor(objid, actorid, hp) end

---获取生物类型名称。
---@param monsterid number # 生物类型 ID
---@return ErrorCode, string
function Creature:GetMonsterDefName(monsterid) end

---获取生物类型描述。
---@param monsterid number # 生物类型 ID
---@return ErrorCode, string
function Creature:GetMonsterDefDesc(monsterid) end
