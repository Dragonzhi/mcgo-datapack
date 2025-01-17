execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"mcs2:cs_ak"}}]},scores={Points=2700..}] run scoreboard players add @s Points 2700

execute as @s[scores={Points=2700..}] run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{GunId:"mcs2:cs_ak", HasBulletInBarrel:1b, GunFireMode:"AUTO", GunCurrentAmmoCount:30} 1
execute as @s[scores={Points=2700..}] run item replace entity @s inventory.9 with tacz:ammo_box{Level:0,AmmoCount:90,AmmoId:"tacz:762x39",display:{Lore:['"这是AK47的弹药盒"']}} 1
execute as @s[scores={Points=2700..}] run scoreboard players remove @s Points 2700
execute as @s[scores={Points=2700..}] run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"AK47 ","color":"yellow"},{"text":"-$2700","color":"red"}]
