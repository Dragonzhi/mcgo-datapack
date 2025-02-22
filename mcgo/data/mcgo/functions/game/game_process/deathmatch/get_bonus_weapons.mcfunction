execute if score BonusWeaponsSeed DeathMatchSeed matches 0 run tellraw @s [{"text":"当前并没有奖励武器！","color":"red"}]

scoreboard players set @s GetGunRapidly 1

# === 手枪类 === 
execute if score BonusWeaponsSeed DeathMatchSeed matches 1 run function mcgo:pistols/pistol_get_usp
execute if score BonusWeaponsSeed DeathMatchSeed matches 2 run function mcgo:pistols/pistol_get_glock
execute if score BonusWeaponsSeed DeathMatchSeed matches 3 run function mcgo:pistols/pistol_get_cz75
execute if score BonusWeaponsSeed DeathMatchSeed matches 4 run function mcgo:pistols/pistol_get_tec9
execute if score BonusWeaponsSeed DeathMatchSeed matches 5 run function mcgo:pistols/pistol_get_fn57
execute if score BonusWeaponsSeed DeathMatchSeed matches 6 run function mcgo:pistols/pistol_get_deagle
execute if score BonusWeaponsSeed DeathMatchSeed matches 7 run function mcgo:pistols/pistol_get_r8
execute if score BonusWeaponsSeed DeathMatchSeed matches 8 run function mcgo:pistols/pistol_get_p250
 
# === 步枪类 === 
execute if score BonusWeaponsSeed DeathMatchSeed matches 11 run function mcgo:rifles/rifle_get_ak47
execute if score BonusWeaponsSeed DeathMatchSeed matches 12 run function mcgo:rifles/rifle_get_aug
execute if score BonusWeaponsSeed DeathMatchSeed matches 13 run function mcgo:rifles/rifle_get_awp
execute if score BonusWeaponsSeed DeathMatchSeed matches 14 run function mcgo:rifles/rifle_get_gali
execute if score BonusWeaponsSeed DeathMatchSeed matches 15 run function mcgo:rifles/rifle_get_m4a1_s
execute if score BonusWeaponsSeed DeathMatchSeed matches 16 run function mcgo:rifles/rifle_get_scar_h
execute if score BonusWeaponsSeed DeathMatchSeed matches 17 run function mcgo:rifles/rifle_get_ssg
execute if score BonusWeaponsSeed DeathMatchSeed matches 18 run function mcgo:rifles/rifle_get_famas
execute if score BonusWeaponsSeed DeathMatchSeed matches 19 run function mcgo:rifles/rifle_get_sg553
 
# === 冲锋枪类 === 
execute if score BonusWeaponsSeed DeathMatchSeed matches 21 run function mcgo:submachine/submachine_get_mp9
execute if score BonusWeaponsSeed DeathMatchSeed matches 22 run function mcgo:submachine/submachine_get_p90
execute if score BonusWeaponsSeed DeathMatchSeed matches 23 run function mcgo:submachine/submachine_get_pp19
execute if score BonusWeaponsSeed DeathMatchSeed matches 24 run function mcgo:submachine/submachine_get_mp7
execute if score BonusWeaponsSeed DeathMatchSeed matches 25 run function mcgo:submachine/submachine_get_ump45
execute if score BonusWeaponsSeed DeathMatchSeed matches 26 run function mcgo:submachine/submachine_get_mac10
execute if score BonusWeaponsSeed DeathMatchSeed matches 27 run function mcgo:submachine/submachine_get_mp5sd
 
# === 重型武器类 === 
execute if score BonusWeaponsSeed DeathMatchSeed matches 31 run function mcgo:heavy_weapons/heavyweapon_get_m249
execute if score BonusWeaponsSeed DeathMatchSeed matches 32 run function mcgo:heavy_weapons/heavyweapon_get_m870
execute if score BonusWeaponsSeed DeathMatchSeed matches 33 run function mcgo:heavy_weapons/heavyweapon_get_neglv
execute if score BonusWeaponsSeed DeathMatchSeed matches 34 run function mcgo:heavy_weapons/heavyweapon_get_m1014

execute if score BonusWeaponsSeed DeathMatchSeed matches 1.. run tellraw @s [{"text":"快速获取了武器 ","color":"white"},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"green","bold":true}]

#为防止交叉执行指令可能出现的bug，将GetGunRapidly设为0放在get_guns.mcfunction中