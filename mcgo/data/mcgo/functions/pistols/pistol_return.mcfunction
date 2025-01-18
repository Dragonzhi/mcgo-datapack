# 初始化
data modify storage mcs:gun_id GunId set value 0
data modify storage mcs:gun_name GunName set value 0
data modify storage mcs:gun_price GunPrice set value 0
# 赋值
data modify storage mcs:gun_id GunId set from entity @s Inventory[{Slot:1b}].tag.GunId
data modify storage mcs:gun_name GunName set from entity @s Inventory[{Slot:1b}].tag.GunName
data modify storage mcs:gun_price GunPrice set from entity @s Inventory[{Slot:1b}].tag.GunPrice
execute store result score @s mcs run data get storage mcs:gun_name GunName

# 检测是否有枪
execute store result score @s mcs run execute if score @s mcs matches 1.. run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
execute if score @s mcs matches 1.. run execute if score @s mcs matches ..1000 run scoreboard players set @s Allowance 1
# 获取存储的GunPrice值并存储在自己名字变量中
# 使用tellraw命令发送消息，包含GunName和GunPrice
execute if entity @s[scores={Allowance=1}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"color":"yellow","nbt":"GunName","nbttype":"string","storage":"mcs:gun_name"},{"text":" +$","color":"green"},{"color":"green","score":{"name":"@s","objective":"mcs"}}]
# 退枪返钱
execute if entity @s[scores={Allowance=1}] run scoreboard players operation @s Points += @s mcs
execute if entity @s[scores={Allowance=1}] run item replace entity @s container.1 with air
execute if entity @s[scores={Allowance=1}] run scoreboard players set @s Allowance 0

execute store result score @s mcs run execute if score @s mcs matches 0 run tellraw @s [{"text":"未能找到合适的武器并退回，请检查快捷栏第二格是否为手枪","color":"red"}]
execute store result score @s mcs run execute if score @s mcs matches 1000.. run tellraw @s [{"text":"不能将主武器当手枪退回！","color":"red"}]

scoreboard players set @s mcs 0