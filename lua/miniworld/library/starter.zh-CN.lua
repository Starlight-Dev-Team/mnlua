---迷你世界脚本API语法库，通用类型与常量。
---@meta

---API 通用错误码。
---@enum ErrorCode
ErrorCode = {
  OK = 0,
  FAILED = 1001,
}

---视角编辑状态。
---@enum CameraEditState
CameraEditState = {
  ---未在设置视角。
  CAMERA_EDIT_STATE_NULL = 0,
  ---正在编辑视角。
  CAMERA_EDIT_STATE_EDIT = 1,
  ---正在测试视角。
  CAMERA_EDIT_STATE_TEST = 2,
}

---装备部位。
---@enum EquipSlotType
EQUIP_SLOT_TYPE = {
  ---头。
  EQUIP_HEAD = 0,
  ---身体。
  EQUIP_BREAST = 1,
  ---腿。
  EQUIP_LEGGING = 2,
  ---脚。
  EQUIP_SHOE = 3,
  ---披风
  EQUIP_PIFENG = 4,
  ---武器。
  EQUIP_WEAPON = 5,
  MAX_EQUIP_SLOTS =	6,
}

---朝向。
---@enum FaceDirection
FACE_DIRECTION = {
  ---未指定。
  DIR_NOT_INIT = -1,
  ---X反方向（西）。
  DIR_NEG_X = 0,
  ---X正方向（东）。
  DIR_POS_X = 1,
  ---Z反方向（南）。
  DIR_NEG_Z = 2,
  ---Z正方向（北）。
  DIR_POS_Z = 3,
  ---Y反方向（下）。
  DIR_NEG_Y = 4,
  ---Y正方向（上）。
  DIR_POS_Y = 5,
}

---@enum CreatureAttr
CREATUREATTR = {
  ---最大生命值。
  MAX_HP = 1,
  ---当前生命值。
  CUR_HP = 2,
  ---生命恢复。
  HP_RECOVER = 3,
  ---最大饥饿值。
  MAX_HUNGER = 5,
  ---当前饥饿值。
  CUR_HUNGER = 6,
  ---最大氧气值。
  MAX_OXYGEN = 7,
  ---当前氧气值。
  CUR_OXYGEN = 8,
  ---氧气恢复速度。
  RECOVER_OXYGEN = 9,
  ---移动速度。
  WALK_SPEED = 10,
  ---奔跑速度。
  RUN_SPEED = 11,
  ---游泳速度。
  SWIN_SPEED = 13,
  ---跳跃力。
  JUMP_POWER = 14,
  ---重量。
  WEIGHT = 15,
  ---闪避率。
  DODGE = 16,
  ---近战攻击。
  ATK_MELEE = 17,
  ---远程攻击。
  ATK_REMOTE = 18,
  ---近战防御。
  DEF_MELEE = 19,
  ---远程防御。
  DEF_REMOTE = 20,
  ---模型大小。
  DIMENSION = 21,
}

---玩家属性。
---@enum PlayerAttr
PLAYERATTR = {
  ---最大生命值。
  MAX_HP = 1,
  ---当前生命值。
  CUR_HP = 2,
  ---生命恢复。
  HP_RECOVER = 3,
  ---生命数。
  LIFE_NUM = 4,
  ---最大饥饿值。
  MAX_HUNGER = 5,
  ---当前饥饿值。
  CUR_HUNGER = 6,
  ---最大氧气值。
  MAX_OXYGEN = 7,
  ---当前氧气值。
  CUR_OXYGEN = 8,
  ---氧气恢复速度。
  RECOVER_OXYGEN = 9,
  ---移动速度。
  WALK_SPEED = 10,
  ---奔跑速度。
  RUN_SPEED = 11,
  ---潜行速度。
  SNEAK_SPEED = 12,
  ---游泳速度。
  SWIN_SPEED = 13,
  ---跳跃力。
  JUMP_POWER = 14,
  ---闪避率。
  DODGE = 16,
  ---近战攻击。
  ATK_MELEE = 17,
  ---远程攻击。
  ATK_REMOTE = 18,
  ---近战防御。
  DEF_MELEE = 19,
  ---远程防御。
  DEF_REMOTE = 20,
  ---大小。
  DIMENSION = 21,
  ---分数。
  SCORE = 22,
  ---星星等级。
  LEVEL = 23,
  ---当前体力值。
  CUR_STRENGTH = 28,
  ---当前最大体力值。
  MAX_STRENGTH = 29,
  ---当前体力值恢复速度。
  STRENGTH_RECOVER = 30,
  ---当前经验。
  CUR_LEVELEXP = 26,
  ---当前等级。
  CUR_LEVEL = 27,
  ---可移动。
  ENABLE_MOVE = 1,
  ---可摆放方块。
  ENABLE_PLACEBLOCK = 2,
  ---可操作方块。
  ENABLE_OPERATEBLOCK = 4,
  ---可破坏方块。
  ENABLE_DESTROYBLOCK = 8,
  ---可使用道具。
  ENABLE_USEITEM = 16,
  ---可攻击。
  ENABLE_ATTACK = 32,
  ---可被攻击。
  ENABLE_BEATTACKED = 64,
  ---可被杀死。
  ENABLE_BEKILLED = 128,
  ---可拾取道具。
  ENABLE_PICKUP = 256,
  ---死亡掉落。
  ENABLE_DEATHDROPITEM = 512,
  ---载具自动前行。
  ENABLE_VEHICLEAUTOFORWARD = 1024,
  ---可丢弃道具。
  ENABLE_DISCARDITEM = 2048,
  ---道具不可丢弃。
  ITEM_DISABLE_THROW = 1,
  ---道具不可掉落。
  ITEM_DISABLE_DROP = 2,
}

---伤害类型。
---@enum HurtType
HURTTYPE = {
  ---近战伤害。
  MELEE = 0,
  ---远程伤害。
  REMOTE = 1,
  ---爆炸伤害。
  BOMB = 2,
  ---物理伤害。
  PHYSICS = 3,
  ---燃烧伤害。
  BURNING = 3,
  ---毒素伤害。
  TOXIN = 4,
  ---混乱伤害。
  WITHER = 5,
  ---元素伤害。
  MAGIC = 6,
  ---日晒。
  SUN = 6,
  ---跌落伤害。
  FALL = 7,
  ---被砸中伤害。
  ANVIL = 8,
  ---仙人掌伤害。
  CACTUS = 9,
  ---窒息伤害。
  ASPHYXIA = 10,
  ---溺水伤害。
  DROWN = 11,
  ---水下生物在空气中窒息伤害。
  SUFFOCATE = 12,
  ---反伤。
  ANTIINJURY = 13,
  ---被激光伤害。
  LASER = 14,
}

---特殊声音。
---@enum GSoundType
GSOUND_TYPE = {
  ---挖掘。
  GSOUND_DIG = 0,
  ---破坏。
  GSOUND_DESTROY = 1,
  ---放置。
  GSOUND_PLACE = 2,
  ---掉落。
  GSOUND_FALLGROUND = 3,
  ---行走。
  GSOUND_WALK = 4,
}

---Actor 身体特效。
---@enum ActorBodyEffect
ACTORBODY_EFFECT = {
  BODYFX_HURT = 0,
  BODYFX_FIRE = 1,
  BODYFX_PORTAL = 2,
  BODYFX_ACCUMFIRE = 3,
  BODYFX_DRAGONFIRE = 4,
  BODYFX_DRAGONSUMMON = 5,
  BODYFX_TAME_SUCCEED = 6,
  BODYFX_TAME_FAILED = 7,
  BODYFX_TAME_FOOD = 8,
  BODYFX_TAME_NOFOOD = 9,
  BODYFX_AI_NEEDREEDS = 10,
  BODYFX_FEAR = 11,
  BODYFX_ROLECOLLECT = 12,
  BODYFX_ROLEJUMP = 13,
  BODYFX_DEADPROTECT = 14,
  BODYFX_DRAGONDIE0 = 15,
  BODYFX_DRAGONDIE1 = 16,
  BODYFX_DRAGONDIE2 = 17,
  BODYFX_HORSE_FLY = 18,
  BODYFX_DISAPPEAR = 19,
  BODYFX_HORSE_BENTENG = 20,
  BODYFX_DANCE = 21,
  TOOLFX_JETPACK2 = 22,
  BODYFX_INTERACTION = 23,
  HUDFX_HEADSHOT = 24,
  HUDFX_NORMALSHOT = 25,
  BODYFX_MILKING = 26,
  BODYFX_AI_ANGRY = 27,
  BODYFX_AI_SLEEP = 28,
  BODYFX_TRANSPORT = 29,
  BODYFX_FORBIDDEN = 30,
  ---潜行。
  BODYFX_CONCEAL = 31,
  ---野人猎手武器上的火。
  BODYFX_WEAPON_FIRE = 32,
  ---眩晕。
  BODYFX_DIZZY = 33,
  BODYFX_MAKETROUBLE = 34,
  ---过山车移动。
  BODYFX_TRAINMOVE = 35,
  ---饥饿。
  BODYFX_AI_HUNGRY = 36,
  ---蓄力踢球。
  BODYFX_BALL_CHARGE = 37,
  ---踢球瞬间的爆发。
  BODYFX_BALL_SHOOT_RELEASE = 38,
  ---附魔速降。
  BODYFX_ENCH_FALL = 39,
}

---Actor 类型。
---@enum ObjType
OBJ_TYPE = {
  ---玩家。
  OBJTYPE_PLAYER = 1,
  ---生物（怪物、动物、 NPC 、 BOSS 等）。
  OBJTYPE_CREATURE = 2,
  ---掉落物。
  OBJTYPE_DROPITEM = 3,
  ---投掷物
  OBJTYPE_MISSILE = 4,
}

---@enum BlockAttr
BLOCKATTR = {
  ---爆炸抗性。
  EXPLODE_RESISTANCE = 1,
  ---硬度。
  HARDNESS = 2,
  ---滑行惯性。
  GLISSADE = 3,
  ---燃烧速度。
  BURNING_SPEED = 4,
  ---燃烧几率。
  BURNING_PROBABILITY = 5,
  ---亮度。
  LIGHTNESS = 6,
  ---可破坏。
  ENABLE_DESTROYED = 1,
  ---可操作。
  ENABLE_BEOPERATED = 2,
  ---可被推动。
  ENABLE_BEPUSHED = 4,
  ---可掉落道具。
  ENABLE_DROPITEM = 8,
  ---被推动掉落。
  BEPUSHED_DROPITEM = 16,
}

---视角。
---@enum ViewportType
VIEWPORTTYPE = {
  ---主视角。
  MAINVIEW = 0,
  ---背视角。
  BACKVIEW = 1,
  ---正视角。
  FRONTVIEW = 2,
  ---背视角2。
  BACK2VIEW = 3,
  ---俯视角。
  TOPVIEW = 4,
  ---自定义视角。
  CUSTOMVIEW = 5,
}

---@enum AnimMode
ANIMMODE = {
  ---循环播放。
  ANIM_MODE_LOOP = 0,
  ---播放一次，回到初始状态。
  ANIM_MODE_ONCE = 1,
  ---播放一次，停在末尾状态。
  ANIM_MODE_ONCE_STOP = 2,
  ---默认播放。
  ANIM_MODE_DEFAULT = 3,
}

---移动方式。
---@enum MoveType
MOVETYPE = {
  ---飞行。
  FLY = 1,
  ---默认。
  IDLE = 2,
}

---QQ 音乐操作。
---@enum QqMusicOp
QQMUSICOP = {
  ---暂停。
  PAUSE = 0,
  ---恢复。
  RESUME = 1,
  ---停止。
  STOP = 2,
}

---@enum EventDate
EVENTDATE = {
  ---年。
  YEAR = 0,
  ---月。
  MONTH = 1,
  ---天。
  DAY = 2,
  ---小时。
  HOUR = 3,
  ---分钟。
  MINUTE = 4,
  ---秒。
  SECOND = 5,
  ---时间戳。
  TIMESTAMP = 6,
}

---位置表。
---@alias __PositionTable { x: number, y: number, z: number }
