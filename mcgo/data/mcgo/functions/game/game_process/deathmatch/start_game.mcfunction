clear @a[team=CT]
clear @a[team=T]
function mcgo:game/reset/reset_scoreboard2
gamerule keepInventory true
team modify CT friendlyFire true
team modify T friendlyFire true

spawnpoint @a[team=CT] 0 -60 -22
spawnpoint @a[team=T] 46 -60 -28

effect clear @a[team=CT]
effect clear @a[team=T]
#清除效果

gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
#变为冒险模式

scoreboard players set DeathMatch GameProcess 1
scoreboard players set @a Kills 0
scoreboard players set @a PlayKill 0
scoreboard players set @a Deaths 0
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

item replace entity @a[team=CT] hotbar.3 with block_bettle:dian_ji_qiang{GunType:7}
item replace entity @a[team=T] hotbar.3 with block_bettle:dian_ji_qiang{GunType:7}

scoreboard objectives setdisplay sidebar DeathMatchPoints
#将侧栏计分板改为DeathMatchPoints

scoreboard players set seconds GameProcess 600
schedule function mcgo:execute/timer/timer_deathmatch 1s append
tellraw @a [{"text":"10分钟，开始！","color":"yellow","bold":true}]

schedule function mcgo:game/map_select_tp/tp_to_selected_map 5t append

scoreboard players set DeathMatchBonusWeaponGiveTimer GameProcess 120
schedule function mcgo:execute/timer/timer_deathmatch_bonus_weapons 1s append
