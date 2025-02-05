
execute store result score #CTNum Vote run execute if entity @a[team=CT]
execute store result score #TNum Vote run execute if entity @a[team=T]
scoreboard players operation #playersNumEnd Vote = #CTNum Vote
scoreboard players operation #playersNumEnd Vote += #TNum Vote

#tellraw @a [{"score":{"name":"#playersNumEnd","objective":"Vote"}}]

execute if score #playersNumEnd Vote > #playersNumSet Vote run scoreboard players set StartingNormalGame Vote -1
execute if score #playersNumEnd Vote < #playersNumSet Vote run scoreboard players set StartingNormalGame Vote -1
execute if score StartingNormalGame Vote matches -1 run tellraw @a [{"text":"检测到双方总人数出现变动，投票失败！","color":"red"}]
execute if score StartingNormalGame Vote matches -1 run playsound minecraft:ui.toast.out block @a ~ ~ ~ 15 1 1

execute if score StartingNormalGame Vote < #playersNumSet Vote run execute unless score StartingNormalGame Vote matches -1 run tellraw @a [{"text":"存在玩家拒绝开始游戏或没有足够的玩家投票，无法开始游戏！","color":"red"}]
execute if score StartingNormalGame Vote < #playersNumSet Vote run execute unless score StartingNormalGame Vote matches -1 run playsound minecraft:ui.toast.out block @a ~ ~ ~ 15 1 1

execute if score StartingNormalGame Vote = #playersNumSet Vote run scoreboard players set Allowance GameProcess 1
execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"投票成功，游戏即将开始！","color":"yellow"}]
execute if score Allowance GameProcess matches 1 run scoreboard players set @a Deaths 0
execute if score Allowance GameProcess matches 1 run scoreboard players set @a PlayKill 0
execute if score Allowance GameProcess matches 1 run scoreboard players set @a csgrenade_killcount_flashbang 0
execute if score Allowance GameProcess matches 1 run scoreboard players set @a csgrenade_killcount_hegrenade 0
execute if score Allowance GameProcess matches 1 run scoreboard players set @a csgrenade_killcount_incendiary 0
execute if score Allowance GameProcess matches 1 run scoreboard players set @a csgrenade_killcount_molotov 0
execute if score Allowance GameProcess matches 1 run scoreboard players set @a csgrenade_killcount_smokegrenade 0
execute if score Allowance GameProcess matches 1 run scoreboard players set NormalMode GameProcess 1
execute if score Allowance GameProcess matches 1 run scoreboard players set S InGame 1
execute if score Allowance GameProcess matches 1 run scoreboard players set seconds GameProcess 5
execute if score Allowance GameProcess matches 1 run function mcgo:execute/timer/timer_starting_normal_game
execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

scoreboard players set Voting Vote 0
scoreboard players set @a Vote 0
scoreboard players set StartingNormalGame Vote 0