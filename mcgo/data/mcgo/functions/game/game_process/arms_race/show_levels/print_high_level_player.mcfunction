execute if score @s ArmsRaceProcess matches 15.. run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"ArmsRaceProcess"},"color":"#FFD700","bold":true}]
execute if score @s ArmsRaceProcess matches 10..14 run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"ArmsRaceProcess"},"color":"#C0C0C0","bold":true}]
execute if score @s ArmsRaceProcess matches ..9 run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"ArmsRaceProcess"},"color":"#CD7F32","bold":true}]

scoreboard players reset @s ArmsRaceProcess

#execute if entity @a[scores={ArmsRaceProcess=0..}] run scoreboard players operation @s sort = @s ArmsRaceProcess
#execute if entity @a[scores={ArmsRaceProcess=0..}] run function mcgo:game/game_process/arms_race/show_levels/search_for_high_level
