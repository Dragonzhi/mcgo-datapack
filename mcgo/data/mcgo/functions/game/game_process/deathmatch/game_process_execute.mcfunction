
# 每一刻增加玩家的种子数值
execute as @a run scoreboard players add @s DeathMatchSeed 1

execute as @a if score @s Kills matches 3.. run item replace entity @s hotbar.7 with minecraft:potion{Potion:"minecraft:strong_healing",CustomPotionEffects:[{Id:6,Amplifier:1,Duration:1}]} 1
execute as @a if score @s Kills matches 3.. run tellraw @s [{"text":"[提示]","color":"yellow"},{"text":"连续击杀三名玩家，获得生命值奖励！","color":"white"}]
execute as @a if score @s Kills matches 3.. run playsound entity.player.levelup player @s ~ ~ ~ 5 1 1
execute as @a if score @s Kills matches 3.. run scoreboard players set @s Kills 0