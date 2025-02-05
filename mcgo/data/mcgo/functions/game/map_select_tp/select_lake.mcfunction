scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set lake SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"湖畔激战 lake","color":"#FFE599"}]

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~ 100 1.3 1