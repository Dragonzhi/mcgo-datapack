execute unless score S InGame matches 1 run scoreboard players set StopStartingGame GameProcess 1
execute unless score NormalMode GameProcess matches 1 run scoreboard players set StopStartingGame GameProcess 1
execute if score StopStartingGame GameProcess matches 1 run title @a title {"text":"游戏终止","color":"red","bold":true}
execute if score StopStartingGame GameProcess matches 1 run title @a subtitle {"text":"检测到终止信号","color":"red","bold":true}
execute if score StopStartingGame GameProcess matches 1 run schedule clear mcgo:execute/timer/timer_starting_normal_game
execute if score StopStartingGame GameProcess matches 1 run schedule function mcgo:game/reset/reset_world 3s append
execute if score StopStartingGame GameProcess matches 1 run scoreboard players set StopStartingGame GameProcess 0

execute if score S InGame matches 1 if score NormalMode GameProcess matches 1 if score seconds GameProcess matches 1.. if score StopStartingGame GameProcess matches 0 run title @a title {"text":"游戏即将开始","color":"white","bold":true}
execute if score S InGame matches 1 if score NormalMode GameProcess matches 1 if score seconds GameProcess matches 1.. if score StopStartingGame GameProcess matches 0 run title @a subtitle [{"score":{"name":"seconds","objective":"GameProcess"},"color":"yellow","bold":true}]
execute if score S InGame matches 1 if score NormalMode GameProcess matches 1 if score seconds GameProcess matches 1.. if score StopStartingGame GameProcess matches 0 run playsound block.note_block.hat block @a ~ ~ ~ 1 1 1
execute if score S InGame matches 1 if score NormalMode GameProcess matches 1 if score seconds GameProcess matches 1.. if score StopStartingGame GameProcess matches 0 run scoreboard players remove seconds GameProcess 1
execute if score S InGame matches 1 if score NormalMode GameProcess matches 1 if score seconds GameProcess matches 1.. if score StopStartingGame GameProcess matches 0 run schedule function mcgo:execute/timer/timer_starting_normal_game 1s append

execute if score S InGame matches 1 if score NormalMode GameProcess matches 1 if score seconds GameProcess matches ..0 if score StopStartingGame GameProcess matches 0 run function mcgo:game/game_process/normalmode/start_game
execute if score S InGame matches 1 if score NormalMode GameProcess matches 1 if score seconds GameProcess matches ..0 if score StopStartingGame GameProcess matches 0 run title @a clear