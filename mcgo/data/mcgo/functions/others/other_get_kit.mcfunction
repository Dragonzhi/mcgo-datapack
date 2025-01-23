execute unless score @s Points matches 400.. run tellraw @s [{"text":"你没有足够的金钱购买拆弹器！","color":"red"}]

execute if score @s Points matches 400.. run execute if entity @s[nbt={Inventory:[{"id":"block_bettle:lei_qian"}]}] run tellraw @s [{"text":"你已拥有拆弹器Pro，无需再次购买！","color":"red"}]

execute if score @s Points matches 400.. run execute unless entity @s[nbt={Inventory:[{"id":"block_bettle:lei_qian"}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run clear @s block_bettle:qian_zi
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.8 with block_bettle:lei_qian{tag:{GunType:5}}
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"拆弹器Pro ","color":"yellow"},{"text":"-400$","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players remove @s Points 400
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
