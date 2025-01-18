execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:m4a1"}}]}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"text":"M4A4 ","color":"yellow"},{"text":"+$3000","color":"green"}]
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:m4a1"}}]}] run scoreboard players add @s Points 3000
execute if entity @s run item replace entity @s hotbar.0 with minecraft:air 1
execute if entity @s run item replace entity @s inventory.9 with minecraft:air 1