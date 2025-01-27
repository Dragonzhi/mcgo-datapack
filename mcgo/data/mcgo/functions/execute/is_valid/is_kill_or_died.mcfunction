##玩家死亡
execute as @a[team=T,scores={Deaths=1}] run gamemode spectator @s
execute as @a[team=T,scores={Deaths=1}] run scoreboard players add @s PlayDeaths 1
execute as @a[team=T,scores={Deaths=1}] run scoreboard players set @s Deaths 2

execute as @a[team=CT,scores={Deaths=1}] run gamemode spectator @s
execute as @a[team=CT,scores={Deaths=1}] run scoreboard players add @s PlayDeaths 1
execute as @a[team=CT,scores={Deaths=1}] run scoreboard players set @s Deaths 2

##击杀得分
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s Points 300
execute as @a[scores={PlayKill=1..}] run tellraw @s [{"text":"击杀奖励 ","color":"white"},{"text":"$300","color":"green"}]
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s PlayKills 1
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s Kills 1
execute as @a[scores={PlayKill=1..}] run scoreboard players reset @s PlayKill