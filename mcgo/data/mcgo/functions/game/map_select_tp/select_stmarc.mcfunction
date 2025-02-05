scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set stmarc SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"圣马丁小镇 stmarc","color":"#edbd3e"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1