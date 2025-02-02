
execute if score seconds GameProcess matches 0.. if score StopStartingGame GameProcess matches 0 run title @a title {"text":"游戏即将开始","color":"white","bold":true}
execute if score seconds GameProcess matches 0.. if score StopStartingGame GameProcess matches 0 run title @a subtitle [{"score":{"name":"seconds","objective":"GameProcess"},"color":"yellow","bold":true}]
execute if score seconds GameProcess matches 0.. if score StopStartingGame GameProcess matches 0 run playsound block.note_block.hat block @a ~ ~ ~ 1 1 1
execute if score seconds GameProcess matches 0.. if score StopStartingGame GameProcess matches 0 run scoreboard players remove seconds GameProcess 1
execute if score seconds GameProcess matches 0.. if score StopStartingGame GameProcess matches 0 run schedule function mcgo:execute/timer/timer_starting_arms_race 1s append

execute if score seconds GameProcess matches ..-1 if score StopStartingGame GameProcess matches 0 run title @a title [{"text":"游戏开始","color":"yellow","bold":true}]
execute if score seconds GameProcess matches ..-1 if score StopStartingGame GameProcess matches 0 run title @a subtitle [{"text":""}]
execute if score seconds GameProcess matches ..-1 if score StopStartingGame GameProcess matches 0 run function mcgo:game/game_process/arms_race/start_game
