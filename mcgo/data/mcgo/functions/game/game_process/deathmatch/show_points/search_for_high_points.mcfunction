
scoreboard players set #highDeathMatchPoints sort 0

#从当前playkills计分板中寻找最高分
execute as @a[scores={sort=0..}] if score @s sort > #highDeathMatchPoints sort run scoreboard players operation #highDeathMatchPoints sort = @s sort

execute as @a[scores={sort=0..}] if score @s sort <= #highDeathMatchPoints sort run scoreboard players reset @s sort

