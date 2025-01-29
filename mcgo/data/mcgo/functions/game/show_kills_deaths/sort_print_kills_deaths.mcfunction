
function mcgo:game/show_kills_deaths/search_for_highscore

#tellraw @a [{"text":"#highPlayKills: "},{"score":{"name":"#highPlayKills","objective":"sort"}}]

execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players set Allowance GameProcess 1
   execute if score Allowance GameProcess matches 1 run scoreboard players set #count sort 0
    #检测是否有多名击杀数相同的实体，若只有一个，则直接输出，若有多个则进一步检索
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players add #count sort 1

    execute if score Allowance GameProcess matches 1 run execute if score #count sort matches 1 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run function mcgo:game/show_kills_deaths/print_highscore_player
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0

    execute if score Allowance GameProcess matches 1 run execute if score #count sort matches 2.. run scoreboard players set Allowance GameProcess 3
        #将击杀数相同的玩家根据死亡数排序，死亡数少的排更高名次
        
        execute if score Allowance GameProcess matches 3 run function mcgo:game/show_kills_deaths/search_for_mindeaths

        #利用找到的最低死亡数，查找目标实体当中（用execute if score @s PlayKills = #highPlayKills sort 限制）死亡数与之相同的并输出该玩家，若死亡数仍相同，则随机轮流输出（无需再进行新的一轮排序，在execute as @a[scores={PlayKills=0..}] 语句中已经能够分别输出多名目标实体）
        
        execute if score Allowance GameProcess matches 3 run function mcgo:game/show_kills_deaths/print_lowdeaths_player
        #execute if score Allowance GameProcess matches 3 run scoreboard players set #2 sort 1
        execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0

#scoreboard players set #1 sort 0
#scoreboard players set #2 sort 0
scoreboard players set Allowance GameProcess 0
execute if entity @a[scores={PlayKills=0..}] run execute as @a[scores={PlayKills=0..}] run scoreboard players operation @s sort = @s PlayKills
execute if entity @a[scores={PlayKills=0..}] run function mcgo:game/show_kills_deaths/sort_print_kills_deaths