---迷你世界脚本API语法库，事件管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1353)
---@meta

---游戏事件枚举。
---@alias __EventMsg
---| 'Game.Load' # 游戏加载中
---| 'Game.Start' # 游戏启动
---| 'Game.Run' # 游戏运行中
---| 'Game.Hour' # 游戏内时间到整点时
---| 'Game.RunTime' # 游戏运行了某秒时
---| 'Game.TimeOver' # 游戏超时
---| 'Game.End' # 游戏结束
---| 'Game.AnyPlayer.ReadStage' # 有玩家读取进度
---| 'Game.AnyPlayer.EnterGame' # 有玩家进入游戏
---| 'Game.AnyPlayer.Victory' # 有玩家获胜
---| 'Game.AnyPlayer.Defeat' # 有玩家失败
---| 'Game.AnyPlayer.LeaveGame' # 有玩家离开游戏
---| 'Block.Add' # 方块被创建
---| 'Block.Remove' # 方块被移除
---| 'Block.PlaceBy' # 方块被放置
---| 'Block.DestroyBy' # 方块被破坏
---| 'Block.Trigger' # 方块被触发
---| 'Block.Fertilize' # 方块被施肥
---| 'Block.Dig.Begin' # 开始挖掘方块
---| 'Block.Dig.Cancel' # 取消挖掘方块
---| 'Block.Dig.End' # 完成挖掘方块
---| 'Player.Init' # 玩家初始化
---| 'Player.ClickBlock' # 玩家点击方块
---| 'Player.ClickActor' # 玩家点击生物或玩家
---| 'Player.Attack' # 玩家开始攻击
---| 'Player.AttackHit' # 玩家攻击命中
---| 'Player.DamageActor' # 玩家给对方造成伤害
---| 'Player.DefeatActor' # 玩家打败目标
---| 'Player.BeHurt' # 玩家受到伤害
---| 'Player.Die' # 玩家死亡
---| 'Player.Revive' # 玩家复活
---| 'Player.Collide' # 玩家与玩家发生碰撞
---| 'Player.AreaIn' # 玩家进入区域
---| 'Player.AreaOut' # 玩家离开区域
---| 'Player.AddItem' # 玩家获得物品
---| 'Player.ConsumeItem' # 玩家消耗物品
---| 'Player.UseItem' # 玩家使用道具
---| 'Player.PickUpItem' # 玩家拾取掉落物
---| 'Player.DiscardItem' # 玩家丢弃物品
---| 'Player.ShortcutChange' # 玩家快捷栏变化
---| 'Player.EquipChange' # 玩家装备栏变化
---| 'Actor.Collide' # 生物与玩家或其他生物发生碰撞
---| 'Actor.AddBuff' # 生物获得状态
---| 'Actor.RemoveBuff' # 生物状态消失
---| 'DropItem.AreaIn' # 掉落物进入区域
---| 'DropItem.AreaOut' # 掉落物离开区域
---| 'Item.Pickup' # 道具被拾取
---| 'Item.Disappear' # 道具消失
---| 'Missile.Create' # 投掷物被创建
---| 'Actor.Projectile.Hit' # 投掷物击中目标
---| 'Missile.AreaIn' # 投掷物进入区域
---| 'Missile.AreaOut' # 投掷物离开区域
---| 'Particle.Pos.OnCreate' # 有位置上被创建了特效
---| 'Particle.Player.OnCreate' # 有玩家身上被创建了特效
---| 'Particle.Mob.OnCreate' # 有生物身上被创建了特效
---| 'Particle.Projectile.OnCreate' # 有投掷物上被创建了特效
---| 'Backpack.ItemPutIn' # 容器内有道具放入
---| 'Backpack.ItemTakeOut' # 容器内有道具取出
---| 'Backpack.ItemChange' # 容器内道具发生变化
---| 'Weather.Changed' # 天气发生变化
---| 'minitimer.change' # 计时器发生变化
---| 'UI.Button.Click' # 界面中的按钮被松开
---| 'UI.Hide' # 界面隐藏
---| 'UI.Show' # 界面显示
---| 'UI.Button.TouchBegin' # 界面中的按钮被按下
---| 'UI.LostFocus' # 自定义 UI 输入框输入
---| 'Craft.end' # 物品合成完毕
---| 'Furnace.begin' # 熔炼开始
---| 'Furnace.end' # 熔炼结束
---| 'Plot.begin' # 剧情开始
---| 'Plot.end' # 剧情结束
---| 'BluePrint.BuildBegin' #	蓝图开始创建
---| 'Craft.end' # 配方合成完成
---| 'Developer.BuyItem' # 玩家购买商品
---| 'Furnace.begin' # 熔炼开始
---| 'Furnace.end' # 熔炼结束
---| 'MiNiVip_1' # 购买迷你大会员 1 个月
---| 'MiNiVip_3' # 购买迷你大会员 3 个月
---| 'QQMusic.PlayBegin' # QQ音乐开始播放

---事件回调参数。
---@alias __EventCallbackParam table

---事件回调函数。
---@alias __EventCallback fun(param?: __EventCallbackParam)

---游戏事件管理。
---
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1353)
---@class EventLib
ScriptSupportEvent = {}

---监听事件。
---@param msg __EventMsg # 监听的事件名
---@param func __EventCallback # 事件触发时调用的函数
---@return ErrorCode, number # 监听 ID
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1353)
---
------
function ScriptSupportEvent:registerEvent(msg, func) end

---取消监听事件。
---@param msg __EventMsg # 需要取消的监听的事件名
---@param funcid number # 需要取消的监听 ID
---[查看文档](https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=3&wikiId=1353)
---
------
function ScriptSupportEvent:removeEvent(msg, funcid) end
