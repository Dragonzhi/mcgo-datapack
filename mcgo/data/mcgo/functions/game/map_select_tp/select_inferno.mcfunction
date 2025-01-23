scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set inferno SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"炼狱小镇 inferno","color":"blue"}]
