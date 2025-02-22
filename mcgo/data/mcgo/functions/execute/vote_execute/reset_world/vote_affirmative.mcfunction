execute if score Voting Vote matches 1 if score @s Vote matches 1 run tellraw @s [{"text":"你已投票过，禁止重复投票！","color":"red"}]

execute if score Voting Vote matches 1 if score @s Vote matches 0 run execute if entity @s[team=CT] run scoreboard players set @s Allowance 1
execute if score Voting Vote matches 1 if score @s Vote matches 0 run execute if entity @s[team=T] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run scoreboard players add ResetWorld Vote 1
    execute if score @s Allowance matches 1 run execute if score ResetWorld Vote <= #playersNumSet Vote run tellraw @a [{"selector":"@s"},{"text":" 同意重置游戏","color":"green"},{"text":" (","color":"white"},{"score":{"name":"ResetWorld","objective":"Vote"},"color":"green"},{"text":" / ","color":"white"},{"score":{"name":"#playersNumSet","objective":"Vote"},"color":"yellow"},{"text":")","color":"white"}]
    execute if score @s Allowance matches 1 run execute if score ResetWorld Vote > #playersNumSet Vote run tellraw @a [{"selector":"@s"},{"text":" 同意重置游戏","color":"green"},{"text":" (","color":"white"},{"score":{"name":"ResetWorld","objective":"Vote"},"color":"red"},{"text":" / ","color":"white"},{"score":{"name":"#playersNumSet","objective":"Vote"},"color":"yellow"},{"text":")","color":"white"}]
    execute if score @s Allowance matches 1 run playsound minecraft:ui.button.click player @s ~ ~ ~ 100 1 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Vote 1

execute if score Voting Vote matches 1 if score @s Vote matches 0 run execute unless entity @s[team=T] unless entity @s[team=CT] run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"selector":"@s"},{"text":" 你不在CT或T队伍中，无法投票！","color":"red"}]

execute if score Voting Vote matches 0 run tellraw @s [{"text":"未开始投票项目，无法投票！","color":"red"}]

scoreboard players set @s Allowance 0