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

---@alias __PositionTable { x: number, y: number, z: number }
