execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:aug"}}]}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"text":"AUG ","color":"yellow"},{"text":"+$3300","color":"green"}]
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:aug"}}]}] run scoreboard players add @s Points 3300

execute if entity @s run item replace entity @s hotbar.0 with minecraft:air 1
execute if entity @s run item replace entity @s inventory.9 with minecraft:air 1
