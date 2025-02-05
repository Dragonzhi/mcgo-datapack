scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set ice SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"冰雪世界 ice","color":"#CFE2F3"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1