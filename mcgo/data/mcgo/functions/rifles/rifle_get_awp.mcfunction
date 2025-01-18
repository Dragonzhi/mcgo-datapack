execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"mcs2:cs_awp"}}]},scores={Points=4750..}] run scoreboard players add @s Points 4750

execute as @s[scores={Points=4750..}] run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{GunId:"mcs2:cs_awp", HasBulletInBarrel:1b, GunFireMode:"", GunCurrentAmmoCount:5} 1
execute as @s[scores={Points=4750..}] run item replace entity @s inventory.9 with tacz:ammo_box{Level:0,AmmoCount:30,AmmoId:"tacz:338",display:{Lore:['"这是AWP的弹药盒"']}} 1
execute as @s[scores={Points=4750..}] run scoreboard players remove @s Points 4750
execute as @s[scores={Points=4750..}] run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"AWP ","color":"yellow"},{"text":"-$4750","color":"red"}]
