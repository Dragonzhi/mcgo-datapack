tellraw @a {"text":"已初始化游戏","color":"yellow"}
function mcgo:game/reset/set_scoreboard
function mcgo:game/reset/reset_scoreboard1
function mcgo:game/reset/reset_scoreboard2
function mcgo:game/reset/reset_team

scoreboard players set S InGame 0
scoreboard objectives setdisplay sidebar
#清除sidebar

spawnpoint @a[team=CT] 1027 -47 -27
spawnpoint @a[team=T] 1027 -47 -27
#重设双方重生点为主城
effect clear @a[team=T]
effect clear @a[team=CT]
#清除双方效果
clear @a[team=CT]
clear @a[team=T]
#清除双方背包

kill @e[type=item]
kill @e[type=experience_orb]
kill @e[type=area_effect_cloud]
kill @e[type=block_bettle:c_4]
gamemode adventure @a[team=T]
gamemode adventure @a[team=CT]