execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"text":"P320 ","color":"yellow"},{"text":"+$400","color":"green"}]
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]}] run scoreboard players add @s Points 400
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]}] run clear @s tacz:modern_kinetic_gun{GunId:"tacz:p320"}
execute if entity @s[nbt={Inventory:[{id:"tacz:ammo_box",tag:{display:{Lore:['"这是P320的弹药盒"']}}}]}] run clear @s tacz:ammo_box{display:{Lore:['"这是P320的弹药盒"']}}

execute if entity @s[team=CT] run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"suffuse:tti2011",GunCurrentAmmoCount:13} 1
execute if entity @s[team=T] run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"tacz:glock_17",GunCurrentAmmoCount:18} 1
execute if entity @s[team=CT] run item replace entity @s inventory.18 with tacz:ammo_box{Level:0,AmmoCount:26,AmmoId:"tacz:9mm",display:{Lore:['"这是TTI Pit Viper的弹药盒"']}} 1
execute if entity @s[team=T] run item replace entity @s inventory.18 with tacz:ammo_box{Level:0,AmmoCount:120,AmmoId:"tacz:9mm",display:{Lore:['"这是格洛克的弹药盒"']}} 1
