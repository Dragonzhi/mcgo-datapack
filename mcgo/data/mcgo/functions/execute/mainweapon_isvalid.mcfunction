#在购买手枪时最先执行，检查是否满足购买手枪的基本条件（除金钱外）

# 初始化
data modify storage mcs:gun_price GunPrice set value 0
data modify storage mcs:gun_type GunType set value 0
# 赋值
data modify storage mcs:gun_price GunPrice set from entity @s Inventory[{Slot:0b}].tag.GunPrice
data modify storage mcs:gun_type GunType set from entity @s Inventory[{Slot:0b}].tag.GunType
#主武器的GunType是2

execute store result score @s mcs run data get storage mcs:gun_type GunType

execute unless score @s mcs matches 2 run execute unless score @s mcs matches 0 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 10
    ##若可免费获得，直接跳过以下过程
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"主武器格已被占用，请检查该栏位！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if score @s mcs matches 2 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 10
    ##若可免费获得，直接跳过以下过程
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你的背包中存在一把及以上的主武器，请退回或丢弃后再试！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if score @s mcs matches 0 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 10
    ##若可免费获得，直接跳过以下过程
    execute if score @s Allowance matches 1 run function mcgo:execute/search_for_mainweapon
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 1.. run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run tellraw @s [{"text":"你的背包中存在一把及以上的主武器，请退回或丢弃后再试！","color":"red"}]
        execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 0 run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 10