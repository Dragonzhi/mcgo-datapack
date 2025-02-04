scoreboard objectives setdisplay sidebar

execute if score CTWinTheGame GameProcess matches 1 run scoreboard players set seconds GameProcess 5
execute if score CTWinTheGame GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_finish 1t append
execute if score CTWinTheGame GameProcess matches 1 run playsound minecraft:ui.toast.challenge_complete block @a ~ ~ ~ 10 1 1
execute if score CTWinTheGame GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score CTWinTheGame GameProcess matches 1 run title @a subtitle [{"text":"CT胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score TWinTheGame GameProcess matches 1 run scoreboard players set seconds GameProcess 5
execute if score TWinTheGame GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_finish 1t append
execute if score TWinTheGame GameProcess matches 1 run playsound minecraft:ui.toast.challenge_complete block @a ~ ~ ~ 10 1 1
execute if score TWinTheGame GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score TWinTheGame GameProcess matches 1 run title @a subtitle [{"text":"T胜利","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score Tie GameProcess matches 1 run scoreboard players set seconds GameProcess 5
execute if score Tie GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_finish 1t append
execute if score Tie GameProcess matches 1 run playsound minecraft:ui.toast.challenge_complete block @a ~ ~ ~ 10 0.8 1
execute if score Tie GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Tie GameProcess matches 1 run title @a subtitle [{"text":"平局","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tellraw @a [{"text":"\n赛后总结","color":"yellow","bold":true}]
tellraw @a [{"text":"玩家    击杀数    死亡数    K/D    MVP次数","color":"white","bold":true}]
function mcgo:game/show_kills_deaths/sort_print_kills_deaths
tellraw @a [{"text":"\n最终比分  ","color":"white","bold":true},{"text":"CT ","color":"aqua","bold":true},{"score":{"name":"CT","objective":"Wins"},"color":"aqua","bold":true},{"text":" : ","color":"white","bold":false},{"score":{"name":"T","objective":"Wins"},"color":"yellow","bold":true},{"text":" T","color":"yellow","bold":true}]