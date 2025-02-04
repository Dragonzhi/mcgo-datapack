scoreboard players set #highKills sort 0
execute as @a[scores={Kills=0..}] run scoreboard players operation @s sort = @s Kills
execute if score CTWinTheRound GameProcess matches 1 run execute as @a[team=T] run scoreboard players reset @s sort
execute if score TWinTheRound GameProcess matches 1 run execute as @a[team=CT] run scoreboard players reset @s sort

execute as @a[scores={sort=0..}] if score @s sort > #highKills sort run scoreboard players operation #highKills sort = @s sort
execute as @a[scores={sort=0..}] if score @s sort < #highKills sort run scoreboard players reset @s sort
#已经找到最高分，且sort计分板只存在与最高分相匹配的玩家
