scoreboard objectives remove SelectedWeather
scoreboard objectives add SelectedWeather dummy
scoreboard players set clear SelectedWeather 1
tellraw @a [{"text":"选中天气为 ","color":"white"},{"text":"晴朗 clear","color":"gold"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1