##
 # ct_win3.mcfunction
 # 
 #
 # Created by .
##
tellraw @a {"text":"C4已拆除","color":"white"}
execute if score CTWinTheRound GameProcess matches 1 run tellraw @a[team=CT] [{"text":"成功拆除C4，回合胜利 ","color":"white"},{"text":"+$3300","color":"green"}]
    execute if score CTWinTheRound GameProcess matches 1 run title @a title [{"text":"CT阵营胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 2
    #相当于给defeat_bonus.mcfunction传入Allowance为2的参数
    execute if score CTWinTheRound GameProcess matches 2 run function mcgo:game/defeat_bonus
    #defeat_bonus.mcfunction结束时设置Allowance为1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add CT Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add @a[team=CT] Points 3500
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set S InGame 0
    execute if score CTWinTheRound GameProcess matches 1 run schedule function mcgo:game/start_new_round 5s append
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 0