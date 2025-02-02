
execute store result score #CTNum Vote run execute if entity @a[team=CT]
execute store result score #TNum Vote run execute if entity @a[team=T]
scoreboard players operation #playersNumEnd Vote = #CTNum Vote
scoreboard players operation #playersNumEnd Vote += #TNum Vote

#tellraw @a [{"score":{"name":"#playersNumEnd","objective":"Vote"}}]

execute if score #playersNumEnd Vote > #playersNumSet Vote run scoreboard players set ResetWorld Vote -1
execute if score #playersNumEnd Vote < #playersNumSet Vote run scoreboard players set ResetWorld Vote -1
execute if score ResetWorld Vote matches -1 run tellraw @a [{"text":"检测到双方总人数出现变动，投票失败！","color":"red"}]

execute if score ResetWorld Vote < #playersNumSet Vote run execute unless score ResetWorld Vote matches -1 run tellraw @a [{"text":"存在玩家拒绝重置游戏或没有足够的玩家投票，无法开始游戏！","color":"red"}]

execute if score ResetWorld Vote = #playersNumSet Vote run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"投票成功，游戏重置！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run function mcgo:game/reset/reset_world
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

scoreboard players set Voting Vote 0
scoreboard players set @a Vote 0
scoreboard players set ResetWorld Vote 0