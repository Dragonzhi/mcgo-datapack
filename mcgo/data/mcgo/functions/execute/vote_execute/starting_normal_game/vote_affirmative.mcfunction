execute if score @s Vote matches 1 run tellraw @s [{"text":"你已投票过，禁止重复投票！","color":"red"}]

execute if score @s Vote matches 0 run execute if entity @s[team=CT] run scoreboard players set @s Allowance 1
execute if score @s Vote matches 0 run execute if entity @s[team=T] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run scoreboard players add StartingNormalGame Vote 1
    execute if score @s Allowance matches 1 run tellraw @a [{"selector":"@s"},{"text":" 同意开始游戏","color":"green"},{"text":" (","color":"white"},{"score":{"name":"StartingNormalGame","objective":"Vote"},"color":"green"},{"text":" / ","color":"white"},{"score":{"name":"#playersNumSet","objective":"Vote"},"color":"yellow"},{"text":")","color":"white"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Vote 1

execute if score @s Vote matches 0 run execute unless entity @s[team=T] unless entity @s[team=CT] run scoreboard players set @s Allowance 2
    execute if score @s Allowance matches 2 run tellraw @s [{"selector":"@s"},{"text":" 你不在CT或T队伍中，无法投票！","color":"red"}]

scoreboard players set @s Allowance 0