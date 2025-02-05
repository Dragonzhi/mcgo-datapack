
#判断游戏进度
#如果击杀数达到2，则升级，过程中将玩家的Kills和PlayKill归零
execute if entity @a[scores={Kills=2..}] run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={Kills=2..}] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 100 1 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={Kills=2..}] run tellraw @s [{"text":"武器升级！！！！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={Kills=2..}] run scoreboard players add @s ArmsRaceProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={Kills=2..}] run scoreboard players set @s PlayKill 0
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={Kills=2..}] run scoreboard players set @s Kills 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

#如果手持刀击杀一名玩家则升级，过程中将玩家的PlayKill和Kills归零
execute if entity @a[scores={PlayKill=1..},nbt={SelectedItem:{id:"tacz:modern_kinetic_gun",tag:{GunId:"test:m9"}}}] run scoreboard players add Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{id:"tacz:modern_kinetic_gun",tag:{GunId:"test:m9"}}}] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 100 1 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{id:"tacz:modern_kinetic_gun",tag:{GunId:"test:m9"}}}] run tellraw @s [{"text":"武器升级！！！！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{id:"tacz:modern_kinetic_gun",tag:{GunId:"test:m9"}}}] run scoreboard players add @s ArmsRaceProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{id:"tacz:modern_kinetic_gun",tag:{GunId:"test:m9"}}}] run scoreboard players set @s Kills 0
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{id:"tacz:modern_kinetic_gun",tag:{GunId:"test:m9"}}}] run scoreboard players set @s PlayKill 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

#如果使用电击枪击杀一名玩家则升级，过程中将玩家的PlayKill和Kills归零
execute if entity @a[scores={PlayKill=1..},nbt={SelectedItem:{tag:{Guntype:3}}}] run scoreboard players add Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{tag:{Guntype:7}}}] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 100 1 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{tag:{Guntype:7}}}] run tellraw @s [{"text":"武器升级！！！！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{tag:{Guntype:7}}}] run scoreboard players add @s ArmsRaceProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{tag:{Guntype:7}}}] run scoreboard players set @s Kills 0
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKill=1..},nbt={SelectedItem:{tag:{Guntype:7}}}] run scoreboard players set @s PlayKill 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

#若为普通击杀，则对应玩家的Kills+1，PlayKill归零
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s Kills 1
execute as @a[scores={PlayKill=1..}] run scoreboard players set @s PlayKill 0

# 每一刻增加玩家的种子数值
execute as @a run scoreboard players add @s ArmsRaceSeed 1
# 设置一个取余数
scoreboard players set 5 ArmsRaceSeed 5

execute if entity @a[scores={ArmsRaceProcess=5}] if score #broadcast5Scores ArmsRaceProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={ArmsRaceProcess=5}] run tellraw @a [{"selector":"@s"},{"text":"首次达到5级！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set #broadcast5Scores ArmsRaceProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if entity @a[scores={ArmsRaceProcess=10}] if score #broadcast10Scores ArmsRaceProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @a [{"selector":"@a[scores={ArmsRaceProcess=10}]"},{"text":"首次达到10级！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set #broadcast10Scores ArmsRaceProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if entity @a[scores={ArmsRaceProcess=17}] if score #broadcast17Scores ArmsRaceProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @a [{"selector":"@a[scores={ArmsRaceProcess=17}]"},{"text":"首次达到17级！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set #broadcast17Scores ArmsRaceProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0


#给予CT武器
execute as @a[team=CT] if score @s ArmsRaceProcess matches 0 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"SCAR-H"}}]}] run function mcgo:rifles/rifle_get_scar_h

execute as @a[team=CT] if score @s ArmsRaceProcess matches 1 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"AWP"}}]}] run function mcgo:rifles/rifle_get_awp

execute as @a[team=CT] if score @s ArmsRaceProcess matches 2 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"AUG"}}]}] run function mcgo:rifles/rifle_get_aug

execute as @a[team=CT] if score @s ArmsRaceProcess matches 3 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"M4A1-S"}}]}] run function mcgo:rifles/rifle_get_m4a1_s

execute as @a[team=CT] if score @s ArmsRaceProcess matches 4 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"MP5ST"}}]}] run function mcgo:submachine/submachine_get_mp5st

execute as @a[team=CT] if score @s ArmsRaceProcess matches 5 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"P90"}}]}] run function mcgo:submachine/submachine_get_p90

execute as @a[team=CT] if score @s ArmsRaceProcess matches 6 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"PP19"}}]}] run function mcgo:submachine/submachine_get_pp19

execute as @a[team=CT] if score @s ArmsRaceProcess matches 7 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"UMP45"}}]}] run function mcgo:submachine/submachine_get_ump45

execute as @a[team=CT] if score @s ArmsRaceProcess matches 8 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"M249"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_m249

execute as @a[team=CT] if score @s ArmsRaceProcess matches 9 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"内格夫"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_neglv

execute as @a[team=CT] if score @s ArmsRaceProcess matches 10 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"M870"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_m870

execute as @a[team=CT] if score @s ArmsRaceProcess matches 11 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"Saiga-12"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_sasg12

execute as @a[team=CT] if score @s ArmsRaceProcess matches 12 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"沙漠之鹰"}}]}] run function mcgo:pistols/pistol_get_deagle

execute as @a[team=CT] if score @s ArmsRaceProcess matches 13 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"R8"}}]}] run function mcgo:pistols/pistol_get_r8

execute as @a[team=CT] if score @s ArmsRaceProcess matches 14 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"CZ75"}}]}] run function mcgo:pistols/pistol_get_cz75

execute as @a[team=CT] if score @s ArmsRaceProcess matches 15 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"P250"}}]}] run function mcgo:pistols/pistol_get_p250

execute as @a[team=CT] if score @s ArmsRaceProcess matches 16 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"USP-S"}}]}] run function mcgo:pistols/pistol_get_usp

execute as @a[team=CT] if score @s ArmsRaceProcess matches 17.. run item replace entity @s hotbar.0 with air
execute as @a[team=CT] if score @s ArmsRaceProcess matches 17.. run item replace entity @s hotbar.1 with air

#给予CT武器
execute as @a[team=T] if score @s ArmsRaceProcess matches 0 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"SCAR-H"}}]}] run function mcgo:rifles/rifle_get_scar_h

execute as @a[team=T] if score @s ArmsRaceProcess matches 1 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"AWP"}}]}] run function mcgo:rifles/rifle_get_awp

execute as @a[team=T] if score @s ArmsRaceProcess matches 2 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"AK47"}}]}] run function mcgo:rifles/rifle_get_ak47

execute as @a[team=T] if score @s ArmsRaceProcess matches 3 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"加利尔ACE-22"}}]}] run function mcgo:rifles/rifle_get_gali

execute as @a[team=T] if score @s ArmsRaceProcess matches 4 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"UZI"}}]}] run function mcgo:submachine/submachine_get_uzi

execute as @a[team=T] if score @s ArmsRaceProcess matches 5 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"P90"}}]}] run function mcgo:submachine/submachine_get_p90

execute as @a[team=T] if score @s ArmsRaceProcess matches 6 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"PP19"}}]}] run function mcgo:submachine/submachine_get_pp19

execute as @a[team=T] if score @s ArmsRaceProcess matches 7 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"UMP45"}}]}] run function mcgo:submachine/submachine_get_ump45

execute as @a[team=T] if score @s ArmsRaceProcess matches 8 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"M249"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_m249

execute as @a[team=T] if score @s ArmsRaceProcess matches 9 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"内格夫"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_neglv

execute as @a[team=T] if score @s ArmsRaceProcess matches 10 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"M870"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_m870

execute as @a[team=T] if score @s ArmsRaceProcess matches 11 unless entity @s[nbt={Inventory:[{Slot:0b,id:"tacz:modern_kinetic_gun",tag:{GunName:"Saiga-12"}}]}] run function mcgo:heavy_weapons/heavyweapon_get_sasg12

execute as @a[team=T] if score @s ArmsRaceProcess matches 12 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"沙漠之鹰"}}]}] run function mcgo:pistols/pistol_get_deagle

execute as @a[team=T] if score @s ArmsRaceProcess matches 13 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"R8"}}]}] run function mcgo:pistols/pistol_get_r8

execute as @a[team=T] if score @s ArmsRaceProcess matches 14 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"CZ75"}}]}] run function mcgo:pistols/pistol_get_cz75

execute as @a[team=T] if score @s ArmsRaceProcess matches 15 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"P250"}}]}] run function mcgo:pistols/pistol_get_p250

execute as @a[team=T] if score @s ArmsRaceProcess matches 16 unless entity @s[nbt={Inventory:[{Slot:1b,id:"tacz:modern_kinetic_gun",tag:{GunName:"格洛克"}}]}] run function mcgo:pistols/pistol_get_glock

execute as @a[team=T] if score @s ArmsRaceProcess matches 17.. run item replace entity @s hotbar.0 with air
execute as @a[team=T] if score @s ArmsRaceProcess matches 17.. run item replace entity @s hotbar.1 with air

