
function mcgo:game/get_guns/grenade_isvalid

function mcgo:game/get_guns/search_for_he

execute if score @s mcs matches 1.. run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"text":"你的背包中存在一个及以上的高爆手雷，无法再购买！","color":"red"}]
    execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0
#若高爆手雷数量足够多，则将Allowance设置为0，禁止后续所有操作

execute if score @s BoughtHEGrenade matches 1.. run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"text":"你已购买过一个高爆手雷，无法再购买！","color":"red"}]
    execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 0 run execute unless score @s Points matches 300.. run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"text":"你没有足够的钱购买 高爆手雷","color":"red"}]
    execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 0 run execute if score @s Points matches 300.. run scoreboard players set @s Allowance 10
    execute if score @s Allowance matches 10 run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"高爆手雷 ","color":"yellow"},{"text":"-300$","color":"red"}]
    execute if score @s Allowance matches 10 run scoreboard players remove @s Points 300

execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 11
    execute if score @s Allowance matches 11 run tellraw @s [{"text":"你已获得 ","color":"white"},{"text":"高爆手雷","color":"yellow"}]

execute if score @s Allowance matches 10..11 run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:3b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.3 with csgrenades:hegrenade{GunType:6,GunName:"高爆手雷",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtHEGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute if score @s Allowance matches 10..11 run execute run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:4b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.4 with csgrenades:hegrenade{GunType:6,GunName:"高爆手雷",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtHEGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute if score @s Allowance matches 10..11 run execute run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:5b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.5 with csgrenades:hegrenade{GunType:6,GunName:"高爆手雷",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtHEGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute if score @s Allowance matches 10..11 run execute run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:6b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.6 with csgrenades:hegrenade{GunType:6,GunName:"高爆手雷",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtHEGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0


