function mcgo:game/get_guns/mainweapon_isvalid

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_name GunName set value "AK47"

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_ak"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AK47Skin=1}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_ak_elite_build"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AK47Skin=2}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_ak_vulcan"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AK47Skin=3}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_ak_green_laminate"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AK47Skin=4}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_ak_asiimov"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AK47Skin=5}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_ak_abyssal_apparition"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={AK47Skin=6}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_ak_fire_serpent"

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_price GunPrice set value 2700
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_mode GunMode set value "AUTO"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_ammo GunAmmo set value 30
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_type GunType set value 2
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_used GunUsed set value 0
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmag GunAttMag set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmuz GunAttMuz set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsco GunAttSco set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attri GunAttri set value [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:-0.000d,UUID:[I;-1396647189,-179877183,-1931787460,-1731335846]}]
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_name AmmoName set value "AK47"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_id AmmoId set value "tacz:762x39"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_type AmmoType set value 2
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_count AmmoCount set value 90
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_lore Ammolore set value ['"这是AK47的弹药箱"']

execute if entity @s[scores={Allowance=10}] run execute if score @s GetGunForFree matches 0 run function mcgo:game/get_guns/money_isvalid
execute if entity @s[scores={Allowance=10}] run scoreboard players set @s mcs 2
#将@s mcs设置为2，进入get_guns.mcfunctions时执行对应指令
execute if entity @s[scores={Allowance=10}] run function mcgo:game/get_guns/get_guns

