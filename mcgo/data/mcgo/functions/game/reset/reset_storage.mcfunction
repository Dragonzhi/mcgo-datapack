# #以下是get_uuid.mcfunction
# #获取物品的Owner NBT
# execute as @e store result score temp_item1 temp run data get entity @s Owner[0]
# execute as @e store result score temp_item2 temp run data get entity @s Owner[1]
# execute as @e store result score temp_item3 temp run data get entity @s Owner[2]
# execute as @e store result score temp_item4 temp run data get entity @s Owner[3]


# execute as @r run function comp_uuid

# #以下是comp_uuid.mcfunction

# #获取玩家的UUID
# execute as @s store result score temp_player1 temp run data get entity @s UUID[0]
# #...

# #检测是否一致，如果一致则设置相应分数
# #execute if score temp_item1 temp_item1 = temp_player1 temp ... run scorboard players set ... 1

# execute if score ... matches 1 run 给钱
# execute unless score ... matches 1 run function get_uuid