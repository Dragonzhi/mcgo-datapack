
clear @a[team=CT]
clear @a[team=T]
function mcgo:game/reset/reset_scoreboard2
gamerule keepInventory true

team modify CT nametagVisibility never
team modify T nametagVisibility never

spawnpoint @a[team=CT] 0 -60 -22
spawnpoint @a[team=T] 46 -60 -28

effect clear @a[team=CT]
effect clear @a[team=T]
#清除效果

gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
#变为冒险模式

scoreboard players set @a GetGunForFree 1
scoreboard players set ArmsRace GameProcess 1
scoreboard players set @a Kills 0
scoreboard players set @a PlayKill 0
scoreboard players set @a Deaths 0
scoreboard players set @a ArmsRaceProcess 0
scoreboard players set S InGame 1
#重置部分计分板


effect give @a[team=T] minecraft:regeneration 3 255 true
effect give @a[team=T] health_boost 99999 2 true
effect give @a[team=T] minecraft:saturation 99999 255 true
effect give @a[team=T] minecraft:dolphins_grace 99999 1 true

effect give @a[team=CT] minecraft:regeneration 3 255 true
effect give @a[team=CT] health_boost 99999 2 true
effect give @a[team=CT] minecraft:saturation 99999 255 true
effect give @a[team=CT] minecraft:dolphins_grace 99999 1 true

item replace entity @a[scores={Deaths=1..}] hotbar.3 with block_bettle:dian_ji_qiang{GunType:7}

scoreboard objectives setdisplay sidebar ArmsRaceProcess
#将侧栏计分板改为Timer

bossbar set mcs:arms_race_game_process visible true
bossbar set mcs:arms_race_game_process name [{"text":"军备竞赛倒计时 ","color":"white","bold":false},{"text":"8","color":"yellow","bold":true},{"text":" : ","color":"white","bold":false},{"text":"00","color":"yellow","bold":true}]
scoreboard players set seconds GameProcess 480
schedule function mcgo:execute/timer/timer_arms_race 1s append


schedule function mcgo:game/map_select_tp/tp_to_selected_map 5t append