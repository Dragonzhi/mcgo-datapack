execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"mcs2:cs_m4a1s"}}]}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"text":"M4A1-S ","color":"yellow"},{"text":"+$2900","color":"green"}]
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"mcs2:cs_m4a1s"}}]}] run scoreboard players add @s Points 2900
execute if entity @s run item replace entity @s hotbar.0 with minecraft:air 1
execute if entity @s run item replace entity @s inventory.9 with minecraft:air 1