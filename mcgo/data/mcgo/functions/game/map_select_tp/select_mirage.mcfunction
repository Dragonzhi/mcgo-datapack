scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set mirage SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"荒漠迷城 mirage","color":"#D0DE44"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1