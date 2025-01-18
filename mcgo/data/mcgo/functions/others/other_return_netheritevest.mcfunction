execute unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:netherite_chestplate",Slot:102b,tag:{Damage:0}}]}] run tellraw @s [{"text":"不可退回","color":"red"}]

execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:netherite_chestplate",Slot:102b,tag:{Damage:0}}]}] run tellraw @s [{"text":"你已退回 ","color":"white"},{"text":"下界合金套 ","color":"yellow"},{"text":"+$1000","color":"green"}]
execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:netherite_chestplate",Slot:102b,tag:{Damage:0}}]}] run scoreboard players add @s Points 1000
execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:netherite_chestplate",Slot:102b,tag:{Damage:0}}]}] run item replace entity @s armor.head with air
execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b,tag:{Damage:0}},{id:"minecraft:netherite_chestplate",Slot:102b,tag:{Damage:0}}]}] run item replace entity @s armor.chest with air
