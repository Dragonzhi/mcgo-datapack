#判断是否正在执行一个投票的内容在is_start_normal_game_valid.mcfunction中执行

playsound minecraft:ui.toast.in block @a ~ ~ ~ 15 1 1
scoreboard players set Voting Vote 1
scoreboard players set @a Vote 0
scoreboard players set @a Allowance 0
scoreboard players set StartingArmsRace Vote 0

execute store result score #CTNum Vote run execute if entity @a[team=CT]
execute store result score #TNum Vote run execute if entity @a[team=T]
scoreboard players operation #playersNumSet Vote = #CTNum Vote
scoreboard players operation #playersNumSet Vote += #TNum Vote

#tellraw @a [{"score":{"name":"#playersNumSet","objective":"Vote"}}]

tellraw @a [{"selector":"@s"},{"text":" 尝试开启 军备竞赛 ，请要进行游戏的玩家投票决定是否开始游戏。若在10秒后存在玩家拒绝开始游戏或没有投票，则游戏将不会开始！","color":"yellow"}]
tellraw @a [{"text":"是否同意开始游戏？ ","color":"yellow"},{"text":"[同意]","color":"green","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/starting_arms_race/vote_affirmative"},"hoverEvent":{"action":"show_text","contents":"同意开始游戏"}},{"text":"   "},{"text":"[拒绝]","color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/starting_arms_race/vote_rejective"},"hoverEvent":{"action":"show_text","contents":"拒绝开始游戏"}}]

schedule function mcgo:execute/vote_execute/starting_arms_race/execute_vote 10s append
