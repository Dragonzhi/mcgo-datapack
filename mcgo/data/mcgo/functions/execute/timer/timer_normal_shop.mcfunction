execute if score 商店时间 Timer matches 1.. run execute if score RoundFinished GameProcess matches 0 run scoreboard players remove 商店时间 Timer 1
execute if score 商店时间 Timer matches ..3 run execute if score RoundFinished GameProcess matches 0 run playsound block.note_block.hat block @a ~ ~ ~ 2 0.5 1
execute if score 商店时间 Timer matches 1.. run execute if score RoundFinished GameProcess matches 0 run schedule function mcgo:execute/timer/timer_normal_shop 1s append
