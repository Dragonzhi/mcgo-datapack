execute if score Voting Vote matches 1 if score @s Vote matches 1 run tellraw @s [{"text":"你已投票过，禁止重复投票！","color":"red"}]

execute if score Voting Vote matches 1 if score @s Vote matches 0 if score CTSurrenderValid GameProcess matches 1 run execute if entity @s[team=CT] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @a [{"selector":"@s"},{"text":" 拒绝投降","color":"red"}]
    execute if score @s Allowance matches 1 run playsound minecraft:ui.stonecutter.take_result player @s ~ ~ ~ 100 2 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Vote 1


execute if score Voting Vote matches 1 if score @s Vote matches 0 if score TSurrenderValid GameProcess matches 1 run execute if entity @s[team=T] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @a [{"selector":"@s"},{"text":" 拒绝投降","color":"red"}]
    execute if score @s Allowance matches 1 run playsound minecraft:ui.stonecutter.take_result player @s ~ ~ ~ 100 2 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Vote 1

execute if score Voting Vote matches 0 run tellraw @s [{"text":"未开始投票项目，无法投票！","color":"red"}]

scoreboard players set @s Allowance 0
