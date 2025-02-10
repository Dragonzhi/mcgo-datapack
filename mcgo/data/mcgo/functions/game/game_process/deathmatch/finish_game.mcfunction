gamemode spectator @a[team=CT]
gamemode spectator @a[team=T]

clear @a[team=CT]
clear @a[team=T]

scoreboard players set S InGame 0

title @a title {"text":"游戏结束","color":"white","bold":true}
title @a subtitle [{"text":"时间耗尽","color":"white","bold":false}]

schedule function mcgo:game/game_process/deathmatch/show_points/print_high_level_player 5s append
schedule function mcgo:game/reset/reset_world 10s append