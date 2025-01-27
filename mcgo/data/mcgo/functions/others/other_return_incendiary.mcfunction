scoreboard players set @s Allowance 0

execute unless entity @s[nbt={Inventory:[{id:"csgrenades:incendiary",tag:{GunType:6,GunUsed:0}}]}] if entity @s[nbt={Inventory:[{id:"csgrenades:incendiary",tag:{GunType:6,GunUsed:1}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"不可退回！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute unless entity @s[nbt={Inventory:[{id:"csgrenades:incendiary",tag:{GunType:6,GunUsed:0}}]}] unless entity @s[nbt={Inventory:[{id:"csgrenades:flashbaincendiaryng",tag:{GunType:6,GunUsed:1}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你没有燃烧弹，不可退回！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if entity @s[nbt={Inventory:[{id:"csgrenades:incendiary",tag:{GunType:6,GunUsed:0}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你已退回 ","color":"white"},{"text":"燃烧弹 ","color":"yellow"},{"text":"+400$","color":"green"}]
    execute if score @s Allowance matches 1 run scoreboard players add @s Points 400
    execute if score @s Allowance matches 1 run scoreboard players remove @s BoughtIncendiary 1
    execute if score @s Allowance matches 1 run clear @s csgrenades:incendiary{GunUsed:0} 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0


