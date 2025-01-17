execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:cz75"}}]},scores={Points=500..}] run scoreboard players add @s Points 500
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:deagle"}}]},scores={Points=500..}] run scoreboard players add @s Points 700
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"suffuse:python"}}]},scores={Points=500..}] run scoreboard players add @s Points 600

execute as @s[scores={Points=500..}] run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{HasBulletInBarrel:1,GunFireMode:"AUTO",GunId:"tacz:cz75",GunCurrentAmmoCount:16} 1
execute as @s[scores={Points=500..}] run item replace entity @s inventory.18 with tacz:ammo_box{Level:0,AmmoCount:16,AmmoId:"tacz:9mm",display:{Lore:['"这是CZ75的弹药盒"']}} 1
execute as @s[scores={Points=500..}] run scoreboard players remove @s Points 500
execute as @s[scores={Points=500..}] run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"CZ75 ","color":"yellow"},{"text":"-$500","color":"red"}]
