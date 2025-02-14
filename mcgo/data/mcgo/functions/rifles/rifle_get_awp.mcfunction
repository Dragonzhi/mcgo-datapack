function mcgo:game/get_guns/mainweapon_isvalid

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_name GunName set value "AWP"

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_awp"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AWPSkin=1}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_awp_fade"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AWPSkin=2}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_awp_dragon_lore"

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_price GunPrice set value 4750
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_mode GunMode set value "SEMI"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_ammo GunAmmo set value 5
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_type GunType set value 2
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_used GunUsed set value 0
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmag GunAttMag set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmuz GunAttMuz set value {}

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsco GunAttSco set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:awp_scope"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AWPSkin=1}] run data modify storage mcs:gun_attsco GunAttSco set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:awp_scope_black"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AWPSkin=2}] run data modify storage mcs:gun_attsco GunAttSco set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:awp_scope_dragon_lore"}}

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsto GunAttSto set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attri GunAttri set value [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:-0.000d,UUID:[I;-1396647189,-179877183,-1931787460,-1731335846]}]
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_name AmmoName set value "AWP"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_id AmmoId set value "tacz:338"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_type AmmoType set value 2
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_count AmmoCount set value 30
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_lore Ammolore set value ['"这是AWP的弹药箱"']

execute if entity @s[scores={Allowance=10}] run execute if score @s GetGunForFree matches 0 run function mcgo:game/get_guns/money_isvalid
execute if entity @s[scores={Allowance=10}] run scoreboard players set @s mcs 2
#将@s mcs设置为2，进入get_guns.mcfunctions时执行对应指令
execute if entity @s[scores={Allowance=10}] run function mcgo:game/get_guns/get_guns

execute if score DeathMatch GameProcess matches 1 unless score @s GetGunRapidly matches 1 run scoreboard players set @s DeathMatchChosenMainWeapon 13