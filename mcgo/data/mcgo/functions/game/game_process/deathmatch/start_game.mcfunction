clear @a[team=CT]
clear @a[team=T]
function mcgo:game/reset/reset_scoreboard2
#gamerule keepInventory true
team modify CT nametagVisibility never 
team modify T nametagVisibility never
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

scoreboard players set @a GetGunForFree 1
scoreboard players set DeathMatch GameProcess 1
scoreboard players set @a Kills 0
scoreboard players set @a PlayKill 0
scoreboard players set @a Deaths 1
scoreboard players set S InGame 1
#重置部分计分板

# 用于实现游戏对局开始时，玩家尽量不会在同一处出生（获取XpSeed作为基数，除于一个增加的数，再加上玩家的旋转值）
execute as @a store result score @s DeathMatchSeed_cala run data get entity @s XpSeed
execute as @a run scoreboard players operation @s DeathMatchSeed += @s DeathMatchSeed_cala
execute as @a store result score @s DeathMatchSeed_cala run data get entity @s warden_spawn_tracker.ticks_since_last_warning
execute as @a run scoreboard players operation @s DeathMatchSeed /= @s DeathMatchSeed_cala
execute as @a store result score @s DeathMatchSeed_cala run data get entity @s Rotation[0]
execute as @a run scoreboard players operation @s DeathMatchSeed += @s DeathMatchSeed_cala

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

bossbar set mcs:deathmatch_game_process visible true
bossbar set mcs:deathmatch_game_process name [{"text":"死亡竞赛倒计时 ","color":"white","bold":false},{"text":"10","color":"yellow","bold":true},{"text":" : ","color":"white","bold":false},{"text":"00","color":"yellow","bold":true}]
execute store result bossbar mcs:deathmatch_bonus_weapons value run scoreboard players set seconds GameProcess 600
schedule function mcgo:execute/timer/timer_deathmatch 1s append


scoreboard players set DeathMatchBonusWeaponGiveTimer GameProcess 120
schedule function mcgo:execute/timer/timer_deathmatch_bonus_weapons 1s append
