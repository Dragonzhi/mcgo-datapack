function mcgo:game/get_guns/pistol_isvalid

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_name GunName set value "格洛克"

execute if entity @s[scores={Allowance=10}] if entity @s[scores={GlockSkin=0}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_glock"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={GlockSkin=1}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_glock_candy_apple"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={GlockSkin=2}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_glock_dragon_tattoo"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={GlockSkin=3}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_glock_reactor"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={GlockSkin=4}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_glock_moonrise"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={GlockSkin=5}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_glock_bunsen_burner"
execute if entity @s[scores={Allowance=10}] if entity @s[scores={GlockSkin=6}] run data modify storage mcs:gun_id GunId set value "mcs2:cs_glock_high_beam"

execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_price GunPrice set value 200
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_mode GunMode set value "SEMI"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_ammo GunAmmo set value 20
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_type GunType set value 1
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_used GunUsed set value 0
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmag GunAttMag set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attmuz GunAttMuz set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attsco GunAttSco set value {}
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:gun_attri GunAttri set value [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:-0.000d,UUID:[I;-1396647189,-179877183,-1931787460,-1731335846]}]
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_name AmmoName set value "Glock"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_id AmmoId set value "tacz:9mm"
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_type AmmoType set value 1
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_count AmmoCount set value 120
execute if entity @s[scores={Allowance=10}] run data modify storage mcs:ammo_lore Ammolore set value ['"这是格洛克的弹药箱"']

execute if entity @s[scores={Allowance=10}] run execute if score @s GetGunForFree matches 0 run function mcgo:game/get_guns/pistol_isinitial
#检测手枪格手枪状态，若为空且背包没有手枪，则可以购买，反之，此时Allowance为0
execute if entity @s[scores={Allowance=10}] run execute if score @s GetGunForFree matches 0 run function mcgo:game/get_guns/money_isvalid
execute if entity @s[scores={Allowance=10}] run scoreboard players set @s mcs 1
#将@s mcs设置为1，进入get_guns.mcfunctions时执行对应指令
execute if entity @s[scores={Allowance=10}] run function mcgo:game/get_guns/get_guns


