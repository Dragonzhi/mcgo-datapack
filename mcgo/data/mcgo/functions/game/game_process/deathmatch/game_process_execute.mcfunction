
# 每一刻增加玩家的种子数值
execute as @a run scoreboard players add @s DeathMatchSeed 1
# 设置一个取余数
scoreboard players set #25 DeathMatchSeed 25