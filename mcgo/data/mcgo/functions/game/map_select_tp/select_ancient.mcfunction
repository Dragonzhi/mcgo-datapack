scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set ancient SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"远古遗迹 ancient","color":"#008020"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1