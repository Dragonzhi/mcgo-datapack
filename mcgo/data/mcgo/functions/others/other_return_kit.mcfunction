execute if entity @s[nbt={Inventory:[{"id":"block_bettle:lei_qian",tag:{GunUsed:1}}]}] run tellraw @s [{"text":"你已用过该拆弹器，不可退回！","color":"red"}]
execute unless entity @s[nbt={Inventory:[{"id":"block_bettle:lei_qian"}]}] run tellraw @s [{"text":"你没有拆弹器Pro，退回失败！","color":"red"}]

execute if entity @s[nbt={Inventory:[{"id":"block_bettle:lei_qian"}]}] run execute unless entity @s[nbt={Inventory:[{"id":"block_bettle:lei_qian",tag:{GunUsed:1}}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run clear @s block_bettle:lei_qian
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.8 with block_bettle:qian_zi{tag:{GunType:5,GunPrice:1}} 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你已退回 ","color":"white"},{"text":"拆弹器Pro ","color":"yellow"},{"text":"+400$","color":"green"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

