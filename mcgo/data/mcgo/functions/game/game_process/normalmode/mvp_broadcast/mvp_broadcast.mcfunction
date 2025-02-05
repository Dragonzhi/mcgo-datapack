scoreboard players set Allowance GameProcess 0

##CT
execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set Allowance GameProcess 1
    #CTLeft1 0 | BombPlanted 0
    execute if score Allowance GameProcess matches 1 if score CTLeft1 GameProcess matches 0 if score BombPlanted GameProcess matches 0 run execute if entity @a[team=CT,scores={Kills=1..}] run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run function mcgo:game/game_process/normalmode/mvp_broadcast/search_for_high_kills
        execute if score Allowance GameProcess matches 2 run execute as @r[scores={sort=0..}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_highkill
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0
        #此时WinAllowance为0，不会使后面的指令执行

    #CTLeft1 0 | BombPlanted 1
    execute if score Allowance GameProcess matches 1 if score CTLeft1 GameProcess matches 0 if score BombPlanted GameProcess matches 1 run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run function mcgo:game/game_process/normalmode/mvp_broadcast/culculate_c4_countdown
        #计算了剩余时间

        execute if score Allowance GameProcess matches 2 run execute if score #RealCountDownSeconds Timer matches 20.. run scoreboard players set Allowance GameProcess 3
            execute if score Allowance GameProcess matches 3 run function mcgo:game/game_process/normalmode/mvp_broadcast/search_for_high_kills
            execute if score Allowance GameProcess matches 3 run execute as @r[scores={sort=0..}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_highkill
            execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0
        
        execute if score Allowance GameProcess matches 2 run execute if score #RealCountDownSeconds Timer matches ..19 run scoreboard players set Allowance GameProcess 3
            execute if score Allowance GameProcess matches 2 run execute as @a[scores={DefuseC4=1..}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_ct_defuse
            execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0

    #CTLeft1 1 | BombDefused 0
    execute if score Allowance GameProcess matches 1 if score CTLeft1 GameProcess matches 1 if score BombDefused GameProcess matches 0 run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run function mcgo:game/game_process/normalmode/mvp_broadcast/search_for_high_kills
        #剩余的玩家击杀数是最高的，则MVP为他自己
        execute if score Allowance GameProcess matches 2 run execute as @a[team=CT,scores={Deaths=0}] if score @s Kills = #highKills sort run scoreboard players set Allowance GameProcess 3
            execute if score Allowance GameProcess matches 3 run execute as @a[team=CT,scores={Deaths=0}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_cluntch_highkill
            execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0
        #剩余的玩家击杀数不是最高，则MVP为击杀数最高的
        execute if score Allowance GameProcess matches 2 run execute as @a[team=CT,scores={Deaths=0}] if score @s Kills < #highKills sort run scoreboard players set Allowance GameProcess 3
            execute if score Allowance GameProcess matches 3 run execute as @r[scores={sort=0..}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_highkill
            execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0

    #CTLeft1 1 | BombDefused 1
    execute if score Allowance GameProcess matches 1 if score CTLeft1 GameProcess matches 1 if score BombDefused GameProcess matches 1 run scoreboard players set Allowance GameProcess 2
        #剩余玩家只要拆弹了就是MVP
        execute if score Allowance GameProcess matches 2 run function mcgo:game/game_process/normalmode/mvp_broadcast/culculate_c4_countdown
        execute if score Allowance GameProcess matches 2 run execute as @a[team=CT,scores={DefuseC4=1}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_ct_cluntch_defuse
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0


##T
execute if score TWinTheRound GameProcess matches 1 run scoreboard players set Allowance GameProcess 1
    #TLeft1 0 | BombExploded 0
    execute if score Allowance GameProcess matches 1 if score TLeft1 GameProcess matches 0 if score BombExploded GameProcess matches 0 run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run function mcgo:game/game_process/normalmode/mvp_broadcast/search_for_high_kills
        execute if score Allowance GameProcess matches 2 run execute as @r[scores={sort=0..}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_highkill
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0
        #此时WinAllowance为0，不会使后面的指令执行

    #TLeft1 0 | BombExploded 1
    execute if score Allowance GameProcess matches 1 if score TLeft1 GameProcess matches 0 if score BombExploded GameProcess matches 1 run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run execute as @a[scores={PlantC4=1..}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_t_plant
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0

    #TLeft1 1 | BombExploded 0
    execute if score Allowance GameProcess matches 1 if score TLeft1 GameProcess matches 1 if score BombExploded GameProcess matches 0 run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run function mcgo:game/game_process/normalmode/mvp_broadcast/search_for_high_kills
        #剩余的玩家击杀数是最高的，则MVP为他自己
        execute if score Allowance GameProcess matches 2 run execute as @a[team=T,scores={Deaths=0}] if score @s Kills = #highKills sort run scoreboard players set Allowance GameProcess 3
            execute if score Allowance GameProcess matches 3 run execute as @a[team=T,scores={Deaths=0}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_cluntch_highkill
            execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0
        #剩余的玩家击杀数不是最高，则MVP为击杀数最高的
        execute if score Allowance GameProcess matches 2 run execute as @a[team=T,scores={Deaths=0}] if score @s Kills < #highKills sort run scoreboard players set Allowance GameProcess 3
            execute if score Allowance GameProcess matches 3 run execute as @r[scores={sort=0..}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_highkill
            execute if score Allowance GameProcess matches 3 run scoreboard players set Allowance GameProcess 0
        
    #TLeft1 1 | BombExploded 1
    execute if score Allowance GameProcess matches 1 if score TLeft1 GameProcess matches 1 if score BombExploded GameProcess matches 1 run scoreboard players set Allowance GameProcess 2
        #剩余玩家只要引爆C4了就是MVP
        execute if score Allowance GameProcess matches 2 run execute as @a[team=T,scores={PlantC4=1}] run function mcgo:game/game_process/normalmode/mvp_broadcast/print_t_cluntch_plant
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 0

