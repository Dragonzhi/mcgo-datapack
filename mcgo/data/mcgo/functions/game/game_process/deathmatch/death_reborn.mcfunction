# 取模25（得到0~24），对应传送到特定地图的特定范围
execute as @a[scores={Deaths=1..}] run scoreboard players operation @s DeathMatchSeed %= #25 DeathMatchSeed
# 沙二 Dust2
execute if score dust2 SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 0 run spreadplayers 1081 -151 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 1 run spreadplayers 1080 -134 1 1 under -46 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 2 run spreadplayers 1068 -136 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 3 run spreadplayers 1069 -151 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 4 run spreadplayers 1042 -143 1 1 under -50 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 5 run spreadplayers 1017 -140 1 1 under -50 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 6 run spreadplayers 984 -127 1 1 under -44 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 7 run spreadplayers 983 -150 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 8 run spreadplayers 984 -183 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 9 run spreadplayers 983 -150 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 10 run spreadplayers 1007 -181 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 11 run spreadplayers 1007 -196 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 12 run spreadplayers 1008 -214 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 13 run spreadplayers 1016 -199 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 14 run spreadplayers 1035 -222 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 15 run spreadplayers 1016 -231 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 16 run spreadplayers 1043 -231 1 1 under -44 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 17 run spreadplayers 1057 -220 1 1 under -44 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 18 run spreadplayers 1082 -231 1 1 under -44 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 19 run spreadplayers 1067 -203 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 20 run spreadplayers 1084 -176 1 1 under -46 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 21 run spreadplayers 1065 -176 1 1 under -46 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 22 run spreadplayers 1051 -170 1 1 under -50 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 23 run spreadplayers 1036 -198 1 1 under -47 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed matches 24 run spreadplayers 1020 -169 1 1 under -46 false @s
    execute if score Allowonce GameProcess matches 1 as @a[scores={Deaths=1..}] if score @s DeathMatchSeed >= 25 DeathMatchSeed run spreadplayers 1013 -137 1 1 under -44 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0



effect give @a[scores={Deaths=1..}] health_boost 99999 2 true
effect give @a[scores={Deaths=1..}] minecraft:saturation 99999 255 true
effect give @a[scores={Deaths=1..}] minecraft:dolphins_grace 99999 1 true
effect give @a[scores={Deaths=1..}] minecraft:regeneration 3 4 true
execute as @a[scores={Deaths=1..}] run function mcgo:game/game_process/deathmatch/get_chosen_weapons
item replace entity @a[scores={Deaths=1..}] hotbar.3 with block_bettle:dian_ji_qiang{GunType:7}
clear @a[scores={Deaths=1..}] minecraft:potion
experience set @a[scores={Deaths=1..}] 0 levels

scoreboard players set @a[scores={Deaths=1..}] Deaths 0
