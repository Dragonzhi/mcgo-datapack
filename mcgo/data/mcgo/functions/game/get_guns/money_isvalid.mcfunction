#在购买武器时执行，判断玩家的金钱是否需要付钱
execute store result score @s mcs run data get storage mcs:gun_type GunType
execute if score @s mcs matches ..2 run scoreboard players set @s Allowance 10
execute if score @s mcs matches 6 run scoreboard players set @s Allowance 12

execute if entity @s[scores={Allowance=10}] run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
execute if entity @s[scores={Allowance=10}] run execute if score @s Points < @s mcs run scoreboard players set @s Allowance 11
    execute if entity @s[scores={Allowance=11}] run execute store result score @s mcs run data get storage mcs:gun_name GunName
    execute if entity @s[scores={Allowance=11}] run tellraw @s [{"text":"你没有足够的钱购买 ","color":"red"},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"red"}]
    execute if entity @s[scores={Allowance=11}] run scoreboard players set @s Allowance 0

execute if entity @s[scores={Allowance=12}] run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
execute if entity @s[scores={Allowance=12}] run execute if score @s Points < @s mcs run scoreboard players set @s Allowance 13
    execute if entity @s[scores={Allowance=13}] run execute store result score @s mcs run data get storage mcs:gun_name GunName
    execute if entity @s[scores={Allowance=13}] run tellraw @s [{"text":"你没有足够的钱购买 ","color":"red"},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"red"}]
    execute if entity @s[scores={Allowance=13}] run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 10.. run function mcgo:game/get_guns/money_remove
