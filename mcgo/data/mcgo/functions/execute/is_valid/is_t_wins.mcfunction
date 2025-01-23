##检测T胜利条件

execute if score S InGame matches 1 run execute if entity @a[team=CT] run execute unless entity @a[team=CT,scores={Deaths=0}] run execute if score CTAllDied GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set CTAllDied GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
    #若检测不到Deaths为0的CT，则设置CTAllDied为1，且进入条件存在CTAllDieD为0，防止重复进入该分支（设置CT的Deaths为0会出现bug）

execute if score S InGame matches 1 run execute if entity @a[team=CT] run execute if entity @e[name="C 4 Exploded"] run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run kill @e[name="C 4 Exploded"]
    execute if score Allowance GameProcess matches 1 run scoreboard players set BombExploded GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

#若CT被歼灭或C4成功引爆，则T获胜
execute if score S InGame matches 1 run execute if entity @a[team=CT] run execute if score CTAllDied GameProcess matches 1 run execute if score RoundFinished GameProcess matches 0 run scoreboard players set TWinTheRound GameProcess 1
    execute if score TWinTheRound GameProcess matches 1 run tellraw @a[team=T] [{"text":"歼灭CT方，回合胜利 ","color":"white"},{"text":"+$3250","color":"green"}]
    execute if score TWinTheRound GameProcess matches 1 run title @a title [{"text":"T阵营胜利","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score TWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a[team=T] ~ ~ ~ 256
    execute if score TWinTheRound GameProcess matches 1 run playsound minecraft:entity.experience_orb.pickup music @a[team=CT] ~ ~ ~ 256
    execute if score TWinTheRound GameProcess matches 1 run function mcgo:game/game_process/defeat_bonus
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add T Wins 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add Finished_Round Wins 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add CT MoneyGiving 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players remove T MoneyGiving 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add @a[team=T] Points 3250
    execute if score TWinTheRound GameProcess matches 1 run schedule function mcgo:game/game_process/start_new_round 8s append
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players set RoundFinished GameProcess 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players set TWinTheRound GameProcess 0

execute if score S InGame matches 1 run execute if entity @a[team=CT] run execute if score BombExploded GameProcess matches 1 run execute if score RoundFinished GameProcess matches 0 run scoreboard players set TWinTheRound GameProcess 1
    execute if score TWinTheRound GameProcess matches 1 run tellraw @a[team=T] [{"text":"成功引爆，回合胜利 ","color":"white"},{"text":"+$3500","color":"green"}]
    execute if score TWinTheRound GameProcess matches 1 run title @a title [{"text":"T阵营胜利","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score TWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a[team=T] ~ ~ ~ 256
    execute if score TWinTheRound GameProcess matches 1 run playsound minecraft:entity.experience_orb.pickup music @a[team=CT] ~ ~ ~ 256
    execute if score TWinTheRound GameProcess matches 1 run function mcgo:game/game_process/defeat_bonus
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add T Wins 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add Finished_Round Wins 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add CT MoneyGiving 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players remove T MoneyGiving 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players add @a[team=T] Points 3500
    execute if score TWinTheRound GameProcess matches 1 run schedule function mcgo:game/game_process/start_new_round 8s append
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players set RoundFinished GameProcess 1
    execute if score TWinTheRound GameProcess matches 1 run scoreboard players set TWinTheRound GameProcess 0