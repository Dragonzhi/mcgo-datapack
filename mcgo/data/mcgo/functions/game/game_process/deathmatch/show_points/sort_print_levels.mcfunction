execute as @a unless entity @s[team=CT] unless entity @s[team=T] run scoreboard players reset @s DeathMatchPoints
execute as @a[scores={DeathMatchPoints=0..}] run scoreboard players operation @s sort = @s DeathMatchPoints

function mcgo:game/game_process/arms_race/show_levels/search_for_high_level
#从当前sort计分板中寻找最高分

#tellraw @a [{"text":"#highArmsRaceLevels: "},{"score":{"name":"#highArmsRaceLevels","objective":"sort"}}]

execute as @a[scores={DeathMatchPoints=0..}] if score @s DeathMatchPoints = #highDeathMatchPoints sort run function mcgo:game/game_process/arms_race/show_levels/print_high_level_player

execute if entity @a[scores={DeathMatchPoints=0..}] run function mcgo:game/game_process/arms_race/show_levels/sort_print_levels