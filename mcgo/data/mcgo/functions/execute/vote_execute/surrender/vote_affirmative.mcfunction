execute if score Voting Vote matches 1 if score @s Vote matches 1 run tellraw @s [{"text":"你已投票过，禁止重复投票！","color":"red"}]

#CT方投降
execute if score Voting Vote matches 1 if score @s Vote matches 0 if score CTSurrenderValid GameProcess matches 1 run execute if entity @s[team=CT] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run scoreboard players add CTSurrender Vote 1
    execute if score @s Allowance matches 1 run execute if score CTSurrender Vote <= #playersNumSet Vote run tellraw @a[team=CT] [{"selector":"@s"},{"text":" 同意投降","color":"green"},{"text":" (","color":"white"},{"score":{"name":"CTSurrender","objective":"Vote"},"color":"green"},{"text":" / ","color":"white"},{"score":{"name":"#playersNumSet","objective":"Vote"},"color":"yellow"},{"text":")","color":"white"}]
    execute if score @s Allowance matches 1 run execute if score CTSurrender Vote > #playersNumSet Vote run tellraw @a[team=CT] [{"selector":"@s"},{"text":" 同意开始游戏","color":"green"},{"text":" (","color":"white"},{"score":{"name":"CTSurrender","objective":"Vote"},"color":"red"},{"text":" / ","color":"white"},{"score":{"name":"#playersNumSet","objective":"Vote"},"color":"yellow"},{"text":")","color":"white"}]
    execute if score @s Allowance matches 1 run playsound minecraft:ui.button.click player @s ~ ~ ~ 100 1 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Vote 1


#T方投降
execute if score Voting Vote matches 1 if score @s Vote matches 0 if score TSurrenderValid GameProcess matches 1 run execute if entity @s[team=T] run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run scoreboard players add TSurrender Vote 1
    execute if score @s Allowance matches 1 run execute if score TSurrender Vote <= #playersNumSet Vote run tellraw @a[team=T] [{"selector":"@s"},{"text":" 同意投降","color":"green"},{"text":" (","color":"white"},{"score":{"name":"TSurrender","objective":"Vote"},"color":"green"},{"text":" / ","color":"white"},{"score":{"name":"#playersNumSet","objective":"Vote"},"color":"yellow"},{"text":")","color":"white"}]
    execute if score @s Allowance matches 1 run execute if score TSurrender Vote > #playersNumSet Vote run tellraw @a[team=T] [{"selector":"@s"},{"text":" 同意开始游戏","color":"green"},{"text":" (","color":"white"},{"score":{"name":"TSurrender","objective":"Vote"},"color":"red"},{"text":" / ","color":"white"},{"score":{"name":"#playersNumSet","objective":"Vote"},"color":"yellow"},{"text":")","color":"white"}]
    execute if score @s Allowance matches 1 run playsound minecraft:ui.button.click player @s ~ ~ ~ 100 1 1
    execute if score @s Allowance matches 1 run scoreboard players set @s Vote 1


execute if score Voting Vote matches 0 run tellraw @s [{"text":"未开始投票项目，无法投票！","color":"red"}]

scoreboard players set @s Allowance 0