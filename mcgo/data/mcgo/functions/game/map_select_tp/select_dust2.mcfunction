scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set dust2 SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"炙热沙城 dust 2","color":"yellow"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1