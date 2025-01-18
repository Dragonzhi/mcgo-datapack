execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]},scores={Points=600..}] run scoreboard players add @s Points 400
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]},scores={Points=600..}] run clear @s tacz:modern_kinetic_gun{GunId:"tacz:p320"}
execute if entity @s[nbt={Inventory:[{id:"tacz:ammo_box",tag:{display:{Lore:['"这是P320的弹药盒"']}}}]},scores={Points=600..}] run clear @s tacz:ammo_box{display:{Lore:['"这是P320的弹药盒"']}}
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:cz75"}}]},scores={Points=600..}] run scoreboard players add @s Points 500
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]},scores={Points=600..}] run clear @s tacz:modern_kinetic_gun{GunId:"tacz:cz75"}
execute if entity @s[nbt={Inventory:[{id:"tacz:ammo_box",tag:{display:{Lore:['"这是CZ75的弹药盒"']}}}]},scores={Points=600..}] run clear @s tacz:ammo_box{display:{Lore:['"这是CZ75的弹药盒"']}}
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"suffuse:python"}}]},scores={Points=600..}] run scoreboard players add @s Points 600
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]},scores={Points=600..}] run clear @s tacz:modern_kinetic_gun{GunId:"suffuse:python"}
execute if entity @s[nbt={Inventory:[{id:"tacz:ammo_box",tag:{display:{Lore:['"这是左轮手枪的弹药盒"']}}}]},scores={Points=600..}] run clear @s tacz:ammo_box{display:{Lore:['"这是左轮手枪的弹药盒"']}}
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:deagle"}}]},scores={Points=600..}] run scoreboard players add @s Points 700
execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:"tacz:p320"}}]},scores={Points=600..}] run clear @s tacz:modern_kinetic_gun{GunId:"tacz:deagle"}
execute if entity @s[nbt={Inventory:[{id:"tacz:ammo_box",tag:{display:{Lore:['"这是沙漠之鹰的弹药盒"']}}}]},scores={Points=600..}] run clear @s tacz:ammo_box{display:{Lore:['"这是沙漠之鹰的弹药盒"']}}

execute as @s[scores={Points=600..}] run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"左轮手枪 ","color":"yellow"},{"text":"-$600","color":"red"}]
execute as @s[scores={Points=600..}] run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"suffuse:python",GunCurrentAmmoCount:13} 1
execute as @s[scores={Points=600..}] run item replace entity @s inventory.18 with tacz:ammo_box{Level:0,AmmoCount:12,AmmoId:"tacz:50ae",display:{Lore:['"这是左轮手枪的弹药盒"']}} 1
execute as @s[scores={Points=600..}] run scoreboard players remove @s Points 600

