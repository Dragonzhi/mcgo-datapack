# 取模5（得到0~4），对应传送到特定地图的特定范围
execute as @a[scores={Deaths=1..}] run scoreboard players operation @s ArmsRaceSeed %= 5 ArmsRaceSeed
#泳池 pool
execute if score pool SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers 36 -42 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers 36 -30 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers 43 -30 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers 42 -15 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers 36 -21 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0
#冰雪世界 ice
execute if score ice SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers -4 4082 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers 10 4082 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers 4 4091 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers 9 4091 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers -1 4091 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0
#圣马丁镇 stmarc
execute if score stmarc SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers -100 3640 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers -103 3640 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers -106 3640 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers -103 3638 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers -106 3638 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0
#湖畔激战 lake
execute if score lake SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers 59 -2105 1 2 under -5 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers 59 -2107 1 2 under -5 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers 59 -2109 1 2 under -5 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers 59 -2111 1 2 under -5 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=T,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers 59 -2113 1 2 under -5 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0

#----------

#泳池 pool
execute if score pool SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers 5 -24 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers 5 -40 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers 10 -44 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers 10 -32 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers 10 -21 1 2 under -59 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0
#冰雪世界 ice
execute if score ice SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers 4 4028 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers 9 4028 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers -1 4028 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers -4 4037 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers 10 4037 1 2 under -10 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0
#圣马丁镇 stmarc
execute if score stmarc SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers -82 3563 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers -85 3562 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers -88 3563 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers -91 3562 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers -94 3563 1 2 under -20 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0
#湖畔激战 lake
execute if score lake SelectedMap matches 1 run scoreboard players set Allowonce GameProcess 1
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 0 run spreadplayers 72 -2030 1 2 under -3 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 1 run spreadplayers 69 -2030 1 2 under -3 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 2 run spreadplayers 66 -2030 1 2 under -3 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 3 run spreadplayers 64 -2030 1 2 under -3 false @s
    execute if score Allowonce GameProcess matches 1 as @a[team=CT,scores={Deaths=1..}] if score @s ArmsRaceSeed matches 4 run spreadplayers 62 -2030 1 2 under -3 false @s
    execute if score Allowonce GameProcess matches 1 run scoreboard players set Allowonce GameProcess 0



effect give @a[scores={Deaths=1..}] health_boost 99999 2 true
effect give @a[scores={Deaths=1..}] minecraft:saturation 99999 255 true
effect give @a[scores={Deaths=1..}] minecraft:dolphins_grace 99999 1 true
effect give @a[scores={Deaths=1..}] minecraft:regeneration 3 4 true
item replace entity @a[scores={Deaths=1..}] hotbar.3 with block_bettle:dian_ji_qiang{GunType:7}
scoreboard players set @a[scores={Deaths=1..}] Deaths 0

