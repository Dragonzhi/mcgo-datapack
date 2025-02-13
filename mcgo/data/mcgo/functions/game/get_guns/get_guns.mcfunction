#购买武器时执行

# 在玩家脚下召唤盔甲架
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_change"],Invisible:1b}
# 将玩家物品复制到盔甲架
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @s weapon.mainhand with tacz:modern_kinetic_gun{GunCurrentAmmoCount:0,GunFireMode:"SEMI",GunId:"tacz:glock_17",GunName:"格洛克",GunType:1,GunUsed:0,GunPrice:200,HasBulletInBarrel:1b} 1
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunName set from storage mcs:gun_name GunName
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunId set from storage mcs:gun_id GunId
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunPrice set from storage mcs:gun_price GunPrice
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunFireMode set from storage mcs:gun_mode GunMode
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunCurrentAmmoCount set from storage mcs:gun_ammo GunAmmo
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunType set from storage mcs:gun_type GunType
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunUsed set from storage mcs:gun_used GunUsed
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AttachmentEXTENDED_MAG set from storage mcs:gun_attmag GunAttMag
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AttachmentMUZZLE set from storage mcs:gun_attmuz GunAttMuz
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AttachmentSCOPE set from storage mcs:gun_attsco GunAttSco
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AttachmentSTOCK set from storage mcs:gun_attsto GunAttSto
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AttributeModifiers set from storage mcs:gun_attri GunAttri
execute if score @s mcs matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p[distance=..1] hotbar.1 from entity @s weapon.mainhand
execute if score @s mcs matches 2 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p[distance=..1] hotbar.0 from entity @s weapon.mainhand

execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @s weapon.mainhand with tacz:ammo_box{Level:1,AmmoCount:0,AmmoId:"tacz:9mm",display:{Lore:['"这是格洛克的弹药盒"']}} 1
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AmmoName set from storage mcs:ammo_name AmmoName
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AmmoId set from storage mcs:ammo_id AmmoId
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AmmoType set from storage mcs:ammo_type AmmoType
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.AmmoCount set from storage mcs:ammo_count AmmoCount
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.display.Lore set from storage mcs:ammo_lore Ammolore
execute if score @s mcs matches 1 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p[distance=..1] inventory.18 from entity @s weapon.mainhand
execute if score @s mcs matches 2 run execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p[distance=..1] inventory.19 from entity @s weapon.mainhand

# 杀死盔甲架
execute as @e[type=minecraft:armor_stand,tag=iu_change] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=iu_change] at @s run kill @s
execute as @e[type=minecraft:armor_stand,tag=iu_change] at @s run kill @s

playsound minecraft:item.armor.equip_elytra player @s ~ ~ ~ 100 1.4 1
#播放音效

#若为死斗模式，则设置玩家的GetGunRapidly为1
execute if score DeathMatch GameProcess matches 1 run scoreboard players set @s GetGunRapidly 0


#scoreboard players set @s Allowance 0
#重置条件

