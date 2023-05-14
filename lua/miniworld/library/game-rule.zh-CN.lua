---迷你世界脚本API语法库，游戏规则管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1354)
---@meta

---游戏规则管理。
---
---注意：
---  - 全部为值，像变量一样获取/设置
---  - 大部分规则要在 `Game.Start` 事件前设置
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1354)
---@class GameRuleLib
GameRule = {}

---编辑模式设置的游戏时间（小时）
---@type number
GameRule.CurTime = nil

---@alias __GameRuleTimeLocked
---| 0 # 不锁定时间
---| 1 # 锁定时间
---编辑模式设定的是否锁定时间。
---@type __GameRuleTimeLocked
GameRule.TimeLocked = nil

---@alias __GameRuleWeather
---| 0 # 晴雨交错
---| 1 # 晴天
---| 2 # 雨天
---| 3 # 雷暴
---编辑模式设定的天气。
---@type __GameRuleWeather
GameRule.Weather = nil

---编辑模式设定的最大玩家数量。
---@type number
GameRule.MaxPlayers = nil

---破坏方块权限。
---@alias __GameRuleBlockDestroy
---| 0 # 禁止破坏方块
---| 1 # 允许破坏方块
---是否可破坏方块。
---@type __GameRuleBlockDestroy
GameRule.BlockDestroy = nil

---放置方块权限。
---@alias __GameRuleBlockPlace
---| 0 # 禁止放置方块
---| 1 # 允许放置方块
---是否可放置方块。
---@type __GameRuleBlockPlace
GameRule.GameRuleBlockPlace = nil

---方块交互权限。
---@alias __GameRuleBlockUse
---| 0 # 禁止与方块交互
---| 1 # 允许与方块交互
---是否可与方块交互。
---@type __GameRuleBlockUse
GameRule.BlockUse = nil

---有效值应处于0.1~10之间。
---@alias __GravityFactor number
---重力倍数。
---@type __GravityFactor
GameRule.GravityFactor = nil

---@alias __GameRuleCameraDir
---| 0 # 主视角
---| 1 # 背视角
---| 2 # 正视角
---| 3 # 锁定主视角
---| 4 # 锁定背视角
---| 5 # 锁定正视角
---| 6 # 锁定俯视角
---| 7 # 锁定自定义视角
---| 8 # 背视角 2
---| 9 # 锁定背视角 2
---设定的视角。
---@type __GameRuleCameraDir
GameRule.CameraDir = nil

---@alias __GameRuleStartMode
---| 0 # 房主开启
---| 1 # 达到人数自动开启
---| 2 # 不限条件自动开启
---游戏开始条件。
---@type __GameRuleStartMode
GameRule.StartMode = nil

---开始游戏最少人数。
---@type number
GameRule.StartPlayers = nil

---队伍数量。
---@type number
GameRule.TeamNum = nil

---@alias __GameRuleAttackPlayerMode
---| 0 # 队伍间攻击
---| 1 # 禁止攻击玩家
---| 2 # 自由攻击
---玩家攻击规则。
---@type __GameRuleAttackPlayerMode
GameRule.AttackPlayerMode = nil

---游戏限时。
---
---值：
---  - `0`：不限时
---  - `1` ~ `60`：限时的分钟数
---@type number
GameRule.EndTime = nil

---目标分数，任意队伍达到后胜利。
---
---值：
---  - `0`：无目标分数
---  - `1` ~ `999`：目标分数
---@type number
GameRule.EndScore = nil

---击败玩家的得分。
---@type number
GameRule.ScoreKillPlayer = nil

---击败怪物的得分。
---
---注意：若是插件生物，生物类型需设为“怪物”才有得分。
---@type number
GameRule.ScoreKillMob = nil

---获得[闪星方块](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=1&wikiId=854)的得分。
---@type number
GameRule.ScoreCollectStar = nil

---染色的得分。
---@type number
GameRule.ScoreColorChange = nil

---复活时间。
---
---值：
---  - `0`：默认
---  - `1` ~ `320`：复活等待秒数
---@type number
GameRule.ReviveMode = nil

---复活后的保护时间。
---
---值：
---  - `0`：默认，保护5秒
---  - `1` ~ `320`：保护秒数
---@type number
GameRule.ReviveInvulnerable = nil

---@alias __GameRuleDisplayName
---| 0 # 所有人可见
---| 1 # 仅同队伍可见
---| 2 # 仅不同队伍可见
---| 3 # 全部不可见
---
---玩家昵称显示规则。
---@type __GameRuleDisplayName
GameRule.DisplayName = nil

---@alias __GameRuleWinLoseEndTime
---| 0 # 分数最高的队伍胜
---| 1 # 全体胜利
---| 2 # 全体失败
---
---限时结束后胜利规则。
---@type __GameRuleWinLoseEndTime
GameRule.WinLoseEndTime = nil

---@alias __GameRuleSaveMode
---| 0 # 重置
---| 1 # 不重置
---退出地图后是否重置。
---@type __GameRuleSaveMode
GameRule.SaveMode = nil

---@alias __GameRuleKillNotify
---| 0 # 不提示
---| 1 # 提示
---击杀玩家全局提示。
---@type __GameRuleKillNotify
GameRule.KillNotify = nil

---背景音乐。
---
---值：
---  - `0`：默认
---  - `1` ~ `8`：背景音乐编号
---@type number
GameRule.BgMusicMode = nil

---@alias __GameRuleMobGen
---| -1 # 地图创建时禁止生成
---| 0 # 不生成
---| 1 # 生成
---怪物生成规则。
---@type __GameRuleMobGen
GameRule.MobGen = nil

---@alias __GameRuleSpawnPtMode
---| 0 # 到随机的队伍重生点
---| 1 # 到最近的队伍重生点
---重生位置规则。
---@type __GameRuleSpawnPtMode
GameRule.SpawnPtMode = nil

---@alias __GameRuleMinimapTeams
---| 0 # 显示所有人
---| 1 # 仅显示同队伍玩家
---小地图显示规则。
---@type __GameRuleMinimapTeams
GameRule.MinimapTeams = nil

---@alias __GameRulePlayerDieDrops
---| 0 # 正常掉落
---| 1 # 清空背包
---| 2 # 保留物品
---| 3 # 掉落箱子
---设定的玩家战败是否掉落物品
---@type __GameRulePlayerDieDrops
GameRule.PlayerDieDrops = nil

---@alias __GameRuleDisplayScore
---| 0 # 不显示比分和时间
---| 1 # 显示比分和时间
---比分和时间显示规则。
---@type __GameRuleDisplayScore
GameRule.DisplayScore = nil

---生命数限制。
---
---值：
---  - `0`：无限制
---  - `1` ~ `99`：限制生命数
---@type number
GameRule.LifeNum = nil

---@alias __GameRuleShowSight
---| 0 # 不显示准星
---| 1 # 显示准星
---准星显示规则。
---@type __GameRuleShowSight
GameRule.ShowSight = nil

---@alias __GameRuleGPoisonSwitch
---| 0 # 关闭污染区规则
---| 1 # 开启污染区规则
---污染区开启规则。
---@type __GameRuleGPoisonSwitch
GameRule.GPoisonSwitch = nil

---第一个安全区半径。
---
---值：`1` ~ `100`。
---@type number
GameRule.GPoisonSafeD0 = nil

---第一段安全时间秒数。
---
---值：`1` ~ `600`。
---@type number
GameRule.GPoisonSafeT0 = nil

---@alias __GameRuleAllowMidwayJoin
---| 0 # 禁止中途加入
---| 1 # 允许中途加入
---中途加入游戏。
---@type __GameRuleAllowMidwayJoin
GameRule.AllowMidwayJoin = nil

---@alias __GameRuleLifeNumTeamShare
---| 0 # 玩家独享生命数 或 不限制生命数
---| 1 # 队伍共用生命数
---生命数限制维度。
---@type __GameRuleLifeNumTeamShare
GameRule.LifeNumTeamShare = nil

---@alias __GameRuleViewMode
---| 0 # 禁止失败观战
---| 1 # 允许失败观战
---是否开启观战。
---@type __GameRuleViewMode
GameRule.ViewMode = nil

---@alias __GameRuleViewType
---| 0 # 自由观战
---| 1 # 跟随屏幕
---| 2 # 自由观战，可切换至自由模式
GameRule.ViewType = nil

---满足开始条件后，倒计时秒数。
---
---值：`1` ~ `100`。
---@type number
GameRule.CountDown = nil

---@alias __GameRuleScoreResetRound
---| 0 # 开启回合模式
---| 1 # 关闭回合模式
---回合模式。
GameRule.ScoreResetRound = nil

---回合模式开启时，任意队伍分数达到此值后重置。
---@type number
GameRule.ResetScore = nil
