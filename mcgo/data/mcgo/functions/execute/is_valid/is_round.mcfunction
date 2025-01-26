##检测游戏场次

#检测换边
execute if score S InGame matches 1 run execute if score Finished_Round Wins matches 8 run execute if score HalfTimeSwitch GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set HalfTimeSwitch GameProcess 1
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/game_process/normalmode/half_time_switch 5s append
    #half_time_switch只执行暗箱换边操作，不传送玩家。start_new_round中执行。此时HalfTimeSwitch已为1，防止重复进入该分支
    execute if score Allowance GameProcess matches 1 run schedule clear mcgo:game/game_process/normalmode/start_new_round
    execute if score Allowance GameProcess matches 1 run schedule function mcgo:game/game_process/normalmode/start_new_round 10s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

#赛点检测
execute if score S InGame matches 1 run execute if score CT Wins matches 8 run execute if score CTGamePoint GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set CTGamePoint GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score S InGame matches 1 run execute if score T Wins matches 8 run execute if score TGamePoint GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set TGamePoint GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
#平局检测
execute if score S InGame matches 1 run execute if score T Wins matches 8 if score CT Wins matches 8 run execute if score GameFinished GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Tie GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
#游戏胜利检测
execute if score S InGame matches 1 run execute if score CT Wins matches 9.. run execute if score CTWinTheGame GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set CTWinTheGame GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute if score S InGame matches 1 run execute if score T Wins matches 9.. run execute if score TWinTheGame GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set TWinTheGame GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0