#tellraw @a [{"text":"赛后总结","color":"yellow","bold":true},{"text":"\n%%%","color":"yellow","bold":false}]
#tellraw @a [{"text":"玩家    ","color":"white","bold":true},{"text":"击杀数    ","color":"white","bold":true},{"text":"死亡数","color":"white","bold":true}]

scoreboard players set #highPlayKills sort 0

#从当前playkills计分板中寻找最高分
execute if score #1 sort matches 0 run execute as @a[scores={sort=0..}] if score @s sort > #highPlayKills sort run scoreboard players operation #highPlayKills sort = @s sort
execute if score #1 sort matches 0 run execute as @a[scores={sort=0..}] run execute if score @s sort <= #highPlayKills sort run scoreboard players reset @s sort
execute if score #1 sort matches 0 run execute if entity @a[scores={sort=0..}] run function mcgo:game/show_kills_deaths/test

#结束后打上标记防止循环时重复操作
scoreboard players set #1 sort 1


#tellraw @a [{"text":"#highPlayKills: "},{"score":{"name":"#highPlayKills","objective":"sort"}}]

execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players set Allowance GameProcess 1
   execute if score Allowance GameProcess matches 1 run scoreboard players set #count sort 0
    #检测是否有多名击杀数相同的实体，若只有一个，则直接输出，若有多个则进一步检索
    execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players add #count sort 1

    execute if score Allowance GameProcess matches 1 run execute if score #count sort matches 1 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"PlayKills"},"color":"green","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"PlayDeaths"},"color":"red","bold":true}]
        execute if score Allowance GameProcess matches 2 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players reset @s PlayDeaths
        execute if score Allowance GameProcess matches 2 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players reset @s PlayKills
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0
    
    #execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"#count: "},{"score":{"name":"#count","objective":"sort"}}]

    execute if score Allowance GameProcess matches 1 run execute if score #count sort matches 2.. run scoreboard players set Allowance GameProcess 3
        #将击杀数相同的玩家根据死亡数排序，死亡数少的排更高名次
        #查找死亡数最低的
        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run scoreboard players set #minPlayDeaths sort 10000
        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players operation @s sort = @s PlayDeaths
        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run execute as @a[scores={sort=0..}] if score @s sort < #minPlayDeaths sort run scoreboard players operation #minPlayDeaths sort = @s sort
        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run execute as @a[scores={sort=0..}] run execute if score @s sort >= #minPlayDeaths sort run scoreboard players reset @s sort
        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run execute if entity @a[scores={sort=0..}] run function mcgo:game/show_kills_deaths/test

        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players operation @s sort = @s PlayDeaths

        #利用找到的最低死亡数，查找目标实体当中（用execute if score @s PlayKills = #highPlayKills sort 限制）死亡数与之相同的并输出该玩家，若死亡数仍相同，则随机轮流输出（无需再进行新的一轮排序，在execute as @a[scores={PlayKills=0..}] 语句中已经能够分别输出多名目标实体）
        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run execute if score @s PlayDeaths = #minPlayDeaths sort run tellraw @a [{"selector":"@s"},{"text":"    "},{"score":{"name":"@s","objective":"PlayKills"},"color":"green","bold":true},{"text":"    "},{"score":{"name":"@s","objective":"PlayDeaths"},"color":"red","bold":true}]
        execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run execute as @r[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run execute if score @s PlayDeaths = #minPlayDeaths sort run scoreboard players reset @s PlayKills

        execute if score Allowance GameProcess matches 3 run scoreboard players set #2 sort 1
        execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0

scoreboard players set #1 sort 0
scoreboard players set #2 sort 0
scoreboard players set Allowance GameProcess 0
execute if entity @a[scores={PlayKills=0..}] run execute as @a[scores={PlayKills=0..}] run scoreboard players operation @s sort = @s PlayKills
execute if entity @a[scores={PlayKills=0..}] run function mcgo:game/show_kills_deaths/test




execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players set Allowance GameProcess 1
execute if score Allowance GameProcess matches 1 run scoreboard players set #count sort 0

# 检测是否有多名击杀数相同的实体，若只有一个，则直接输出，若有多个则进一步检索
execute if score Allowance GameProcess matches 1 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players add #count sort 1

execute if score Allowance GameProcess matches 1 run execute if score #count sort matches 1 run execute as @a[scores={PlayKills=0..}] run execute if score @s PlayKills = #highPlayKills sort run scoreboard players set Allowance GameProcess 2
execute if score Allowance GameProcess matches 2 run function mcgo:game/show_kills_deaths/print_player
execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0

execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"#count: "},{"score":{"name":"#count","objective":"sort"}}]

execute if score Allowance GameProcess matches 1 run execute if score #count sort matches 2.. run scoreboard players set Allowance GameProcess 3

# 将击杀数相同的玩家根据死亡数排序，死亡数少的排更高名次
execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run function mcgo:game/show_kills_deaths/search_for_mindeaths

# 利用找到的最低死亡数，查找目标实体当中（用execute if score @s PlayKills = #highPlayKills sort 限制）死亡数与之相同的并输出该玩家，若死亡数仍相同，则随机轮流输出（无需再进行新的一轮排序，在execute as @a[scores={PlayKills=0..}] 语句中已经能够分别输出多名目标实体）
execute if score Allowance GameProcess matches 3 run execute if score #2 sort matches 0 run function mcgo:game/show_kills_deaths/print_player

# execute if score Allowance GameProcess matches 3 run tellraw @a [{"text":"#minPlayDeaths: "},{"score":{"name":"#minPlayDeaths","objective":"sort"}}]

execute if score Allowance GameProcess matches 3 run scoreboard players set #2 sort 1
execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0

scoreboard players set #1 sort 0
scoreboard players set #2 sort 0
scoreboard players set Allowance GameProcess 0
execute if entity @a[scores={PlayKills=0..}] run execute as @a[scores={PlayKills=0..}] run scoreboard players operation @s sort = @s PlayKills
execute if entity @a[scores={PlayKills=0..}] run function mcgo:game/show_kills_deaths/sort_print_kills_deaths