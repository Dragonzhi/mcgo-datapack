#退回手枪时执行，满足条件则直接退回手枪

# 初始化
data modify storage mcs:gun_name GunName set value 0
data modify storage mcs:gun_price GunPrice set value 0
data modify storage mcs:gun_type GunType set value 0
data modify storage mcs:gun_used GunUsed set value 0
# 赋值
data modify storage mcs:gun_name GunName set from entity @s Inventory[{Slot:1b}].tag.GunName
data modify storage mcs:gun_price GunPrice set from entity @s Inventory[{Slot:1b}].tag.GunPrice
data modify storage mcs:gun_type GunType set from entity @s Inventory[{Slot:1b}].tag.GunType
data modify storage mcs:gun_used GunUsed set from entity @s Inventory[{Slot:1b}].tag.GunUsed

execute store result score @s mcs run data get storage mcs:gun_type GunType
#手枪的GunType是1

# 检测是否为手枪
execute unless score @s mcs matches 1 run tellraw @s [{"text":"未能找到合适的武器并退回，请检查快捷栏第二格是否为手枪！","color":"red"}]
execute if score @s mcs matches 1 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
    #检查是否为初始手枪
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 200 run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run tellraw @s [{"text":"你不能退回初始手枪！","color":"red"}]
        execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 201.. run execute if score @s mcs matches ..1000 run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run execute store result score @s mcs run data get storage mcs:gun_used GunUsed
        #检查GunUsed参数，若为1，则不予退还，若为0，则可以退还
        execute if score @s Allowance matches 2 run execute if score @s mcs matches 1 run scoreboard players set @s Allowance 3
            execute if score @s Allowance matches 3 run tellraw @s [{"text":"你已使用过该武器，无法退回！","color":"red"}]
            execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0
        execute if score @s Allowance matches 2 run execute if score @s mcs matches 0 run scoreboard players set @s Allowance 3
            execute if score @s Allowance matches 3 run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
            execute if score @s Allowance matches 3 run tellraw @s [{"text":"你已回退 ","color":"white"},{"color":"yellow","nbt":"GunName","nbttype":"string","storage":"mcs:gun_name"},{"text":" +$","color":"green"},{"color":"green","score":{"name":"@s","objective":"mcs"}}]
            execute if score @s Allowance matches 3 run scoreboard players operation @s Points += @s mcs
            execute if score @s Allowance matches 3 run item replace entity @s hotbar.1 with air
            #清理所有手枪及弹药盒，重新给予初始手枪
            execute if score @s Allowance matches 3 run clear @s tacz:ammo_box{tag:{AmmoType:1}}
            execute if score @s Allowance matches 3 run clear @s tacz:modern_kinetic_gun{tag:{GunPrice:200}}
            execute if score @s Allowance matches 3 run scoreboard players set @s GetGunForFree 1
            execute if score @s Allowance matches 3 run execute if entity @s[team=CT] run function mcgo:pistols/pistol_get_usp
            execute if score @s Allowance matches 3 run execute if entity @s[team=T] run function mcgo:pistols/pistol_get_glock
            execute if score @s Allowance matches 3 run scoreboard players set @s GetGunForFree 0
            execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0
