
scoreboard players set #highArmsRaceLevels sort -1

#从当前playkills计分板中寻找最高分
execute as @a[scores={sort=0..}] if score @s sort > #highArmsRaceLevels sort run scoreboard players operation #highArmsRaceLevels sort = @s sort

execute as @a[scores={sort=0..}] if score @s sort <= #highArmsRaceLevels sort run scoreboard players reset @s sort

execute if entity @a[scores={sort=0..}] run function mcgo:game/game_process/arms_race/show_levels/search_for_high_level
