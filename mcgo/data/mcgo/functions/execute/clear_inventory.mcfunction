#每局结束时执行，将背包内无关物品清除

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
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{AmmoType:1},Slot:27b}]}] run item replace entity @s inventory.18 with air
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{AmmoType:2},Slot:28b}]}] run item replace entity @s inventory.19 with air
item replace entity @a[team=CT] inventory.20 with air
item replace entity @a[team=CT] inventory.21 with air
item replace entity @a[team=CT] inventory.22 with air
item replace entity @a[team=CT] inventory.23 with air
item replace entity @a[team=CT] inventory.24 with air
item replace entity @a[team=CT] inventory.25 with air
item replace entity @a[team=CT] inventory.26 with air
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run item replace entity @s hotbar.0 with air
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{GunType:1},Slot:1b}]}] run item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{GunType:6},Slot:3b}]}] run item replace entity @s hotbar.3 with air
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{GunType:6},Slot:4b}]}] run item replace entity @s hotbar.4 with air
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{GunType:6},Slot:5b}]}] run item replace entity @s hotbar.5 with air
execute as @a run execute unless entity @s[team=CT,nbt={Inventory:[{tag:{GunType:6},Slot:6b}]}] run item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air