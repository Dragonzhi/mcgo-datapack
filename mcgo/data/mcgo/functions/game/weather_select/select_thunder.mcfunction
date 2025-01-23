scoreboard objectives remove SelectedWeather
scoreboard objectives add SelectedWeather dummy
scoreboard players set thunder SelectedWeather 1
tellraw @a [{"text":"选中天气为 ","color":"white"},{"text":"雷雨天 thunder","color":"#AE00FF"}]