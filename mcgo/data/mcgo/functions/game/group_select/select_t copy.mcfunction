team join T @s
tellraw @a [{"selector":"@s"},{"text":" 加入了","color":"white"},{"text":" T","color":"yellow"},{"text":" 阵营","color":"white"}]
gamemode adventure @s
playsound minecraft:ui.stonecutter.select_recipe player @s ~ ~ ~ 100 1.3 1
# 