scoreboard objectives remove SelectedWeather
scoreboard objectives add SelectedWeather dummy
scoreboard players set rain SelectedWeather 1
tellraw @a [{"text":"选中天气为 ","color":"white"},{"text":"雨天 rain","color":"blue"}]