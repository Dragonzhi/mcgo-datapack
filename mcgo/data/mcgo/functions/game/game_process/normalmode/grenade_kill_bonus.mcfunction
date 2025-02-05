execute if score @s Allowance matches 2 if score @s csgrenade_killcount_flashbang matches 1.. run scoreboard players set @s Allowance 3
    execute if score @s Allowance matches 3 run tellraw @s [{"text":"使用闪光弹击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    execute if score @s Allowance matches 3 run scoreboard players remove @s csgrenade_killcount_flashbang 1
    execute if score @s Allowance matches 3 run scoreboard players add @s Points 300
    execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 2 if score @s csgrenade_killcount_hegrenade matches 1.. run scoreboard players set @s Allowance 3
    execute if score @s Allowance matches 3 run tellraw @s [{"text":"使用高爆击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    execute if score @s Allowance matches 3 run scoreboard players remove @s csgrenade_killcount_hegrenade 1
    execute if score @s Allowance matches 3 run scoreboard players add @s Points 300
    execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 2 if score @s csgrenade_killcount_incendiary matches 1.. run scoreboard players set @s Allowance 3
    execute if score @s Allowance matches 3 run tellraw @s [{"text":"使用燃烧弹击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    execute if score @s Allowance matches 3 run scoreboard players remove @s csgrenade_killcount_incendiary 1
    execute if score @s Allowance matches 3 run scoreboard players add @s Points 300
    execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 2 if score @s csgrenade_killcount_molotov matches 1.. run scoreboard players set @s Allowance 3
    execute if score @s Allowance matches 3 run tellraw @s [{"text":"使用燃烧瓶击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    execute if score @s Allowance matches 3 run scoreboard players remove @s csgrenade_killcount_molotov 1
    execute if score @s Allowance matches 3 run scoreboard players add @s Points 300
    execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 2 if score @s csgrenade_killcount_smokegrenade matches 1.. run scoreboard players set @s Allowance 3
    execute if score @s Allowance matches 3 run tellraw @s [{"text":"使用烟雾弹击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    execute if score @s Allowance matches 3 run scoreboard players remove @s csgrenade_killcount_smokegrenade 1
    execute if score @s Allowance matches 3 run scoreboard players add @s Points 300
    execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0
