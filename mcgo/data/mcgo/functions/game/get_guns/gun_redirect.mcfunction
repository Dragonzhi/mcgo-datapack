#每局开始时执行，整理玩家背包中的手枪和子弹

scoreboard players set @s GetGunForFree 1
#可以免费获取枪械

##########手枪
function mcgo:game/get_guns/search_for_pistol
execute if score @s mcs matches 0 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if entity @s[team=CT] run function mcgo:pistols/pistol_get_usp
    execute if score @s Allowance matches 1 run execute if entity @s[team=T] run function mcgo:pistols/pistol_get_glock
    execute if score @s Allowance matches 10 run execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_add"],Invisible:1b}
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p[distance=..1] hotbar.1
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set value 1
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @p[distance=..1] hotbar.1 from entity @s weapon.mainhand
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add] at @s run kill @s
scoreboard players set @s Allowance 0
    

execute if score @s mcs matches 1 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"CZ75"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:1}
        execute if score @s Allowance matches 2 run function mcgo:pistols/pistol_get_cz75

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"沙漠之鹰"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:1}
        execute if score @s Allowance matches 2 run function mcgo:pistols/pistol_get_deagle

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"格洛克"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:1}
        execute if score @s Allowance matches 2 run function mcgo:pistols/pistol_get_glock

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"P320"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:1}
        execute if score @s Allowance matches 2 run function mcgo:pistols/pistol_get_p320

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"R8"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:1}
        execute if score @s Allowance matches 2 run function mcgo:pistols/pistol_get_r8

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"USP-S"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:1}
        execute if score @s Allowance matches 2 run function mcgo:pistols/pistol_get_usp
    execute if score @s Allowance matches 10 run execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_add"],Invisible:1b}
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p[distance=..1] hotbar.1
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set value 1
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @p[distance=..1] hotbar.1 from entity @s weapon.mainhand
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add] at @s run kill @s
scoreboard players set @s Allowance 0

##########主武器
function mcgo:game/get_guns/search_for_mainweapon
execute if score @s mcs matches 0 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s inventory.19 with air
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if score @s mcs matches 1 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"M249"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:heavy_weapons/heavyweapon_get_m249

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"M870"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:heavy_weapons/heavyweapon_get_m870

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"内格夫"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:heavy_weapons/heavyweapon_get_neglv

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"Saiga-12"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:heavy_weapons/heavyweapon_get_sasg12

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"加利尔ACE-22"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:rifles/rifle_get_gali
    
    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"AK47"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:rifles/rifle_get_ak47

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"AUG"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:rifles/rifle_get_aug
    
    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"SSG-08"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:rifles/rifle_get_ssg

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"AWP"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:rifles/rifle_get_awp

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"M4A1-S"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:rifles/rifle_get_m4a1_s

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"SCAR-H"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:rifles/rifle_get_scar_h

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"MP5ST"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:submachine/submachine_get_mp5st

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"P90"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:submachine/submachine_get_p90

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"PP19"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:submachine/submachine_get_pp19

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"UMP45"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:submachine/submachine_get_ump45

    execute if score @s Allowance matches 1 run execute if entity @s[nbt={Inventory:[{tag:{GunName:"UZI"}}]}] run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run clear @s tacz:modern_kinetic_gun{GunType:2}
        execute if score @s Allowance matches 2 run function mcgo:submachine/submachine_get_uzi

    execute if score @s Allowance matches 10 run execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_add"],Invisible:1b}
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p[distance=..1] hotbar.0
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set value 1
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @p[distance=..1] hotbar.0 from entity @s weapon.mainhand
    execute if score @s Allowance matches 10 run execute as @e[type=minecraft:armor_stand,tag=iu_add] at @s run kill @s
scoreboard players set @s Allowance 0

##########道具
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_add"],Invisible:1b}
execute if entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:3b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p[distance=..1] hotbar.3
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set value 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @p[distance=..1] hotbar.3 from entity @s weapon.mainhand
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:4b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p[distance=..1] hotbar.4
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set value 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @p[distance=..1] hotbar.4 from entity @s weapon.mainhand
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:5b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p[distance=..1] hotbar.5
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set value 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @p[distance=..1] hotbar.5 from entity @s weapon.mainhand
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:6b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p[distance=..1] hotbar.6
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set value 1
    execute if score @s Allowance matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_add,limit=1] at @s run item replace entity @p[distance=..1] hotbar.6 from entity @s weapon.mainhand
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute as @e[type=minecraft:armor_stand,tag=iu_add] at @s run kill @s

##########拆弹器
execute as @a[team=CT] run execute unless entity @s[nbt={Inventory:[{id:"block_bettle:qian_zi"}]}] run execute unless entity @s[nbt={Inventory:[{id:"block_bettle:lei_qian"}]}] run item replace entity @s hotbar.8 with block_bettle:qian_zi{GunType:5,GunUsed:1}
execute as @a[team=CT] if entity @s[nbt={Inventory:[{id:"block_bettle:lei_qian"}]}] unless entity @s[nbt={Inventory:[{id:"block_bettle:qian_zi"}]}] run scoreboard players set @s Allowance 1
execute as @a[team=CT] run execute if score @s Allowance matches 1 run clear @s block_bettle:lei_qian
execute as @a[team=CT] run execute if score @s Allowance matches 1 run item replace entity @s hotbar.8 with block_bettle:lei_qian{GunType:5,GunUsed:1}
execute as @a[team=CT] run execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute as @a[team=CT,nbt={Inventory:[{id:"block_bettle:qian_zi"}]}] unless entity @s[nbt={Inventory:[{id:"block_bettle:lei_qian"}]}] run scoreboard players set @s Allowance 1
execute as @a[team=CT] run execute if score @s Allowance matches 1 run clear @s block_bettle:qian_zi
execute as @a[team=CT] run execute if score @s Allowance matches 1 run item replace entity @s hotbar.8 with block_bettle:qian_zi{GunType:5,GunUsed:1}
execute as @a[team=CT] run execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute as @a[team=CT,nbt={Inventory:[{id:"block_bettle:qian_zi"}]}] if entity @s[nbt={Inventory:[{id:"block_bettle:lei_qian"}]}] run scoreboard players set @s Allowance 1
execute as @a[team=CT] run execute if score @s Allowance matches 1 run clear @s block_bettle:lei_qian
execute as @a[team=CT] run execute if score @s Allowance matches 1 run clear @s block_bettle:qian_zi
execute as @a[team=CT] run execute if score @s Allowance matches 1 run item replace entity @s hotbar.8 with block_bettle:lei_qian{GunType:5,GunUsed:1}
execute as @a[team=CT] run execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

##########护甲
execute as @a run execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_chestplate"}]}] run execute if entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet"}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s armor.head with minecraft:iron_chestplate{GunUsed:1}
    execute if score @s Allowance matches 1 run item replace entity @s armor.head with minecraft:iron_helmet{GunUsed:1}
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute as @a run execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_chestplate"}]}] run execute if entity @s[nbt={Inventory:[{id:"minecraft:netherite_helmet"}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s armor.head with minecraft:netherite_chestplate{GunUsed:1}
    execute if score @s Allowance matches 1 run item replace entity @s armor.head with minecraft:netherite_helmet{GunUsed:1}
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

scoreboard players set @s GetGunForFree 0