execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:netherite_chestplate",Slot:102b,tag:{Damage:0}}]}] run tellraw @s [{"text":"你已拥有满耐久的下界合金套装，无需再购买下界合金套装","color":"white"}]

execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b},{id:"minecraft:netherite_chestplate",Slot:102b}]}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:netherite_chestplate",Slot:102b,tag:{Damage:0}}]}] run execute if entity @s[scores={Points=650..}] run scoreboard players set @s Allowance 1
execute if entity @s[scores={Allowance=1}] run tellraw @s [{"text":"你已拥有下界合金套装，已补满耐久 ","color":"white"},{"text":"-$650","color":"red"}]
execute if entity @s[scores={Allowance=1}] run scoreboard players remove @s Points 650
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.head with netherite_helmet
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.chest with netherite_chestplate
execute if entity @s[scores={Allowance=1}] run scoreboard players set @s Allowance 0

execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:iron_chestplate",Slot:102b,tag:{Damage:0}}]}] run execute if entity @s[scores={Points=350..}] run scoreboard players set @s Allowance 1
execute if entity @s[scores={Allowance=1}] run tellraw @s [{"text":"你已拥有满耐久的铁套装，购买了 ","color":"white"},{"text":"下界合金套装 ","color":"yellow"},{"text":"-$350","color":"red"}]
execute if entity @s[scores={Allowance=1}] run scoreboard players remove @s Points 350
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.head with netherite_helmet
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.chest with netherite_chestplate
execute if entity @s[scores={Allowance=1}] run scoreboard players set @s Allowance 0

execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b},{id:"minecraft:iron_chestplate",Slot:102b}]},scores={Points=1000..}] run execute if entity @s[scores={Points=1000..}] run scoreboard players set @s Allowance 1
execute if entity @s[scores={Allowance=1}] run tellraw @s [{"text":"你已拥有铁套装，购买了 ","color":"white"},{"text":"下界合金套装 ","color":"yellow"},{"text":"-$1000","color":"red"}]
execute if entity @s[scores={Allowance=1}] run scoreboard players remove @s Points 1000
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.head with netherite_helmet
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.chest with netherite_chestplate
execute if entity @s[scores={Allowance=1}] run scoreboard players set @s Allowance 0

execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b},{id:"minecraft:iron_chestplate",Slot:102b}]}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b},{id:"minecraft:netherite_chestplate",Slot:102b}]}] run execute if entity @s[scores={Points=1000..}] run scoreboard players set @s Allowance 1
execute if entity @s[scores={Allowance=1}] run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"下界合金套装 ","color":"yellow"},{"text":"-$1000","color":"red"}]
execute if entity @s[scores={Allowance=1}] run scoreboard players remove @s Points 1000
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.head with netherite_helmet
execute if entity @s[scores={Allowance=1}] run item replace entity @s armor.chest with netherite_chestplate
execute if entity @s[scores={Allowance=1}] run scoreboard players set @s Allowance 0