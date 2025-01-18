# 获取玩家物品栏第二个槽位的物品ID，并存储在变量中
execute store result score $itemId mcs run data get entity @s Inventory[{Slot:1b}].id

# 将变量中的物品ID转换为字符串，并存储在另一个变量中

# 输出物品ID
tellraw @s [{"text":"玩家物品栏第二个槽位的物品ID是：","color":"green"},{"color":"yellow","score":{"name":"$itemId","objective":"mcs"}}]
