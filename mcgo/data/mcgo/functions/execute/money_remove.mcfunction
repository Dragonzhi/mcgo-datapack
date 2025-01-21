#购买枪械时执行

execute store result score @s mcs run data get storage mcs:gun_price GunPrice
scoreboard players operation @s Points -= @s mcs
tellraw @s [{"text":"你已购买 ","color":"white"},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"yellow"},{"text":" -$","color":"red"},{"score":{"name":"@s","objective":"mcs"},"color":"red"}]