execute as @a[scores={PlayKills=0..}] run execute if score @s PlayDeaths = #minPlayDeaths sort run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"PlayKills"},"color":"green","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"PlayDeaths"},"color":"red","bold":true}]
execute as @a[scores={PlayKills=0..}] run execute if score @s PlayDeaths = #minPlayDeaths sort run execute if score @s PlayKills = #highPlayKills sort run scoreboard players reset @s PlayKills

