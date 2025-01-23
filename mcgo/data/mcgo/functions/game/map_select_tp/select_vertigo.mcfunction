scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set vertigo SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"殒命大厦 vertigo","color":"yellow"}]
