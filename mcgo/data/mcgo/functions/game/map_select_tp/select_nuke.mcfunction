scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set nuke SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"核子危机 nuke","color":"yellow"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1