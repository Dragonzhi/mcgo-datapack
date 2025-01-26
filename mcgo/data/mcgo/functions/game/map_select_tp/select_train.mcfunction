scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set train SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"列车停放站 train","color":"#CE7E00"}]
