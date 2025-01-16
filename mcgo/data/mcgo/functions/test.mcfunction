give @s minecraft:book
# tellraw @s ["\u00a7bAll ready!"]
scoreboard players remove #i temp 1
execute unless score #i temp matches 0 run function mcgo:test