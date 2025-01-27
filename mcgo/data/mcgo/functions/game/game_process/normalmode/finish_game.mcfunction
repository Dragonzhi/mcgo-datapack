scoreboard objectives setdisplay sidebar

execute if score CTWinTheGame GameProcess matches 1 run scoreboard players set seconds GameProcess 5
execute if score CTWinTheGame GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_finish 1t append
execute if score CTWinTheGame GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score CTWinTheGame GameProcess matches 1 run title @a subtitle [{"text":"CT胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score TWinTheGame GameProcess matches 1 run scoreboard players set seconds GameProcess 5
execute if score TWinTheGame GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_finish 1t append
execute if score TWinTheGame GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score TWinTheGame GameProcess matches 1 run title @a subtitle [{"text":"T胜利","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score Tie GameProcess matches 1 run scoreboard players set seconds GameProcess 5
execute if score Tie GameProcess matches 1 run schedule function mcgo:execute/timer/timer_normal_finish 1t append
execute if score Tie GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Tie GameProcess matches 1 run title @a subtitle [{"text":"平局","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tellraw @a [{"text":"赛后总结","color":"yellow","bold":true},{"text":"\n%%%","color":"yellow","bold":false}]
tellraw @a [{"text":"玩家    ","color":"white","bold":true},{"text":"击杀数    ","color":"white","bold":true},{"text":"死亡数","color":"white","bold":true}]
function mcgo:game/show_kills_deaths/sort_print_kills_deaths