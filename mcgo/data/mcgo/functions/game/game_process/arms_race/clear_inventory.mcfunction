#CT
item replace entity @a[team=CT] inventory.0 with air
item replace entity @a[team=CT] inventory.1 with air
item replace entity @a[team=CT] inventory.2 with air
item replace entity @a[team=CT] inventory.3 with air
item replace entity @a[team=CT] inventory.4 with air
item replace entity @a[team=CT] inventory.5 with air
item replace entity @a[team=CT] inventory.6 with air
item replace entity @a[team=CT] inventory.7 with air
item replace entity @a[team=CT] inventory.8 with air
item replace entity @a[team=CT] inventory.9 with air
item replace entity @a[team=CT] inventory.10 with air
item replace entity @a[team=CT] inventory.11 with air
item replace entity @a[team=CT] inventory.12 with air
item replace entity @a[team=CT] inventory.13 with air
item replace entity @a[team=CT] inventory.14 with air
item replace entity @a[team=CT] inventory.15 with air
item replace entity @a[team=CT] inventory.16 with air
item replace entity @a[team=CT] inventory.17 with air
execute as @a[team=CT] unless entity @s[nbt={Inventory:[{Slot:27b,id:"tacz:ammo_box",tag:{AllTypeCreative:1b}}]}] run item replace entity @s inventory.18 with tacz:ammo_box{AllTypeCreative:1b} 1
item replace entity @a[team=CT] inventory.19 with air
item replace entity @a[team=CT] inventory.20 with air
item replace entity @a[team=CT] inventory.21 with air
item replace entity @a[team=CT] inventory.22 with air
item replace entity @a[team=CT] inventory.23 with air
item replace entity @a[team=CT] inventory.24 with air
item replace entity @a[team=CT] inventory.25 with air
item replace entity @a[team=CT] inventory.26 with air

execute as @a[team=CT] unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunType:2}}]}] if score @s ArmsRaceProcess matches ..11 run item replace entity @s hotbar.0 with air
execute as @a[team=CT] if score @s ArmsRaceProcess matches 12.. run item replace entity @s hotbar.0 with air

execute as @a[team=CT] unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunType:1}}]}] if score @s ArmsRaceProcess matches 12.. run item replace entity @s hotbar.1 with air
execute as @a[team=CT] if score @s ArmsRaceProcess matches ..11 run item replace entity @s hotbar.1 with air

execute as @a[team=CT] unless entity @s[nbt={Inventory:[{Slot:2b,id:"tacz:modern_kinetic_gun",tag:{GunType:3}}]}] run function mcgo:game/get_guns/get_knives

execute as @a[team=CT] unless entity @s[nbt={Inventory:[{id:"block_bettle:dian_ji_qiang",Slot:3b}]}] run item replace entity @a[team=CT] hotbar.3 with air

item replace entity @a[team=CT] hotbar.4 with air
item replace entity @a[team=CT] hotbar.5 with air
item replace entity @a[team=CT] hotbar.6 with air
item replace entity @a[team=CT] hotbar.7 with air
item replace entity @a[team=CT] hotbar.8 with air

#T
item replace entity @a[team=T] inventory.0 with air
item replace entity @a[team=T] inventory.1 with air
item replace entity @a[team=T] inventory.2 with air
item replace entity @a[team=T] inventory.3 with air
item replace entity @a[team=T] inventory.4 with air
item replace entity @a[team=T] inventory.5 with air
item replace entity @a[team=T] inventory.6 with air
item replace entity @a[team=T] inventory.7 with air
item replace entity @a[team=T] inventory.8 with air
item replace entity @a[team=T] inventory.9 with air
item replace entity @a[team=T] inventory.10 with air
item replace entity @a[team=T] inventory.11 with air
item replace entity @a[team=T] inventory.12 with air
item replace entity @a[team=T] inventory.13 with air
item replace entity @a[team=T] inventory.14 with air
item replace entity @a[team=T] inventory.15 with air
item replace entity @a[team=T] inventory.16 with air
item replace entity @a[team=T] inventory.17 with air
execute as @a[team=T] unless entity @s[nbt={Inventory:[{Slot:27b,id:"tacz:ammo_box",tag:{AllTypeCreative:1b}}]}] run item replace entity @s inventory.18 with tacz:ammo_box{AllTypeCreative:1b} 1
item replace entity @a[team=T] inventory.19 with air
item replace entity @a[team=T] inventory.20 with air
item replace entity @a[team=T] inventory.21 with air
item replace entity @a[team=T] inventory.22 with air
item replace entity @a[team=T] inventory.23 with air
item replace entity @a[team=T] inventory.24 with air
item replace entity @a[team=T] inventory.25 with air
item replace entity @a[team=T] inventory.26 with air

execute as @a[team=T] unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunType:2}}]}] if score @s ArmsRaceProcess matches ..11 run item replace entity @s hotbar.0 with air
execute as @a[team=T] if score @s ArmsRaceProcess matches 12.. run item replace entity @s hotbar.0 with air

execute as @a[team=T] unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunType:1}}]}] if score @s ArmsRaceProcess matches 12.. run item replace entity @s hotbar.1 with air
execute as @a[team=T] if score @s ArmsRaceProcess matches ..11 run item replace entity @s hotbar.1 with air

execute as @a[team=T] unless entity @s[nbt={Inventory:[{Slot:2b,id:"tacz:modern_kinetic_gun",tag:{GunType:3}}]}] run function mcgo:game/get_guns/get_knives

execute as @a[team=CT] unless entity @s[nbt={Inventory:[{id:"block_bettle:dian_ji_qiang",Slot:3b}]}] run item replace entity @a[team=CT] hotbar.3 with air

item replace entity @a[team=T] hotbar.4 with air
item replace entity @a[team=T] hotbar.5 with air
item replace entity @a[team=T] hotbar.6 with air
item replace entity @a[team=T] hotbar.7 with air
item replace entity @a[team=T] hotbar.8 with air