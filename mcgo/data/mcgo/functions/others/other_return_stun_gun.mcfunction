execute if entity @s[nbt={Inventory:[{"id":"block_bettle:dian_ji_qiang",tag:{GunUsed:1}}]}] run tellraw @s [{"text":"你已用过该电击枪，不可退回！","color":"red"}]
execute unless entity @s[nbt={Inventory:[{"id":"block_bettle:dian_ji_qiang"}]}] run tellraw @s [{"text":"你没有点电击枪，退回失败！","color":"red"}]

execute if entity @s[nbt={Inventory:[{"id":"block_bettle:dian_ji_qiang"}]}] run execute unless entity @s[nbt={Inventory:[{"id":"block_bettle:dian_ji_qiang",tag:{GunUsed:1}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run clear @s block_bettle:dian_ji_qiang
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你已退回 ","color":"white"},{"text":"电击枪 ","color":"yellow"},{"text":"+200$","color":"green"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

