scoreboard objectives remove SelectedMap
scoreboard objectives add SelectedMap dummy
scoreboard players set anubis SelectedMap 1
tellraw @a [{"text":"选中地图为 ","color":"white"},{"text":"阿努比斯 anubis","color":"gold"}]
