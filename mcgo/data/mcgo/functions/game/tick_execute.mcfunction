#时刻执行，判断场上局势


function mcgo:game/weather_select/turn_to_selected_weather

##NormalMode
execute if score NormalMode GameProcess matches 1 run function mcgo:game/game_process/normalmode/main

##RapidMode


##DeathMatch
execute if score DeathMatch GameProcess matches 1 run execute if score S InGame matches 1 run function mcgo:game/game_process/deathmatch/main

##ArmsRace
execute if score ArmsRace GameProcess matches 1 run execute if score S InGame matches 1 run function mcgo:game/game_process/arms_race/main