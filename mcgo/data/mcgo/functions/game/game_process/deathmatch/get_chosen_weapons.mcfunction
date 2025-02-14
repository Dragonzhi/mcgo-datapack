#在死亡后重生获取手动选择的武器

# === 手枪类 === 
execute if score @s DeathMatchChosenPistol matches 1 run function mcgo:pistols/pistol_get_usp
execute if score @s DeathMatchChosenPistol matches 2 run function mcgo:pistols/pistol_get_glock
execute if score @s DeathMatchChosenPistol matches 3 run function mcgo:pistols/pistol_get_cz75 
execute if score @s DeathMatchChosenPistol matches 4 run function mcgo:pistols/pistol_get_tec9 
execute if score @s DeathMatchChosenPistol matches 5 run function mcgo:pistols/pistol_get_fn57
execute if score @s DeathMatchChosenPistol matches 6 run function mcgo:pistols/pistol_get_deagle 
execute if score @s DeathMatchChosenPistol matches 7 run function mcgo:pistols/pistol_get_r8
execute if score @s DeathMatchChosenPistol matches 8 run function mcgo:pistols/pistol_get_p250
 
# === 步枪类 === 
execute if score @s DeathMatchChosenMainWeapon matches 11 run function mcgo:rifles/rifle_get_ak47
execute if score @s DeathMatchChosenMainWeapon matches 12 run function mcgo:rifles/rifle_get_aug
execute if score @s DeathMatchChosenMainWeapon matches 13 run function mcgo:rifles/rifle_get_awp
execute if score @s DeathMatchChosenMainWeapon matches 14 run function mcgo:rifles/rifle_get_gali
execute if score @s DeathMatchChosenMainWeapon matches 15 run function mcgo:rifles/rifle_get_m4a1_s
execute if score @s DeathMatchChosenMainWeapon matches 16 run function mcgo:rifles/rifle_get_scar_h
execute if score @s DeathMatchChosenMainWeapon matches 17 run function mcgo:rifles/rifle_get_ssg
 
# === 冲锋枪类 === 
execute if score @s DeathMatchChosenMainWeapon matches 21 run function mcgo:submachine/submachine_get_mp9
execute if score @s DeathMatchChosenMainWeapon matches 22 run function mcgo:submachine/submachine_get_p90
execute if score @s DeathMatchChosenMainWeapon matches 23 run function mcgo:submachine/submachine_get_pp19
execute if score @s DeathMatchChosenMainWeapon matches 24 run function mcgo:submachine/submachine_get_mp7
execute if score @s DeathMatchChosenMainWeapon matches 25 run function mcgo:submachine/submachine_get_ump45
execute if score @s DeathMatchChosenMainWeapon matches 26 run function mcgo:submachine/submachine_get_mac10
execute if score @s DeathMatchChosenMainWeapon matches 27 run function mcgo:submachine/submachine_get_mp5sd
 
# === 重型武器类 === 
execute if score @s DeathMatchChosenMainWeapon matches 31 run function mcgo:heavy_weapons/heavyweapon_get_m249
execute if score @s DeathMatchChosenMainWeapon matches 32 run function mcgo:heavy_weapons/heavyweapon_get_m870
execute if score @s DeathMatchChosenMainWeapon matches 33 run function mcgo:heavy_weapons/heavyweapon_get_neglv
execute if score @s DeathMatchChosenMainWeapon matches 34 run function mcgo:heavy_weapons/heavyweapon_get_m1014