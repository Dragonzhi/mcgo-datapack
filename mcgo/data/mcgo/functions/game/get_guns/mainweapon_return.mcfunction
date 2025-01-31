#退回主武器时执行，满足条件则直接退回主武器

# 初始化
data modify storage mcs:gun_name GunName set value 0
data modify storage mcs:gun_price GunPrice set value 0
data modify storage mcs:gun_type GunType set value 0
data modify storage mcs:gun_used GunUsed set value 0
# 赋值
data modify storage mcs:gun_name GunName set from entity @s Inventory[{Slot:0b}].tag.GunName
data modify storage mcs:gun_price GunPrice set from entity @s Inventory[{Slot:0b}].tag.GunPrice
data modify storage mcs:gun_type GunType set from entity @s Inventory[{Slot:0b}].tag.GunType
data modify storage mcs:gun_used GunUsed set from entity @s Inventory[{Slot:0b}].tag.GunUsed

execute store result score @s mcs run data get storage mcs:gun_type GunType
#主武器的GunType是2

# 检测是否为主武器
execute unless score @s mcs matches 2 run tellraw @s [{"text":"未能找到合适的武器并退回，请检查快捷栏第一格是否为主武器！","color":"red"}]
execute if score @s mcs matches 2 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute store result score @s mcs run data get storage mcs:gun_used GunUsed
        #检查GunUsed参数，若为1，则不予退还，若为0，则可以退还
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 1 run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run tellraw @s [{"text":"你已使用过该武器，无法退回！","color":"red"}]
        execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 0 run scoreboard players set @s Allowance 2
        #tellraw @s [{"text":"1 "},{"score":{"name":"@s","objective":"mcs"}}]
        execute if score @s Allowance matches 2 run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
        #tellraw @s [{"text":"2 "},{"score":{"name":"@s","objective":"mcs"}}]
        execute if score @s Allowance matches 2 run tellraw @s [{"text":"你已回退 ","color":"white"},{"color":"yellow","nbt":"GunName","nbttype":"string","storage":"mcs:gun_name"},{"text":" +$","color":"green"},{"color":"green","score":{"name":"@s","objective":"mcs"}}]
        execute if score @s Allowance matches 2 run scoreboard players operation @s Points += @s mcs
        execute if score @s Allowance matches 2 run item replace entity @s hotbar.0 with air
        execute if score @s Allowance matches 2 run clear @s tacz:ammo_box{AmmoType:2}
        execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0

