scoreboard players set Voting Vote 1
scoreboard players set @a Vote 0
scoreboard players set @a Allowance 0
scoreboard players set StartingNormalGame Vote 0

execute store result score #CTNum Vote run execute if entity @a[team=CT]
execute store result score #TNum Vote run execute if entity @a[team=T]
scoreboard players operation #playersNumSet Vote = #CTNum Vote
scoreboard players operation #playersNumSet Vote += #TNum Vote

tellraw @a [{"score":{"name":"#playersNumSet","objective":"Vote"}}]

tellraw @a [{"selector":"@s"},{"text":" 尝试开启游戏，请要进行游戏的玩家投票决定是否开始游戏。若在8秒后存在玩家拒绝开始游戏或没有投票，则游戏将不会开始！","color":"yellow"}]
tellraw @a [{"text":"\u662f\u5426\u5f00\u59cb\u6e38\u620f\uff1f","color":"yellow"},{"text":" "},{"text":"[\u540c\u610f]","color":"green","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/starting_normal_game/vote_affirmative"},"hoverEvent":{"action":"show_text","contents":"\u540c\u610f\u5f00\u59cb\u6e38\u620f"}},{"text":"  "},{"text":"[\u62d2\u7edd]","color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/starting_normal_game/vote_rejective"},"hoverEvent":{"action":"show_text","contents":"\u62d2\u7edd\u5f00\u59cb\u6e38\u620f"}}]

schedule function mcgo:execute/vote_execute/starting_normal_game/execute_vote 8s append
