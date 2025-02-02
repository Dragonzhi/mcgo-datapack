#判断是否正在执行一个投票的内容在is_start_normal_game_valid.mcfunction中执行

execute if score Voting Vote matches 1 run scoreboard players set Allowance GameProcess -1
    execute if score Allowance GameProcess matches -1 run tellraw @s [{"text":"当前有一投票项目正在进行，无法发起新投票！","color":"red"}]
    execute if score Allowance GameProcess matches -1 run scoreboard players set Allowance GameProcess 0

execute if score Voting Vote matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Voting Vote 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set @a Vote 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set @a Allowance 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set ResetWorld Vote 0

    execute if score Allowance GameProcess matches 1 run execute store result score #CTNum Vote run execute if entity @a[team=CT]
    execute if score Allowance GameProcess matches 1 run execute store result score #TNum Vote run execute if entity @a[team=T]
    execute if score Allowance GameProcess matches 1 run scoreboard players operation #playersNumSet Vote = #CTNum Vote
    execute if score Allowance GameProcess matches 1 run scoreboard players operation #playersNumSet Vote += #TNum Vote

    #tellraw @a [{"score":{"name":"#playersNumSet","objective":"Vote"}}]

    execute if score Allowance GameProcess matches 1 run tellraw @a [{"selector":"@s"},{"text":" 尝试重置游戏，请要进行游戏的玩家投票决定是否重置游戏。若在10秒后存在玩家拒绝开始游戏或没有投票，则投票失败！","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"是否同意重置游戏？ ","color":"yellow"},{"text":"[同意]","color":"green","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/reset_world/vote_affirmative"},"hoverEvent":{"action":"show_text","contents":"同意重置游戏"}},{"text":"   "},{"text":"[拒绝]","color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/reset_world/vote_rejective"},"hoverEvent":{"action":"show_text","contents":"拒绝重置游戏"}}]

    execute if score Allowance GameProcess matches 1 run schedule function mcgo:execute/vote_execute/reset_world/execute_vote 10s append
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0