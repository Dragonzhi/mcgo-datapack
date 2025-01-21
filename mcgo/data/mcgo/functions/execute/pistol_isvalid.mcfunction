#在购买手枪时最先执行，检查是否满足购买手枪的基本条件（除金钱外）。在购买初始手枪时，与pistol_isinitial.mcfunction配合


# 初始化
data modify storage mcs:gun_price GunPrice set value 0
data modify storage mcs:gun_type GunType set value 0
# 赋值
data modify storage mcs:gun_price GunPrice set from entity @s Inventory[{Slot:1b}].tag.GunPrice
data modify storage mcs:gun_type GunType set from entity @s Inventory[{Slot:1b}].tag.GunType
#手枪的GunType是1

execute store result score @s mcs run data get storage mcs:gun_type GunType

execute unless score @s mcs matches 1 run execute unless score @s mcs matches 0 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 10
    ##若可免费获得，直接跳过以下过程
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"手枪格已被占用，请检查该栏位！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if score @s mcs matches 0 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 10
    ##若可免费获得，直接跳过以下过程
    execute if score @s Allowance matches 1 run function mcgo:execute/search_for_pistol
    #execute if score @s Allowance matches 1 run execute store result score @s mcs run data get entity @s Inventory[{tag:{GunType:1}}].tag.GunType
    #这个指令可以一句话检索所有的手枪，如果数量为0，或2及以上，执行的结果都为0，并存储到mcs，这样可以一句话实现search_for_pistols这个函数
    #检查玩家背包是否有手枪
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 1.. run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run execute store result score @s mcs run data get entity @s Inventory[{tag:{GunId:1}}].tag.GunPrice
        #检查玩家背包中的手枪是否为初始手枪
        execute if score @s Allowance matches 2 run execute if score @s mcs matches 200 run scoreboard players set @s Allowance 3
            #运行函数前 Allowance 设为3
            execute if score @s Allowance matches 3 run clear @s tacz:modern_kinetic_gun{tag:{GunPrice:200}}
            execute if score @s Allowance matches 3 run clear @s tacz:ammo_box{tag:{AmmoType:1}}
            execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 10
            # Allowance 被设为10
        execute if score @s Allowance matches 2 run execute if score @s mcs matches 0 run scoreboard players set @s Allowance 3
            #若存在多把手枪或唯一一把手枪不为初始手枪，@s mcs都为0
            execute if score @s Allowance matches 3 run tellraw @s [{"text":"你的背包中存在一把及以上的非初始手枪，请检查背包！","color":"red"}]
            execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 0 run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 10

execute if score @s mcs matches 1 run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run execute if score @s GetGunForFree matches 1 run scoreboard players set @s Allowance 10
    ##若可免费获得，直接跳过以下过程
    execute if score @s Allowance matches 1 run execute store result score @s mcs run data get storage mcs:gun_price GunPrice
    #检查手枪格是否有同类武器（除初始武器），若为初始手枪，则进一步检索；若为非初始手枪，则输出警告
    execute if score @s Allowance matches 1 run execute if score @s mcs matches ..1000 run execute if score @s mcs matches 201.. run scoreboard players set @s Allowance 2
        execute if score @s Allowance matches 2 run tellraw @s [{"text":"手枪格有同类武器（除初始武器），请将手枪格的武器卖出或丢弃再尝试！","color":"red"}]
        execute if score @s Allowance matches 2 run scoreboard players set @s Allowance 0
    execute if score @s Allowance matches 1 run execute if score @s mcs matches 200 run scoreboard players set @s Allowance 2
        #搜索玩家背包里所有手枪，若只有一把手枪，则允许买枪，设置Allowance为10；若有两把及以上的手枪，不允许买枪，并输出警告
        execute if score @s Allowance matches 2 run function mcgo:execute/search_for_pistol
        #execute if score @s Allowance matches 2 run execute store result score @s mcs run data get entity @s Inventory[{tag:{GunType:1}}].tag.GunType
        #这个指令可以一句话检索所有的手枪，如果数量为0，或2及以上，执行的结果都为0，并存储到mcs，这样可以一句话实现search_for_pistols这个函数
        execute if score @s Allowance matches 2 run execute if score @s mcs matches 2.. run scoreboard players set @s Allowance 3
            execute if score @s Allowance matches 3 run tellraw @s [{"text":"你的背包中存在两把及以上的手枪，请检查背包！","color":"red"}]
            execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 0
        execute if score @s Allowance matches 2 run execute if score @s mcs matches 1 run scoreboard players set @s Allowance 3
            #运行函数前 Allowance 设为3
            execute if score @s Allowance matches 3 run clear @s tacz:modern_kinetic_gun{tag:{GunPrice:200}}
            execute if score @s Allowance matches 3 run clear @s tacz:ammo_box{tag:{AmmoType:1}}
            execute if score @s Allowance matches 3 run scoreboard players set @s Allowance 10
            # Allowance 被设为10
