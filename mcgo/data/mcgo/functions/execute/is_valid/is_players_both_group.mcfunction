##检测双方是否都有玩家

#若对局开始后检测到没有CT方玩家，则输出相应内容。将S InGame设为0，防止重复执行以上语句
execute if score S InGame matches 1 run execute unless entity @a[team=CT] run scoreboard players set CTMissing GameProcess 1
    
    execute if score S InGame matches 1 run execute if score CTMissing GameProcess matches 1 run tellraw @a [{"text":"检测到CT方无单位！若在2分钟后仍然如此，则游戏重置！","color":"red"}]
    execute if score S InGame matches 1 run execute if score CTMissing GameProcess matches 1 run schedule function mcgo:game/reset/reset_world 120s append
    execute if score S InGame matches 1 run execute if score CTMissing GameProcess matches 1 run scoreboard players set S InGame 0

#若在时间内检测到T方玩家，则继续游戏，并判CT胜利
execute if score S InGame matches 0 run execute if entity @a[team=CT] run execute if score CTMissing GameProcess matches 1 run scoreboard players set ReturnToTheGame GameProcess 1
    execute if score ReturnToTheGame GameProcess matches 1 run tellraw @a [{"text":"重新检测到CT方玩家，游戏将开始新的一局！","color":"yellow"}]
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set S InGame 1
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set CTAllDied GameProcess 1
    execute if score ReturnToTheGame GameProcess matches 1 run schedule clear mcgo:game/reset/reset_world
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set CTMissing GameProcess 0
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set ReturnToTheGame GameProcess 0

#若对局开始后检测到没有T方玩家，则输出相应内容。将S InGame设为0，防止重复执行以上语句
execute if score S InGame matches 1 run execute unless entity @a[team=T] run scoreboard players set TMissing GameProcess 1
    
    execute if score S InGame matches 1 run execute if score TMissing GameProcess matches 1 run tellraw @a [{"text":"检测到T方无单位！若在2分钟后仍然如此，则游戏重置！","color":"red"}]
    execute if score S InGame matches 1 run execute if score TMissing GameProcess matches 1 run schedule function mcgo:game/reset/reset_world 120s append
    execute if score S InGame matches 1 run execute if score TMissing GameProcess matches 1 run scoreboard players set S InGame 0

#若在时间内检测到T方玩家，则继续游戏，并判CT胜利
execute if score S InGame matches 0 run execute if entity @a[team=T] run execute if score TMissing GameProcess matches 1 run scoreboard players set ReturnToTheGame GameProcess 1
    execute if score ReturnToTheGame GameProcess matches 1 run tellraw @a [{"text":"重新检测到T方玩家，游戏将开始新的一局！","color":"yellow"}]
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set S InGame 1
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set TAllDied GameProcess 1
    execute if score ReturnToTheGame GameProcess matches 1 run schedule clear mcgo:game/reset/reset_world
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set TMissing GameProcess 0
    execute if score ReturnToTheGame GameProcess matches 1 run scoreboard players set ReturnToTheGame GameProcess 0
    