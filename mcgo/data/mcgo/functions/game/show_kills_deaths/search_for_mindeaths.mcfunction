scoreboard players set #minPlayDeaths sort 10000
execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players operation @s sort = @s PlayDeaths
execute as @a[scores={sort=0..}] if score @s sort < #minPlayDeaths sort run scoreboard players operation #minPlayDeaths sort = @s sort
execute as @a[scores={sort=0..}] run execute if score @s sort >= #minPlayDeaths sort run scoreboard players reset @s sort
execute if entity @a[scores={sort=0..}] run function mcgo:game/show_kills_deaths/search_for_mindeaths
