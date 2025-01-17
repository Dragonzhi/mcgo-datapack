execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:cz75"}}]}] run scoreboard players add @s Points 500
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:deagle"}}]}] run scoreboard players add @s Points 700
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"suffuse:python"}}]}] run scoreboard players add @s Points 600

execute as @s[scores={Points=200..}] run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"suffuse:tti2011",GunCurrentAmmoCount:13} 1
execute as @s[scores={Points=200..}] run item replace entity @s inventory.18 with tacz:ammo_box{Level:0,AmmoCount:26,AmmoId:"tacz:9mm",display:{Lore:['"这是TTI Pit Viper的弹药盒"']}} 1

tellraw @s [{"text":"你已获得 ","color":"white"},{"text":"TTI Pit Viper手枪","color":"yellow"}]
