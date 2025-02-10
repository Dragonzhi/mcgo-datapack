execute if score S InGame matches 1 if score ArmsRace GameProcess matches 1 if score seconds GameProcess matches 1.. run scoreboard players remove seconds GameProcess 1
execute if score S InGame matches 1 if score ArmsRace GameProcess matches 1 if score seconds GameProcess matches 1.. run schedule function mcgo:execute/timer/timer_arms_race 1s append

scoreboard players operation minutes1 GameProcess = seconds GameProcess
scoreboard players operation minutes2 GameProcess = seconds GameProcess
scoreboard players operation minutes1 GameProcess %= #60 GameProcess
scoreboard players operation minutes2 GameProcess /= #60 GameProcess

execute if score minutes1 GameProcess matches 0 if score minutes2 GameProcess matches 3.. run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"score":{"name":"minutes2","objective":"GameProcess"},"color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？打你的枪枪喵❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

execute if score minutes1 GameProcess matches 0 if score minutes2 GameProcess matches 0..2 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"score":{"name":"minutes2","objective":"GameProcess"},"color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？是不是怕自己时间快不够了喵❤？像你这样的杂鱼，就只能这样了喵❤~杂鱼❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

#判断是否结束游戏
execute if score seconds GameProcess matches ..0 if score GameFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set GameFinished GameProcess 1
    execute if score Allowance GameProcess matches 1 run function mcgo:game/game_process/deathmatch/finish_game
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0