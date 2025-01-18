
# 初始化
data modify storage mcs:gun_id GunId set value 0
data modify storage mcs:gun_name GunName set value 0
data modify storage mcs:gun_price GunPrice set value 0
# 赋值
data modify storage mcs:gun_id GunId set from entity @s Inventory[{Slot:1b}].tag.GunId
data modify storage mcs:gun_name GunName set from entity @s Inventory[{Slot:1b}].tag.GunName
data modify storage mcs:gun_price GunPrice set from entity @s Inventory[{Slot:1b}].tag.GunPrice
# 检测是否有枪
execute store result score $gunName mcs run data get storage mcs:gun_name GunName
# 获取存储的GunPrice值并存储在自己名字变量中
execute store result score @s mcs run data get storage mcs:gun_price GunPrice
# 使用tellraw命令发送消息，包含GunName和GunPrice
execute if score $gunName mcs matches 1.. run tellraw @s [{"text":"你已回退 ","color":"white"},{"color":"yellow","nbt":"GunName","nbttype":"string","storage":"mcs:gun_name"},{"text":" +$","color":"green"},{"color":"green","score":{"name":"@s","objective":"mcs"}}]
# 退枪返钱
scoreboard players operation @s Points += @s mcs
item replace entity @s container.1 with air