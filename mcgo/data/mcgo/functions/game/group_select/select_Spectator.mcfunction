team join spectator @s
tellraw @a [{"selector":"@s"},{"text":" 加入了","color":"white"},{"text":" 观察者","color":"white"},{"text":" 阵营","color":"white"}]
gamemode spectator @s
playsound minecraft:ui.stonecutter.select_recipe player @s ~ ~ ~ 100 1.3 1
# 