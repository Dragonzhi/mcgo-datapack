scoreboard objectives remove SelectedWeather
scoreboard objectives add SelectedWeather dummy
scoreboard players set thunder SelectedWeather 1
tellraw @a [{"text":"选中天气为 ","color":"white"},{"text":"雷雨天 thunder","color":"#AE00FF"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1