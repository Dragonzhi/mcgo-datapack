execute if score CTSurrenderValid GameProcess matches 1 run execute store result score #playersNumEnd Vote run execute if entity @a[team=CT]
execute if score TSurrenderValid GameProcess matches 1 run execute store result score #playersNumEnd Vote run execute if entity @a[team=T]

#tellraw @a [{"score":{"name":"#playersNumSet","objective":"Vote"}}]

execute if score #playersNumEnd Vote > #playersNumSet Vote if score CTSurrenderValid GameProcess matches 1 run scoreboard players set CTSurrender Vote -1
execute if score #playersNumEnd Vote < #playersNumSet Vote if score CTSurrenderValid GameProcess matches 1 run scoreboard players set CTSurrender Vote -1
execute if score #playersNumEnd Vote > #playersNumSet Vote if score TSurrenderValid GameProcess matches 1 run scoreboard players set TSurrender Vote -1
execute if score #playersNumEnd Vote < #playersNumSet Vote if score TSurrenderValid GameProcess matches 1 run scoreboard players set TSurrender Vote -1

#tellraw @a [{"score":{"name":"#playersNumEnd","objective":"Vote"}}]

execute if score CTSurrender Vote matches -1 if score CTSurrenderValid GameProcess matches 1 run tellraw @a[team=CT] [{"text":"检测到当前阵营人数出现变动，投票失败！","color":"red"}]
execute if score TSurrender Vote matches -1 if score TSurrenderValid GameProcess matches 1 run tellraw @a[team=T] [{"text":"检测到当前阵营人数出现变动，投票失败！","color":"red"}]

execute if score CTSurrender Vote < #playersNumSet Vote if score CTSurrenderValid GameProcess matches 1 unless score CTSurrender Vote matches -1 run tellraw @a[team=CT] [{"text":"存在玩家拒绝投降或没有足够的玩家投票，投票失败！","color":"red"}]
execute if score TSurrender Vote < #playersNumSet Vote if score TSurrenderValid GameProcess matches 1 unless score TSurrender Vote matches -1 run tellraw @a[team=T] [{"text":"存在玩家拒绝投降或没有足够的玩家投票，投票失败！","color":"red"}]

execute if score CTSurrender Vote = #playersNumSet Vote if score CTSurrenderValid GameProcess matches 1 unless score CTSurrender Vote matches -1 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"投票成功，CT方投降！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set CTSurrender GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score TSurrender Vote = #playersNumSet Vote if score TSurrenderValid GameProcess matches 1 unless score TSurrender Vote matches -1 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"投票成功，T方投降！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set TSurrender GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

scoreboard players set Voting Vote 0
scoreboard players set @a Vote 0
scoreboard players set CTSurrender Vote 0
scoreboard players set TSurrender Vote 0