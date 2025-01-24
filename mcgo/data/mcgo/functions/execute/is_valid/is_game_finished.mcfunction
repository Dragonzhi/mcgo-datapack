##判断是否结束游戏
execute if score CTWinTheGame GameProcess matches 1 run execute if score GameFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set GameFinished GameProcess 1
    execute if score Allowance GameProcess matches 1 run schedule clear mcgo:game/game_process/start_new_round
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/game_process/finish_game 5s append
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/reset/reset_world 10s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score TWinTheGame GameProcess matches 1 run execute if score GameFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set GameFinished GameProcess 1
    execute if score Allowance GameProcess matches 1 run schedule clear mcgo:game/game_process/start_new_round
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/game_process/finish_game 5s append
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/reset/reset_world 10s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score Tie GameProcess matches 1 run execute if score GameFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set GameFinished GameProcess 1
    execute if score Allowance GameProcess matches 1 run schedule clear mcgo:game/game_process/start_new_round
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/game_process/finish_game 5s append
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/reset/reset_world 10s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0