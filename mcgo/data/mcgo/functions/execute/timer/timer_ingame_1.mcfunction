##<-tick_execute.mcfunction执行相应的计时

#商店计时
execute if score S InGame matches 1 run execute if score NormalMode GameProcess matches 1 run execute if score 商店时间 Timer matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_shop 1s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set RoundStart GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players reset 商店时间 Timer
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
#竞技模式游戏开始计时
execute if score S InGame matches 1 run execute if score NormalMode GameProcess matches 1 run execute if score RoundStart GameProcess matches 1 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @s [{"text":"[提示]","color":"yellow"},{"text":"回合开始","color":"white"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set 游戏倒计时 Timer 135
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_game 1s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set RoundStart GameProcess 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0