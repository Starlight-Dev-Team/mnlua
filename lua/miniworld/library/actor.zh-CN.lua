---迷你世界脚本API语法库，实体管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1358)
---@meta

---实体管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1358)
---@class ActorLib
Actor = {}

---判断 Actor 是否为玩家。
---@param objid number # Actor ID
---@return ErrorCode # `0` 表示是，`1001` 表示不是
function Actor:isPlayer(objid) end

---判断 Actor 是否为怪物。
---@param objid number # Actor ID
---@return ErrorCode # `0` 表示是，`1001` 表示不是
function Actor:isMob(objid) end

---获取 Actor 类型。
---@param objid number # Actor ID
---@return ErrorCode, ObjType # Actor 类型
function Actor:getObjType(objid) end

---判断 Actor 是否在空中。
---@param objid number # Actor ID
---@return ErrorCode, boolean # 是否在空中
function Actor:isInAir(objid) end

---获取 Actor 位置。
---@param objid number # Actor ID
---@return ErrorCode, number, number, number # Actor 位置
function Actor:getPosition(objid) end

---设置 Actor 位置。
---@param objid number # Actor ID
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@return ErrorCode
function Actor:setPosition(objid, x, y, z) end

---使 Actor 跳跃。
---@param objid number # Actor ID
---@return ErrorCode
function Actor:jump(objid) end

---使 Actor 击败自己。
---@param objid number # Actor ID
---@return ErrorCode
function Actor:killSelf(objid) end

---获取 Actor 当前朝向。
---@param objid number # Actor ID
---@return ErrorCode, FaceDirection # 当前朝向
function Actor:getCurPlaceDir(objid) end

---自动寻路至指定 Actor。
---@param self_objid number # Actor ID
---@param target_objid number # 目标 Actor ID
---@param speed number # 速度系数
---@return ErrorCode
function Actor:tryMoveToActor(self_objid, target_objid, speed) end

---自动寻路至指定位置。
---@param objid number # Actor ID
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@param speed number # 速度系数
---@return ErrorCode
function Actor:tryMoveToPos(objid, x, y, z, speed) end

---给 Actor 增加生命值。
---@param objid number # Actor ID
---@param hp number # 增加的生命值
---@return ErrorCode
function Actor:addHP(objid, hp) end

---获取 Actor 当前生命值。
---@param objid number # Actor ID
---@return ErrorCode, number # 当前生命值
function Actor:getHP(objid) end

---获取 Actor 生命值上限。
---@param objid number # Actor ID
---@return ErrorCode, number # 生命值上限
function Actor:getMaxHP(objid) end

---给 Actor 增加氧气值。
---@param objid number # Actor ID
---@param oxygen number # 氧气值
---@return ErrorCode
function Actor:addOxygen(objid, oxygen) end

---获取 Actor 当前氧气值。
---@param objid number # Actor ID
---@return ErrorCode, number # 当前氧气值
function Actor:getOxygen(objid) end

---给装备添加附魔。
---@param objid number # 装备穿戴者 Actor ID
---@param slot EquipSlotType # 装备栏
---@param enchantId number # 附魔 ID
---@param enchantLevel number # 附魔等级
---@return ErrorCode
function Actor:addEnchant(objid, slot, enchantId, enchantLevel) end

---给装备删除附魔。
---@param objid number # 装备穿戴者 Actor ID
---@param slot EquipSlotType # 装备栏
---@param enchantId number # 附魔 ID
---@return ErrorCode
function Actor:removeEnchant(objid, slot, enchantId)end

---寻找附近指定范围内指定 ID 的方块。
---@param objid number # 寻找者 Actor ID
---@param blockid number # 方块 ID
---@param blockRange number # 范围大小
---@return ErrorCode
function Actor:findNearestBlock(objid, blockid, blockRange) end

---设置 Actor 在水平面内的旋转角度。
---@param objid number # Actor ID
---@param yaw number # 旋转角度
---@return ErrorCode
function Actor:setFaceYaw(objid, yaw) end

---获取 Actor 在水平面内的旋转角度。
---@param objid number # Actor ID
---@return ErrorCode, number # 在水平面内的旋转角度
function Actor:getFaceYaw(objid) end

---在水平面内的旋转 Actor。
---@param objid number # Actor ID
---@param offset number # 偏移角度
---@return ErrorCode
function Actor:turnFaceYaw(objid, offset) end

---设置 Actor 仰角。
---@param objid number # Actor ID
---@param pitch number # 仰角
---@return ErrorCode
function Actor:setFacePitch(objid, pitch) end

---获取 Actor 仰角。
---@param objid number # Actor ID
---@return ErrorCode, number # 仰角
function Actor:getFacePitch(objid) end

---旋转 Actor 仰角。
---@param objid number # Actor ID
---@param offset number # 偏移角度
---@return ErrorCode
function Actor:turnFacePitch(objid, offset) end

---播放 Actor 身体特效。
---@param objid number # Actor ID
---@param type ActorBodyEffect # 身体特效
---@return ErrorCode
function Actor:playBodyEffect(objid, type) end

---停止 Actor 身体特效。
---@param objid number # Actor ID
---@param type ActorBodyEffect # 身体特效
---@return ErrorCode
function Actor:stopBodyEffect(objid, type) end

---播放指定文件中的 Actor 身体特效。
---@param objid number # Actor ID
---@param filename string # 文件名
---@param sync boolean # 是否同步执行
---@return ErrorCode
function Actor:playBodyEffectByFile(objid, filename, sync) end

---停止指定文件中的 Actor 身体特效。
---@param objid number # Actor ID
---@param filename string # 文件名
---@param sync boolean # 是否同步执行
---@return ErrorCode
function Actor:stopBodyEffectByFile(objid, filename, sync) end

---播放声音。
---@param objid number # Actor ID
---@param name string # 声音名称
---@param volume number # 音量系数
---@param pitch number # 音高系数
---@param flag number
---@return ErrorCode
function Actor:playSound(objid, name, volume, pitch, flag) end

---播放特殊声音。
---@param objid number # Actor ID
---@param name string # 声音名称
---@param type GSoundType # 声音类型
---@return ErrorCode
function Actor:playSoundSpecial(objid, name, type) end

---清除 Actor。
---@param actorid number # Actor ID
---@param bkill boolean # 是否播放死亡特效
---@return ErrorCode
function Actor:clearActorWithId(actorid, bkill) end

---设置伤害类型。
---@param objid number # Actor ID
---@param attacktype number # 伤害类型
---@return ErrorCode
function Actor:setAttackType(objid, attacktype) end

---设置伤害免疫。
---@param objid number # Actor ID
---@param immunetype number # 免疫类型
---@param isadd boolean # 是否启用免疫
---@return ErrorCode
function Actor:setImmuneType(objid, immunetype, isadd) end

---乘骑或脱离载具。
---@param objid number # Actor ID
---@param mountobjid number # 目标 Actor ID
---@param posindex number # 乘骑位置
---@return ErrorCode
function Actor:mountActor(objid, mountobjid, posindex) end

---设置 Actor 行为属性状态。
---@param objid number # Actor ID
---@param actionattr CreatureAttr # 行为属性
---@param switch boolean # 是否开启
---@return ErrorCode
function Actor:setActionAttrState(objid, actionattr, switch) end

---获取 Actor 行为属性状态。
---@param objid number # Actor ID
---@param actionattr CreatureAttr # 行为属性
---@return ErrorCode, boolean # 是否开启
function Actor:getActionAttrState(objid, actionattr) end

---自动寻路到位置。
---@param objid number # Actor ID
---@param x number # X 坐标
---@param y number # Y 坐标
---@param z number # Z 坐标
---@param cancontrol boolean # 玩家是否可以控制
---@param showtip boolean # 是否显示路线提示
---@return ErrorCode  
function Actor:tryNavigationToPos(objid, x, y, z, cancontrol, showtip) end

---随机获取一个 Actor 类型。
---@return ErrorCode, number # Actor 类型 ID
function Actor:randomActorID() end

---获取当前乘骑的 Actor。
---@param objid number # 乘骑者 Actor ID
---@return ErrorCode, number # 被乘骑者 Actor ID
function Actor:getRidingActorObjId(objid) end

---在指定 Actor 上播放特效。
---@param objid number # Actor ID
---@param particleId number # 特效 ID
---@param scale number # 特效大小系数
---@return ErrorCode
function Actor:playBodyEffectById(objid, particleId, scale) end

---停止 Actor 上的指定特效。
---@param objid number # Actor ID
---@param particleId number # 特效 ID
---@return ErrorCode
function Actor:stopBodyEffectById(objid, particleId) end

---设置 Actor 上的特效大小。
---@param objid number # Actor ID
---@param particleId number # 特效 ID
---@param scale number # 特效大小系数
---@return ErrorCode
function Actor:playBodyEffectById(objid, particleId, scale) end

---在 Actor 上播放音效。
---@param objid number # Actor ID
---@param soundId number # 音效 ID
---@param volume number # 音量系数
---@param pitch number # 音调系数
---@param isLoop boolean # 是否循环播放
---@return ErrorCode
function Actor:playSoundEffectById(objid, soundId, volume, pitch, isLoop) end

---停止指定位置上的指定音效。
---@param objid number # Actor ID
---@param soundId number # 音效 ID
---@return ErrorCode
function Actor:stopSoundEffectOnPos(objid, soundId) end

---给 Actor 附加速度。
---@param objid number # Actor ID
---@param east number # 东方向的分速度
---@param up number # 上方向的分速度
---@param north number # 北方向的分速度
---@return ErrorCode
function Actor:appendSpeed(objid, east, up, north) end

---获取 Actor 朝向。
---@param objid number # Actor ID
---@return ErrorCode, number, number, number # 相对于玩家中点的偏移量
function Actor:getFaceDirection(objid) end

---通过相对坐标方向计算绝对方向。
---@param objid number # 作为坐标系的原点的 Actor ID
---@param vx number # X 轴相对方向
---@param vy number # Y 轴相对方向
---@param vz number # Z 轴相对方向
---@return ErrorCode, __PositionTable # 绝对方向
function Actor:calcDirectionByDirection(objid, vx, vy, vz) end

---通过局部球坐标方向计算绝对方向。
---@param objid number # 作为坐标系原点的 Actor ID
---@param yaw number # 水平偏移
---@param pitch number # 垂直偏移
---@return ErrorCode, __PositionTable # 绝对方向
function Actor:calcDirectionByAngle(objid, yaw, pitch) end

---通过局部坐标方向计算绝对正方向，忽略仰角。
---@param objid number # 作为坐标系的原点的 Actor ID
---@param vx number # X 轴相对方向
---@param vy number # Y 轴相对方向
---@param vz number # Z 轴相对方向
---@return ErrorCode, __PositionTable # 绝对正方向
function Actor:calcDirectionByYawDirection(objid, vx, vy, vz) end

---通过局部球坐标方向计算绝对正方向，忽略仰角。
---@param objid number # 作为坐标系原点的 Actor ID
---@param yaw number # 水平偏移
---@param pitch number # 垂直偏移
---@return ErrorCode, __PositionTable # 绝对正方向
function Actor:calcDirectionByYawAngle(objid, yaw, pitch) end

---获取 Actor 眼睛位置。
---@param objid number # Actor ID
---@return ErrorCode, number, number, number # 眼睛位置
function Actor:getEyeHeight(objid) end

---获取 Actor 身体大小。
---@param objid number # Actor ID
---@return ErrorCode, number, number # 身体宽高
function Actor:getBodySize(objid) end

---播放 Actor 动作。
---@param objid number # Actor ID
---@param actid number # 动作 ID
---@return ErrorCode
function Actor:playAct(objid, actid) end

---是否显示 Actor 昵称。
---@param objid number # Actor ID
---@param bshow boolean # 是否显示
---@return ErrorCode
function Actor:shownickname(objid, bshow) end

---设置 Actor 昵称
---@param objid number # Actor ID
---@param name string # 昵称
---@return ErrorCode
function Actor:setnickname(objid, name) end

---获取 Actor 外观
---@param objid number # Actor ID
---@return ErrorCode, string # 外观
function Actor:getActorFacade(objid) end

---设置 Actor 外观。
---@param objid number # Actor ID
---@param name string # 外观
---@return ErrorCode
function Actor:changeCustomModel(objid, name) end

---恢复 Actor 外观。
---@param objid number # Actor ID
---@return ErrorCode
function Actor:recoverinitialModel(objid) end

---给 Actor 添加 Buff。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@param bufflv number # Buff 等级
---@param customticks number # 持续时间，`-1` 表示默认，`0` 表示无限
---@return ErrorCode
function Actor:addBuff(objid, buffid, bufflv, customticks) end

---删除 Actor 上的 Buff。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode
function Actor:removeBuff(objid, buffid) end

---清空 Actor 上的 Buff。
---@param objid number # Actor ID
---@return ErrorCode
function Actor:clearAllBuff(objid) end

---清空 Actor 上的负面 Buff。
---@param objid number # Actor ID
---@return ErrorCode
function Actor:clearAllBadBuff(objid) end

---判断 Actor 是否有指定 Buff。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@param bufflv number # Buff 等级
---@return ErrorCode # `0` 表示有，`1001` 表示没有
function Actor:hasBuff(objid, buffid, bufflv) end

---获取 Actor Buff 列表。
---@param objid number # Actor ID
---@return ErrorCode, number, number[] # Buff 数量； Buff ID 列表
function Actor:getBuffList(objid) end

---获取 Actor 指定 Buff 数量。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode, number # Buff 数量
function Actor:getBuffNumByBuffid(objid, buffid) end

---获取 Actor 指定 Buff 的所在 Actor Buff 列表的位置（从 1 开始）。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode
function Actor:getBuffIndex(objid, buffid) end

---获取 Actor 指定 Buff 剩余时间。
---@param objid number # Actor ID
---@param buffid number # Buff ID
---@return ErrorCode, number # 剩余时间
function Actor:getBuffLeftTime(objid, buffid) end

---随机获取一个外观 ID。
---@return ErrorCode, number # 随机结果
function Actor:randomFacadeID() end

---使玩家对另一个 Actor 造成伤害。
---@param objidA number # 攻击者 Actor ID
---@param objidB number # 被攻击者 Actor ID
---@param hp number # 伤害值
---@param attackType HurtType # 伤害类型
---@return ErrorCode
function Actor:playerHurt(objidA, objidB, hp, attackType) end

---使玩家对指定区域中所有 Actor 造成伤害
---@param objid number # 攻击者 Actor ID
---@param areaid number # 区域 ID
---@param hp number # 伤害值
---@param attackType HurtType # 伤害类型
---@return ErrorCode
function Actor:playerHurtArea(objid, areaid, hp, attackType) end

---使 Actor 对另一个 Actor 造成伤害。
---@param objidA number # 攻击者 Actor ID
---@param objidB number # 被攻击者 Actor ID
---@param hp number # 伤害值
---@param attackType HurtType # 伤害类型
---@return ErrorCode
function Actor:actorHurt(objidA, objidB, hp, attackType) end

---使 Actor 对指定区域中所有 Actor 造成伤害
---@param objid number # 攻击者 Actor ID
---@param areaid number # 区域 ID
---@param hp number # 伤害值
---@param attackType HurtType # 伤害类型
---@return ErrorCode
function Actor:actorHurtArea(objid, areaid, hp, attackType) end

---获取 Actor 位置。
---@param objid number # Actor ID
---@return ErrorCode, __PositionTable
function Actor:getPositionV2(objid) end

---设置 Actor 朝向。
---@param objid number # Actor ID
---@param x number # X 坐标上的方向
---@param y number # Y 坐标上的方向
---@param z number # Z 坐标上的方向
---@return ErrorCode
function Actor:setFaceDirection(objid, x, y, z) end
