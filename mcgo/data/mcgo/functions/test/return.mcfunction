# 需要先有mcs计分板：scoreboard objectives add mcs dummy

# 获取存储的GunName值并存储在变量中
execute store result score $gunName mcs run data get storage mcs:gun_name GunName
# 获取存储的GunPrice值并存储在变量中
execute store result score $gunPrice mcs run data get storage mcs:gun_price GunPrice
# execute store result score $gunPrice mcs run data get storage mcs gun_price.GunPrice

# 使用tellraw命令发送消息，包含GunName和GunPrice
# execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:{id:"storage.mcs:gun_id.GunId"}}}]}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"text":"%s","color":"yellow","nbt":"GunName","nbttype":"string","storage":"mcs:gun_name"},{"color":"yellow","score":{"name":"$gunName","objective":"mcs"}},{"text":" +$","color":"green"},{"color":"green","score":{"name":"$gunPrice","objective":"mcs"}}]

execute if entity @s[nbt={Inventory:[{id:"tacz:modern_kinetic_gun", tag:{GunId:{id:"storage.mcs:gun_id.GunId"}}}]}] run tellraw @s [{"text":"你已回退 ","color":"white"},{"color":"yellow","nbt":"GunName","nbttype":"string","storage":"mcs:gun_name"},{"text":" +$","color":"green"},{"color":"green","score":{"name":"$gunPrice","objective":"mcs"}}]
