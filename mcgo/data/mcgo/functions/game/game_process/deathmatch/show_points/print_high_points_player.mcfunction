execute if score #broadcastPlayersNum sort matches 0 run tellraw @a [{"selector":"@s"},{"text":"    ★"},{"score":{"name":"@s","objective":"DeathMatchPoints"},"color":"#FFD700","bold":true}]
execute if score #broadcastPlayersNum sort matches 1 run tellraw @a [{"selector":"@s"},{"text":"    ★"},{"score":{"name":"@s","objective":"DeathMatchPoints"},"color":"#C0C0C0","bold":true}]
execute if score #broadcastPlayersNum sort matches 2 run tellraw @a [{"selector":"@s"},{"text":"    ★"},{"score":{"name":"@s","objective":"DeathMatchPoints"},"color":"#CD7F32","bold":true}]
execute if score #broadcastPlayersNum sort matches 3.. run tellraw @a [{"selector":"@s"},{"text":"    ★"},{"score":{"name":"@s","objective":"DeathMatchPoints"},"color":"gray","bold":true}]

scoreboard players reset @s DeathMatchPoints
scoreboard players add #broadcastPlayersNum sort 1
