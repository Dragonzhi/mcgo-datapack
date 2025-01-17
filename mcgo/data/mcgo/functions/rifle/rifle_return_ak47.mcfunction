execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"mcs2:cs_ak"}}]}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"text":"AK47 ","color":"yellow"},{"text":"+$3000","color":"green"}]
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"mcs2:cs_ak"}}]}] run scoreboard players add @s Points 2700
execute if entity @s run item replace entity @s hotbar.0 with minecraft:air 1
execute if entity @s run item replace entity @s inventory.9 with minecraft:air 1