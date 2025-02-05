scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set inferno SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"炼狱小镇 inferno","color":"blue"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1