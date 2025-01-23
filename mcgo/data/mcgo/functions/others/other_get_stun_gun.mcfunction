execute unless score @s Points matches 200.. run tellraw @s [{"text":"你没有足够的金钱购买电击枪！","color":"red"}]

execute if score @s Points matches 200.. run execute if entity @s[nbt={Inventory:[{"id":"block_bettle:dian_ji_qiang"}]}] run tellraw @s [{"text":"你已拥有电击枪，无需再次购买！","color":"red"}]

execute if score @s Points matches 200.. run execute unless entity @s[nbt={Inventory:[{"id":"block_bettle:dian_ji_qiang"}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run clear @s block_bettle:dian_ji_qiang
    execute if score @s Allowance matches 1 run item replace entity @s inventory.20 with block_bettle:dian_ji_qiang{tag:{GunType:7}}
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"电击枪 ","color":"yellow"},{"text":"-200$","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players remove @s Points 200
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0