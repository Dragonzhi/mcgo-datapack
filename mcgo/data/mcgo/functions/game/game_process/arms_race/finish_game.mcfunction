gamemode spectator @a[team=CT]
gamemode spectator @a[team=T]

clear @a[team=CT]
clear @a[team=T]

scoreboard players set S InGame 0

title @a title {"text":"游戏结束","color":"white","bold":true}
execute if score ArmsRace_18ScoresReached GameProcess matches 1 run title @a subtitle [{"selector":"@a[scores={ArmsRaceProcess=18}]"},{"text":"首次达到18级","color":"white","bold":false}]
execute if score ArmsRace_TimeOut GameProcess matches 1 run title @a subtitle [{"text":"时间耗尽","color":"white","bold":false}]

schedule function mcgo:game/game_process/arms_race/show_levels/sort_print_levels 5s append
schedule function mcgo:game/reset/reset_world 10s append