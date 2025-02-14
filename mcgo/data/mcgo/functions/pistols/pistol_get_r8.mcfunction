function mcgo:game/get_guns/pistol_isvalid

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_name GunName set value "R8"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_id GunId set value "cib:r8"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_price GunPrice set value 600
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_mode GunMode set value "SEMI"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_ammo GunAmmo set value 8
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_type GunType set value 1
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_used GunUsed set value 0
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmag GunAttMag set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmuz GunAttMuz set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsco GunAttSco set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsto GunAttSto set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attri GunAttri set value [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:-0.000d,UUID:[I;-1396647189,-179877183,-1931787460,-1731335846]}]
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_name AmmoName set value "R8"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_id AmmoId set value "tacz:357mag"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_type AmmoType set value 1
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_count AmmoCount set value 8
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_lore Ammolore set value ['"这是R8的弹药箱"']

execute if entity @s[scores={Allowance=10}] run execute if score @s GetGunForFree matches 0 run function mcgo:game/get_guns/money_isvalid
execute if entity @s[scores={Allowance=10}] run scoreboard players set @s mcs 1
#将@s mcs设置为1，进入get_guns.mcfunctions时执行对应指令
execute if entity @s[scores={Allowance=10}] run function mcgo:game/get_guns/get_guns

execute if score DeathMatch GameProcess matches 1 unless score @s GetGunRapidly matches 1 run scoreboard players set @s DeathMatchChosenPistol 7

