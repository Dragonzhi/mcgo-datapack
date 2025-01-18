# 获取玩家物品栏第二位（Slot:1b）的GunId, GunName, GunPrice
data modify storage mcs:gun_id GunId set from entity @s Inventory[{Slot:1b}].tag.GunId
data modify storage mcs:gun_name GunName set from entity @s Inventory[{Slot:1b}].tag.GunName
data modify storage mcs:gun_price GunPrice set from entity @s Inventory[{Slot:1b}].tag.GunPrice

# 检查是否成功获取了GunId，如果有则执行return函数
execute if data storage mcs:gun_id GunId run function mcgo:test/return

