
function mcgo:game/get_guns/grenade_isvalid

function mcgo:game/get_guns/search_for_smoke

execute if score @s mcs matches 1.. run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"text":"你的背包中存在一个及以上的烟雾弹，无法再购买！","color":"red"}]
    execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0
#若烟雾弹数量足够多，则将Allowance设置为0，禁止后续所有操作

execute if score @s BoughtSmokeGrenade matches 1.. run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"text":"你已购买过一个烟雾弹，无法再购买！","color":"red"}]
    execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 0 run execute unless score @s Points matches 300.. run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"text":"你没有足够的钱购买 烟雾弹","color":"red"}]
    execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0

execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 0 run execute if score @s Points matches 300.. run scoreboard players set @s Allowance 10
    execute if score @s Allowance matches 10 run tellraw @s [{"text":"你已购买 ","color":"white"},{"text":"烟雾弹 ","color":"yellow"},{"text":"-300$","color":"red"}]
    execute if score @s Allowance matches 10 run scoreboard players remove @s Points 300

execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 11
    execute if score @s Allowance matches 11 run tellraw @s [{"text":"你已获得 ","color":"white"},{"text":"烟雾弹","color":"yellow"}]

execute if score @s Allowance matches 10.. run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:3b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.3 with csgrenades:smokegrenade{GunType:6,GunName:"烟雾弹",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtSmokeGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute if score @s Allowance matches 10.. run execute run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:4b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.4 with csgrenades:smokegrenade{GunType:6,GunName:"烟雾弹",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtSmokeGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute if score @s Allowance matches 10.. run execute run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:5b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.5 with csgrenades:smokegrenade{GunType:6,GunName:"烟雾弹",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtSmokeGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute if score @s Allowance matches 10.. run execute run execute unless entity @s[nbt={Inventory:[{tag:{GunType:6},Slot:6b}]}] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run item replace entity @s hotbar.6 with csgrenades:smokegrenade{GunType:6,GunName:"烟雾弹",GunPrice:300,GunUsed:0}
    execute if score @s Allowance matches 1 run scoreboard players add @s BoughtSmokeGrenade 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0


