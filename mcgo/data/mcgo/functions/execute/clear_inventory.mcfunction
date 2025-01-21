#每局结束时执行，将背包内无关物品清除

item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
execute as @a run execute unless entity @s[nbt={Inventory:[{tag:{AmmoType:1},Slot:27b}]}] run item replace entity @s inventory.18 with air
execute as @a run execute unless entity @s[nbt={Inventory:[{tag:{AmmoType:2},Slot:28b}]}] run item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run item replace entity @s hotbar.0 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:1},Slot:1b}]}] run item replace entity @s hotbar.1 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:3},Slot:2b}]}] run item replace entity @s hotbar.2 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:3b}]}] run item replace entity @s hotbar.3 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:4b}]}] run item replace entity @s hotbar.4 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:5b}]}] run item replace entity @s hotbar.5 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:6b}]}] run item replace entity @s hotbar.6 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:7},Slot:7b}]}] run item replace entity @s hotbar.6 with air
execute unless entity @s[nbt={Inventory:[{tag:{GunType:5},Slot:8b}]}] run item replace entity @s hotbar.6 with air