# 进入函数时视为作为随机一名玩家执行该函数

execute if entity @s[nbt={Inventory:[{tag:{GunName:"USP-S"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 1

execute if entity @s[nbt={Inventory:[{tag:{GunName:"格洛克"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 2

execute if entity @s[nbt={Inventory:[{tag:{GunName:"CZ75"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 3

execute if entity @s[nbt={Inventory:[{tag:{GunName:"Tec-9"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 4

execute if entity @s[nbt={Inventory:[{tag:{GunName:"FN57"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 5

execute if entity @s[nbt={Inventory:[{tag:{GunName:"沙漠之鹰"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 6

execute if entity @s[nbt={Inventory:[{tag:{GunName:"R8"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 7

execute if entity @s[nbt={Inventory:[{tag:{GunName:"P250"},Slot:1b}]}] unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 8
 
execute if entity @s[nbt={Inventory:[{tag:{GunName:"AK47"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 11

execute if entity @s[nbt={Inventory:[{tag:{GunName:"AUG"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 12

execute if entity @s[nbt={Inventory:[{tag:{GunName:"AWP"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 13

execute if entity @s[nbt={Inventory:[{tag:{GunName:"加利尔ACE-22"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 14

execute if entity @s[nbt={Inventory:[{tag:{GunName:"M4A1-S"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 15

execute if entity @s[nbt={Inventory:[{tag:{GunName:"SCAR-H"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 16
 
execute if entity @s[nbt={Inventory:[{tag:{GunName:"SSG-08"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 17

execute if entity @s[nbt={Inventory:[{tag:{GunName:"法玛斯"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 18

execute if entity @s[nbt={Inventory:[{tag:{GunName:"SG-553"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 19
 
execute if entity @s[nbt={Inventory:[{tag:{GunName:"MP9"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 21

execute if entity @s[nbt={Inventory:[{tag:{GunName:"P90"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 22
 
execute if entity @s[nbt={Inventory:[{tag:{GunName:"PP19"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 23

execute if entity @s[nbt={Inventory:[{tag:{GunName:"MP7"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 24

execute if entity @s[nbt={Inventory:[{tag:{GunName:"UMP45"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 25

execute if entity @s[nbt={Inventory:[{tag:{GunName:"Mac-10"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 26

execute if entity @s[nbt={Inventory:[{tag:{GunName:"MP5-SD"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 27

execute if entity @s[nbt={Inventory:[{tag:{GunName:"M249"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 31

execute if entity @s[nbt={Inventory:[{tag:{GunName:"M870"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 32

execute if entity @s[nbt={Inventory:[{tag:{GunName:"内格夫"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 33

execute if entity @s[nbt={Inventory:[{tag:{GunName:"M1014"},Slot:0b}]}] run scoreboard players set BonusWeaponsSeed DeathMatchSeed 34

# 获取该玩家手中武器名称
execute unless entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run data modify storage mcs:gun_name GunName set from entity @s Inventory[{Slot:1b}].tag.GunName
execute if entity @s[nbt={Inventory:[{tag:{GunType:2},Slot:0b}]}] run data modify storage mcs:gun_name GunName set from entity @s Inventory[{Slot:0b}].tag.GunName
# 使用execute语句限制，防止tellraw提前执行
execute if data storage mcs:gun_name GunName run tellraw @a [{"text":"[提示]","color":"yellow"},{"text":"当前奖励武器 : ","color":"white"},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value": "/function mcgo:game/game_process/deathmatch/get_bonus_weapons"},"hoverEvent":{"action":"show_text","contents":"点击快速获得该枪械"}}]

execute if data storage mcs:gun_name GunName run bossbar set mcs:deathmatch_bonus_weapons name [{"text":"死亡竞赛奖励武器 : ","color":"white","bold":false},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"yellow","bold":true}]