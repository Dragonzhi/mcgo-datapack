execute if entity @a[team=T] run execute if entity @a[team=CT] run scoreboard players set Allowance GameProcess 1
execute if score Allowance GameProcess matches 0 run tellraw @a [{"text":"CT和T双方尚未都有玩家，无法开始游戏！","color":"red"}]
    execute if score Allowance GameProcess matches 1 run execute if score mirage SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run execute if score inferno SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run execute if score dust2 SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run execute if score nuke SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run execute if score vertigo SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run execute if score ancient SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run execute if score anubis SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run execute if score train SelectedMap matches 1 run scoreboard players set Allowance GameProcess 2
    execute if score Allowance GameProcess matches 1 run tellraw @a [{"text":"尚未选图，无法开始游戏！","color":"red"}]
        execute if score Allowance GameProcess matches 2 run execute if score Voting Vote matches 1 run tellraw @s [{"text":"当前正在进行一项投票，无法新建新的投票！","color":"red"}]
        execute if score Allowance GameProcess matches 2 run execute if score Voting Vote matches 0 run function mcgo:execute/vote_execute/starting_normal_game/set_vote
        
#若成功开局，在start_game中会将S InGame和NormalMode GameProcess都设置为1，此处设为1是要经过开局倒计时检测