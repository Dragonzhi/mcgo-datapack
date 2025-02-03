
clear @a[team=CT]
clear @a[team=T]
function mcgo:game/reset/reset_scoreboard2
gamerule keepInventory true

spawnpoint @a[team=CT] 0 -60 -22
spawnpoint @a[team=T] 46 -60 -28

effect clear @a[team=CT]
effect clear @a[team=T]
#清除效果

execute if score Allowance GameProcess matches 1 run scoreboard players set ArmsRace GameProcess 1
execute if score Allowance GameProcess matches 1 run scoreboard players set S InGame 1

gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
#变为冒险模式

scoreboard players set ArmsRace GameProcess 1
scoreboard players set @a Kills 0
scoreboard players set @a PlayKill 0
scoreboard players set @a Deaths 0
scoreboard players set @a ArmsRaceProcess 0
scoreboard players set S InGame 1

scoreboard players set @a ArmsRaceSeed 0
#重置部分计分板


effect give @a[team=T] minecraft:regeneration 3 255 true
effect give @a[team=T] health_boost 99999 2 true
effect give @a[team=T] minecraft:saturation 99999 255 true
effect give @a[team=T] minecraft:dolphins_grace 99999 1 true

effect give @a[team=CT] minecraft:regeneration 3 255 true
effect give @a[team=CT] health_boost 99999 2 true
effect give @a[team=CT] minecraft:saturation 99999 255 true
effect give @a[team=CT] minecraft:dolphins_grace 99999 1 true

scoreboard objectives setdisplay sidebar ArmsRaceProcess
#将侧栏计分板改为Timer
scoreboard players set seconds GameProcess 480
schedule function mcgo:execute/timer/timer_arms_race 1s append
tellraw @a [{"text":"八分钟，开始！","color":"yellow","bold":true}]

schedule function mcgo:game/map_select_tp/tp_to_selected_map 5t append