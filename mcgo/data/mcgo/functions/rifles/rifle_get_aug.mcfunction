execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"mcs2:cs_m4a1s"}}]},scores={Points=3300..}] run scoreboard players add @s Points 2900
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:m4a1"}}]},scores={Points=3300..}] run scoreboard players add @s Points 3000
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:aug"}}]},scores={Points=3300..}] run scoreboard players add @s Points 3300

execute as @s[scores={Points=3300..}] run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{GunId:"tacz:aug", HasBulletInBarrel:1b, GunFireMode:"AUTO", GunCurrentAmmoCount:30} 1
execute as @s[scores={Points=3300..}] run item replace entity @s inventory.9 with tacz:ammo_box{Level:0,AmmoCount:90,AmmoId:"tacz:556x45",display:{Lore:['"这是AUG的弹药盒"']}} 1
execute as @s[scores={Points=3300..}] run scoreboard players remove @s Points 3300
execute as @s[scores={Points=3300..}] run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"AUG ","color":"yellow"},{"text":"-$3300","color":"red"}]

give @a tacz:modern_kinetic_gun{GunId:"tacz:aug", HasBulletInBarrel:1b, GunFireMode:"AUTO", GunCurrentAmmoCount:30}