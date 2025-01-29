scoreboard players set #highPlayKills sort 0

#从当前playkills计分板中寻找最高分
execute as @a[scores={sort=0..}] if score @s sort > #highPlayKills sort run scoreboard players operation #highPlayKills sort = @s sort
execute as @a[scores={sort=0..}] run execute if score @s sort <= #highPlayKills sort run scoreboard players reset @s sort
execute if entity @a[scores={sort=0..}] run function mcgo:game/show_kills_deaths/search_for_highscore
#结束后打上标记防止循环时重复操作
#scoreboard players set #1 sort 1