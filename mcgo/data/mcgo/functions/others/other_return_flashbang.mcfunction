scoreboard players set @s Allowance 0

execute unless entity @s[nbt={Inventory:[{id:"csgrenades:flashbang",tag:{GunType:6,GunUsed:0}}]}] if entity @s[nbt={Inventory:[{id:"csgrenades:flashbang",tag:{GunType:6,GunUsed:1}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"不可退回！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute unless entity @s[nbt={Inventory:[{id:"csgrenades:flashbang",tag:{GunType:6,GunUsed:0}}]}] unless entity @s[nbt={Inventory:[{id:"csgrenades:flashbang",tag:{GunType:6,GunUsed:1}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你没有闪光弹，不可退回！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if entity @s[nbt={Inventory:[{id:"csgrenades:flashbang",tag:{GunType:6,GunUsed:0}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你已退回 ","color":"white"},{"text":"闪光弹 ","color":"yellow"},{"text":"+200$","color":"green"}]
    execute if score @s Allowance matches 1 run scoreboard players add @s Points 200
    execute if score @s Allowance matches 1 run scoreboard players remove @s BoughtFlashbang 1
    execute if score @s Allowance matches 1 run clear @s csgrenades:flashbang{GunUsed:0} 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0


