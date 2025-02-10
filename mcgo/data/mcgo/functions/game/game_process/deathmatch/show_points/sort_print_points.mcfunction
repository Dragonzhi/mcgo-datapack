execute as @a unless entity @s[team=CT] unless entity @s[team=T] run scoreboard players reset @s DeathMatchPoints
execute as @a[scores={DeathMatchPoints=0..}] run scoreboard players operation @s sort = @s DeathMatchPoints

function mcgo:game/game_process/deathmatch/show_points/search_for_high_points
#从当前sort计分板中寻找最高分

tellraw @a [{"text":"#highDeathMatchPoints: "},{"score":{"name":"#highDeathMatchPoints","objective":"sort"}}]

execute as @a[scores={DeathMatchPoints=0..}] if score @s DeathMatchPoints = #highDeathMatchPoints sort run function mcgo:game/game_process/deathmatch/show_points/print_high_points_player

execute if entity @a[scores={DeathMatchPoints=0..}] run function mcgo:game/game_process/deathmatch/show_points/sort_print_points