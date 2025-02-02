#判断是否结束游戏
execute if entity @a[scores={ArmsRaceProcess=18..}] if score GameFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set GameFinished GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set ArmsRace_18ScoresReached GameProcess 1
    execute if score Allowance GameProcess matches 1 run function mcgo:game/game_process/arms_race/finish_game
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score seconds GameProcess matches ..0 if score GameFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set GameFinished GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set ArmsRace_TimeOut GameProcess 1
    execute if score Allowance GameProcess matches 1 run function mcgo:game/game_process/arms_race/finish_game
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0