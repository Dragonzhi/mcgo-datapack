execute if score 商店时间 Timer matches 1.. run execute if score RoundFinished GameProcess matches 0 run scoreboard players remove 商店时间 Timer 1
execute if score 商店时间 Timer matches ..3 run execute if score RoundFinished GameProcess matches 0 run playsound block.note_block.hat block @a ~ ~ ~ 2 0.5 1
execute if score 商店时间 Timer matches 1.. run execute if score RoundFinished GameProcess matches 0 run schedule function mcgo:execute/timer/timer_normal_shop 1s append

execute if score 商店时间 Timer matches 0 run execute if score RoundFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set RoundStart GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players reset 商店时间 Timer
    execute if score Allowance GameProcess matches 1 run function mcgo:execute/execute_shop_time_passed
    execute if score Allowance GameProcess matches 1 run title @a title {"text":""}
    execute if score Allowance GameProcess matches 1 run title @a subtitle [{"text":"回合开始","color":"white","bold":true}]
    execute if score Allowance GameProcess matches 1 run playsound block_bettle:okay_lats_go ambient @a ~ ~ ~ 1 1 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set 游戏倒计时 Timer 135
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_game 1s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0