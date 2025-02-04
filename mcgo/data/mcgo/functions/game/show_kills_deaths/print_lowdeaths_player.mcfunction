execute as @a[scores={PlayKills=0..}] run execute if score @s PlayDeaths = #minPlayDeaths sort run function mcgo:game/show_kills_deaths/culculate_kd
#kd1 = PlayKills / PlayDeaths
#kd2 = (PlayKills % PlayDeaths) * 1000 / PlayDeaths

execute as @a[scores={PlayKills=0..}] run execute if score @s PlayDeaths = #minPlayDeaths sort if score #kd1 sort matches -1 run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"PlayKills"},"color":"green","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"PlayDeaths"},"color":"red","bold":true},{"text":"    "},{"text":"(∞)","color":"yellow","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"MVP"},"color":"yellow","bold":true}]

execute as @a[scores={PlayKills=0..}] run execute if score @s PlayDeaths = #minPlayDeaths sort if score #kd1 sort matches 1.. run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"PlayKills"},"color":"green","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"PlayDeaths"},"color":"red","bold":true},{"text":"    "},{"score":{"name":"#kd1","objective":"sort"},"color":"green","bold":true},{"text":".","color":"green"},{"score":{"name":"#kd2","objective":"sort"},"color":"green","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"MVP"},"color":"yellow","bold":true}]

execute as @a[scores={PlayKills=0..}] run execute if score @s PlayDeaths = #minPlayDeaths sort unless score #kd1 sort matches 1.. unless score #kd1 sort matches -1 run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"PlayKills"},"color":"green","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"PlayDeaths"},"color":"red","bold":true},{"text":"    "},{"score":{"name":"#kd1","objective":"sort"},"color":"red","bold":true},{"text":".","color":"red"},{"score":{"name":"#kd2","objective":"sort"},"color":"red","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"MVP"},"color":"yellow","bold":true}]

execute as @a[scores={PlayKills=0..}] run execute if score @s PlayDeaths = #minPlayDeaths sort run execute if score @s PlayKills = #highPlayKills sort run scoreboard players reset @s PlayKills


