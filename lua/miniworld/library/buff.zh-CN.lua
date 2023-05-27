---迷你世界脚本API语法库，对象状态效果管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=2315)
---@meta

---状态效果管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=2315)
---@class BuffLib
Buff = {}

---给 Actor 添加 Buff。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@param bufflv number # Buff 等级
---@param customticks number # 持续时间，`-1` 表示默认，`0` 表示无限
---@return ErrorCode
function Buff:addBuff(objid, buffid, bufflv, customticks) end

---删除 Actor 上的 Buff。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode
function Buff:removeBuff(objid, buffid) end

---清空 Actor 上的 Buff。
---@param objid number # Actor ID
---@return ErrorCode
function Buff:clearAllBuff(objid) end

---清空 Actor 上的负面 Buff。
---@param objid number # Actor ID
---@return ErrorCode
function Buff:clearAllBadBuff(objid) end

---判断 Actor 是否有指定 Buff。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@param bufflv number # Buff 等级
---@return ErrorCode # `0` 表示有，`1001` 表示没有
function Buff:hasBuff(objid, buffid, bufflv) end

---获取 Actor Buff 列表。
---@param objid number # Actor ID
---@return ErrorCode, number, number[] # Buff 数量； Buff ID 列表
function Buff:getBuffList(objid) end

---获取 Actor 指定 Buff 数量。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode, number # Buff 数量
function Buff:getBuffNumByBuffid(objid, buffid) end

---获取 Actor 指定 Buff 的所在 Actor Buff 列表的位置（从 1 开始）。
---@param objid number # Actor ID
---@param buffid number # Buff ID
function Buff:getBuffIndex(objid, buffid) end

---获取 Actor 指定 Buff 剩余时间。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode, number # 剩余时间
function Buff:getBuffLeftTime(objid, buffid) end

---获取 Actor Buff 名称。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode, string # Buff 名称
function Buff:getBuffName(objid, buffid) end

---获取 Buff 名称。
---@param buffid number # Actor ID
---@return ErrorCode, string # Buff 定义名称
function Buff:GetBuffDefName(buffid) end

---获取 Buff 描述。
---@param buffid number # Actor ID
---@return ErrorCode, string # Buff 定义描述
function Buff:GetBuffDefDesc(buffid) end
