execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Damage:0,GunUsed:0}},{id:"minecraft:iron_chestplate",Slot:102b,tag:{Damage:0,GunUsed:0}}]}] run tellraw @s [{"text":"不可退回！","color":"red"}]

execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Damage:0,GunUsed:0}},{id:"minecraft:iron_chestplate",Slot:102b,tag:{Damage:0,GunUsed:0}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你已退回 ","color":"white"},{"text":"下界铁套装 ","color":"yellow"},{"text":"+$650","color":"green"}]
    execute if score @s Allowance matches 1 run scoreboard players add @s Points 650
    execute if score @s Allowance matches 1 run item replace entity @s armor.head with air
    execute if score @s Allowance matches 1 run item replace entity @s armor.chest with air
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
