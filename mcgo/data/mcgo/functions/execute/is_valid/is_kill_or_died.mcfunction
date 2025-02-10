##玩家死亡
#普通模式
execute as @a[team=T,scores={Deaths=1}] if score NormalMode GameProcess matches 1 run gamemode spectator @s
execute as @a[team=T,scores={Deaths=1}] if score NormalMode GameProcess matches 1 run scoreboard players add @s PlayDeaths 1
execute as @a[team=T,scores={Deaths=1}] if score NormalMode GameProcess matches 1 run scoreboard players set @s Deaths 2
execute as @a[team=CT,scores={Deaths=1}] if score NormalMode GameProcess matches 1 run gamemode spectator @s
execute as @a[team=CT,scores={Deaths=1}] if score NormalMode GameProcess matches 1 run scoreboard players add @s PlayDeaths 1
execute as @a[team=CT,scores={Deaths=1}] if score NormalMode GameProcess matches 1 run scoreboard players set @s Deaths 2
execute as @a[scores={PlayKill=1..}] run execute if entity @s[team=CT] if score CTLeft1 GameProcess matches 1 if score NormalMode GameProcess matches 1 run scoreboard players add CTLeft1Kills GameProcess 1
execute as @a[scores={PlayKill=1..}] run execute if entity @s[team=T] if score TLeft1 GameProcess matches 1 if score NormalMode GameProcess matches 1 run scoreboard players add TLeft1Kills GameProcess 1


##击杀得分
execute as @a[scores={PlayKill=1..}] run scoreboard players set @s Allowance 1
    #普通模式
    execute as @a[scores={PlayKill=1..}] if score NormalMode GameProcess matches 1 if score @s Allowance matches 1 unless score @s csgrenade_killcount_flashbang matches 1 unless score @s csgrenade_killcount_hegrenade matches 1 unless score @s csgrenade_killcount_incendiary matches 1 unless score @s csgrenade_killcount_molotov matches 1 unless score @s csgrenade_killcount_smokegrenade matches 1 run function mcgo:game/game_process/normalmode/non_grenade_kill_bonus

    execute as @a[scores={PlayKill=1..}] if score NormalMode GameProcess matches 1 if score @s csgrenade_killcount_flashbang matches 1 run scoreboard players set @s Allowance 2
    execute as @a[scores={PlayKill=1..}] if score NormalMode GameProcess matches 1 if score @s csgrenade_killcount_hegrenade matches 1 run scoreboard players set @s Allowance 2
    execute as @a[scores={PlayKill=1..}] if score NormalMode GameProcess matches 1 if score @s csgrenade_killcount_incendiary matches 1 run scoreboard players set @s Allowance 2
    execute as @a[scores={PlayKill=1..}] if score NormalMode GameProcess matches 1 if score @s csgrenade_killcount_molotov matches 1 run scoreboard players set @s Allowance 2
    execute as @a[scores={PlayKill=1..}] if score NormalMode GameProcess matches 1 if score @s csgrenade_killcount_smokegrenade matches 1 run scoreboard players set @s Allowance 2
        execute as @a[scores={PlayKill=1..}] if score NormalMode GameProcess matches 1 if score @s Allowance matches 2 run function mcgo:game/game_process/normalmode/grenade_kill_bonus
    
    #死亡竞赛
    execute as @a[scores={PlayKill=1..}] if score DeathMatch GameProcess matches 1 run function mcgo:game/game_process/deathmatch/kill_bonus
    #execute as @a[scores={PlayKill=1..}] run scoreboard players set @s Allowance 0


##击杀得分通用结尾
execute as @a[scores={PlayKill=1..}] run scoreboard players set @s Allowance 0
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s PlayKills 1
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s Kills 1
execute as @a[scores={PlayKill=1..}] run scoreboard players remove @s PlayKill 1
