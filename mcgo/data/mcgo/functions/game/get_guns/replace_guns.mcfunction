#以下指令目前不会用到，仅做保留
execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 4
    execute if score @s Allowance matches 4 run execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_change"],Invisible:1b}
    execute if score @s Allowance matches 4 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p hotbar.1
    execute if score @s Allowance matches 4 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p inventory.0 from entity @s weapon.mainhand
    execute if score @s Allowance matches 4 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p inventory.18
    execute if score @s Allowance matches 4 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p inventory.9 from entity @s weapon.mainhand
    execute if score @s Allowance matches 4 run execute as @e[type=minecraft:armor_stand,tag=iu_change] at @s run kill @s
    execute if score @s Allowance matches 4 run item replace entity @s hotbar.1 with air
    execute if score @s Allowance matches 4 run scoreboard players set @s Allowance 10


execute if score @s Allowance matches 5 run scoreboard players set @s Allowance 6
    execute if score @s Allowance matches 6 run execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_change"],Invisible:1b}
    execute if score @s Allowance matches 6 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p hotbar.0
    execute if score @s Allowance matches 6 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p inventory.1 from entity @s weapon.mainhand
    execute if score @s Allowance matches 6 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p inventory.19
    execute if score @s Allowance matches 6 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p inventory.10 from entity @s weapon.mainhand
    execute if score @s Allowance matches 6 run execute as @e[type=minecraft:armor_stand,tag=iu_change] at @s run kill @s
    execute if score @s Allowance matches 6 run item replace entity @s hotbar.0 with air
    execute if score @s Allowance matches 6 run scoreboard players set @s Allowance 10