#在购买武器时执行，判断玩家的金钱是否需要付钱

execute if entity @s[scores={Allowance=10}] run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
execute if entity @s[scores={Allowance=10}] run execute if score @s Points < @s mcs run scoreboard players set @s Allowance 11
    execute if entity @s[scores={Allowance=11}] run execute store result score @s mcs run data get storage mcs:gun_name GunName
    execute if entity @s[scores={Allowance=11}] run tellraw @s [{"text":"你没有足够的钱购买 ","color":"red"},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"red"}]
    execute if entity @s[scores={Allowance=11}] run scoreboard players set @s Allowance 0

execute if entity @s[scores={Allowance=10}] run function mcgo:game/get_guns/money_remove
