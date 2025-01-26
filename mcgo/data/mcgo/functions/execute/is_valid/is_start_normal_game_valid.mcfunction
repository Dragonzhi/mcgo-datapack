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
        execute if score Allowance GameProcess matches 2 run scoreboard players set NormalMode GameProcess 1
        execute if score Allowance GameProcess matches 2 run function mcgo:game/game_process/normalmode/start_game
