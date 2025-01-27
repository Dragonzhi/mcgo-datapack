
function mcgo:game/get_guns/search_for_grenade

scoreboard players set @s Allowance 0
#tellraw @s [{"score":{"name":"@s","objective":"mcs"},"color":"yellow"}]
execute if score @s mcs matches 4.. run scoreboard players set @s Allowance 1
    execute if score @s Allowance matches 1 run tellraw @s [{"text":"你的背包中存在四个及以上的手雷，请检查背包！","color":"red"}]
    execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0

execute if score @s mcs matches ..3 run scoreboard players set @s Allowance 1

    
