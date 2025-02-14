function mcgo:game/get_guns/mainweapon_isvalid

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_name GunName set value "M4A1-S"

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=1}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_emphorosaur_s"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=2}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_blue_phosphor"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=3}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_nitro"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=4}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_atomic_alloy"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=5}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_printstream"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=6}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_chantico_fire"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=7}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_knight"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=8}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_m4a1s_hot_rod"

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_price GunPrice set value 2900
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_mode GunMode set value "AUTO"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_ammo GunAmmo set value 20
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_type GunType set value 2
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_used GunUsed set value 0
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmag GunAttMag set value {}

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=1}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer_emphorosaur_s"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=2}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer_blue_phosphor"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=3}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=4}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer_atomic_alloy"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=5}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer_printstream"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=6}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer_chantico_fire"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=7}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer"}}
execute if entity @s[scores={Allowance=10}] if entity @s[scores={M4A1Skin=8}] run data modify storage mcs:gun_attmuz GunAttMuz set value {Count:1b,id:"tacz:attachment",tag:{AttachmentId:"mcs2:m4a1s_silencer_hot_rod"}}

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsco GunAttSco set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsto GunAttSto set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attri GunAttri set value [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:-0.000d,UUID:[I;-1396647189,-179877183,-1931787460,-1731335846]}]
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_name AmmoName set value "M4A1-S"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_id AmmoId set value "tacz:556x45"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_type AmmoType set value 2
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_count AmmoCount set value 90
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_lore Ammolore set value ['"这是M4A1-S的弹药箱"']

execute if score DeathMatch GameProcess matches 1 unless score @s GetGunRapidly matches 1 run scoreboard players set @s DeathMatchChosenMainWeapon 15

execute if entity @s[scores={Allowance=10}] run execute if score @s GetGunForFree matches 0 run function mcgo:game/get_guns/money_isvalid
execute if entity @s[scores={Allowance=10}] run scoreboard players set @s mcs 2
#将@s mcs设置为2，进入get_guns.mcfunctions时执行对应指令
execute if entity @s[scores={Allowance=10}] run function mcgo:game/get_guns/get_guns



