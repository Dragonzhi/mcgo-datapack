scoreboard players operation #CTBackwards Wins = T Wins
scoreboard players operation #CTBackwards Wins -= CT Wins

execute if score #CTBackwards Wins matches 7.. if score CTSurrenderValid GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set CTSurrenderValid GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @a[team=CT] [{"text":"CT方已落后T方超过6分，是否","color":"yellow"},{"text":"投降","color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/surrender/set_vote"},"hoverEvent":{"action":"show_text","contents":"点击发起投降"}},{"text":"？","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

scoreboard players operation #TBackwards Wins = CT Wins
scoreboard players operation #TBackwards Wins -= T Wins

execute if score #TBackwards Wins matches 7.. if score TSurrenderValid GameProcess matches 0 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set TSurrenderValid GameProcess 1
    execute if score Allowance GameProcess matches 1 run tellraw @a[team=T] [{"text":"T方已落后CT方超过6分，是否","color":"yellow"},{"text":"投降","color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:execute/vote_execute/surrender/set_vote"},"hoverEvent":{"action":"show_text","contents":"点击发起投降"}},{"text":"？","color":"yellow"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score #CTBackwards Wins matches ..6 if score CTSurrenderValid GameProcess matches 1 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set CTSurrenderValid GameProcess 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score #TBackwards Wins matches ..6 if score TSurrenderValid GameProcess matches 1 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set TSurrenderValid GameProcess 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0