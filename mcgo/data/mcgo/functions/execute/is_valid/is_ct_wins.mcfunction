##检测CT胜利条件

execute if score S InGame matches 1 run execute if entity @a[team=T] run execute unless entity @a[team=T,scores={Deaths=0}] run execute if score TAllDied GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set TAllDied GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
    #若检测不到Deaths为0的T，则设置TAllDied为1，且进入条件存在TAllDieD为0，防止重复进入该分支（设置T的Deaths为0会出现bug）

execute if score S InGame matches 1 run execute if entity @a[team=T] run execute if entity @e[name="C 4 Defused"] run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run kill @e[name="C 4 Defused"]
    execute if score Allowance GameProcess matches 1 run scoreboard players set BombDefused GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0


#如果C4被拆了或者在T没有安包的情况下T被歼灭或时间耗尽，则CT获得本局胜利
execute if score S InGame matches 1 run execute if entity @a[team=T] run execute if score TAllDied GameProcess matches 1 run execute if score RoundFinished GameProcess matches 0 run execute if score BombPlanted GameProcess matches 0 run scoreboard players set CTWinTheRound GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run tellraw @a[team=CT] [{"text":"歼灭T方，回合胜利 ","color":"white"},{"text":"+$3250","color":"green"}]
    execute if score CTWinTheRound GameProcess matches 1 run title @a title [{"text":"CT阵营胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a[team=CT] ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.experience_orb.pickup music @a[team=T] ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run function mcgo:game/game_process/normalmode/defeat_bonus
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add CT Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add Finished_Round Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players remove CT MoneyGiving 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add T MoneyGiving 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add @a[team=CT] Points 3250
    execute if score CTWinTheRound GameProcess matches 1 run schedule function mcgo:game/game_process/normalmode/start_new_round 8s append
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set RoundFinished GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 0
    #一定要把CTWinTheRound设为0！要不然会一直执行！

execute if score S InGame matches 1 run execute if entity @a[team=T] run execute if score BombDefused GameProcess matches 1 run execute if score RoundFinished GameProcess matches 0 run scoreboard players set CTWinTheRound GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run tellraw @a[team=CT] [{"text":"成功拆除C4，回合胜利 ","color":"white"},{"text":"+$3500","color":"green"}]
    execute if score CTWinTheRound GameProcess matches 1 run title @a title [{"text":"CT阵营胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a[team=CT] ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.experience_orb.pickup music @a[team=T] ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run function mcgo:game/game_process/normalmode/defeat_bonus
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add CT Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add Finished_Round Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players remove CT MoneyGiving 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add T MoneyGiving 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add @a[team=CT] Points 3500
    execute if score CTWinTheRound GameProcess matches 1 run schedule function mcgo:game/game_process/normalmode/start_new_round 8s append
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set RoundFinished GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 0
    #一定要把CTWinTheRound设为0！要不然会一直执行！

execute if score S InGame matches 1 run execute if entity @a[team=T] run execute if score 游戏倒计时 Timer matches 0 run execute if score RoundFinished GameProcess matches 0 run scoreboard players set CTWinTheRound GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run tellraw @a[team=CT] [{"text":"时间耗尽，回合胜利 ","color":"white"},{"text":"+$3250","color":"green"}]
    execute if score CTWinTheRound GameProcess matches 1 run title @a title [{"text":"CT阵营胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a[team=CT] ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.experience_orb.pickup music @a[team=T] ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run function mcgo:game/game_process/normalmode/defeat_bonus
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add CT Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add Finished_Round Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players remove CT MoneyGiving 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add T MoneyGiving 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add @a[team=CT] Points 3250
    execute if score CTWinTheRound GameProcess matches 1 run schedule function mcgo:game/game_process/normalmode/start_new_round 8s append
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set RoundFinished GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 0
    #一定要把CTWinTheRound设为0！要不然会一直执行！
