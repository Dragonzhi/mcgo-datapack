execute unless score CTSurrenderValid GameProcess matches 1 unless score TSurrenderValid GameProcess matches 1 run scoreboard players set Allowance GameProcess -1
    execute if score Allowance GameProcess matches -1 run tellraw @s [{"text":"未满足投降条件，无法发起投降！","color":"red"}]
    execute if score Allowance GameProcess matches -1 run scoreboard players set Allowance GameProcess 0

execute if score Voting Vote matches 1 run scoreboard players set Allowance GameProcess -1
    execute if score Allowance GameProcess matches -1 run tellraw @s [{"text":"当前有一投票项目正在进行，无法发起新投票！","color":"red"}]
    execute if score Allowance GameProcess matches -1 run scoreboard players set Allowance GameProcess 0


execute if score CTSurrenderValid GameProcess matches 1 if score Voting Vote matches 0 run scoreboard players set Allowance GameProcess 1
execute if score TSurrenderValid GameProcess matches 1 if score Voting Vote matches 0 run scoreboard players set Allowance GameProcess 1

    execute if score Allowance GameProcess matches 1 run scoreboard players set Voting Vote 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set @a Vote 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set @a Allowance 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set CTSurrender Vote 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set TSurrender Vote 0

    execute if score Allowance GameProcess matches 1 run execute if score CTSurrenderValid GameProcess matches 1 run execute store result score #playersNumSet Vote run execute if entity @a[team=CT]
    execute if score Allowance GameProcess matches 1 run execute if score TSurrenderValid GameProcess matches 1 run execute store result score #playersNumSet Vote run execute if entity @a[team=T]

    execute if score Allowance GameProcess matches 1 run execute if score CTSurrenderValid GameProcess matches 1 run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run tellraw @a[team=CT] [{"selector":"@s"},{"text":" 申请投降，请CT阵营玩家投票决定是否开始投降。若在10秒后存在玩家拒绝投降或没有投票，则投降失败！","color":"yellow"}]
        execute if score Allowance GameProcess matches 2 run tellraw @a[team=CT] [{"text":"是否同意投降？ ","color":"yellow"},{"text":"[同意]","color":"green","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/surrender/vote_affirmative"},"hoverEvent":{"action":"show_text","contents":"同意投降"}},{"text":"   "},{"text":"[拒绝]","color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/surrender/vote_rejective"},"hoverEvent":{"action":"show_text","contents":"拒绝投降"}}]
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 3

    execute if score Allowance GameProcess matches 1 run execute if score TSurrenderValid GameProcess matches 1 run scoreboard players set Allowance GameProcess 2
        execute if score Allowance GameProcess matches 2 run tellraw @a[team=T] [{"selector":"@s"},{"text":" 申请投降，请T阵营玩家投票决定是否开始投降。若在10秒后存在玩家拒绝投降或没有投票，则投降失败！","color":"yellow"}]
        execute if score Allowance GameProcess matches 2 run tellraw @a[team=T] [{"text":"是否同意投降？ ","color":"yellow"},{"text":"[同意]","color":"green","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/surrender/vote_affirmative"},"hoverEvent":{"action":"show_text","contents":"同意投降"}},{"text":"   "},{"text":"[拒绝]","color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/surrender/vote_rejective"},"hoverEvent":{"action":"show_text","contents":"拒绝投降"}}]
        execute if score Allowance GameProcess matches 2 run scoreboard players set Allowance GameProcess 3

    execute if score Allowance GameProcess matches 3 run schedule function mcgo:execute/vote_execute/surrender/execute_vote 10s append
    scoreboard players set Allowance GameProcess 0


