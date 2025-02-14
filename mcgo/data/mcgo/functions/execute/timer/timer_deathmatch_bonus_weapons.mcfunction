execute if score S InGame matches 1 if score DeathMatchBonusWeaponGiveTimer GameProcess matches 0.. run scoreboard players remove DeathMatchBonusWeaponGiveTimer GameProcess 1
execute if score S InGame matches 1 if score DeathMatchBonusWeaponDurationTimer GameProcess matches 0.. run execute store result bossbar mcs:deathmatch_bonus_weapons value run scoreboard players remove DeathMatchBonusWeaponDurationTimer GameProcess 1

#每一轮回，给予一次奖励武器,同时重新给予一次轮回时间
execute if score DeathMatchBonusWeaponGiveTimer GameProcess matches 0 run scoreboard players set DeathMatchBonusWeaponDurationTimer GameProcess 30
execute if score DeathMatchBonusWeaponGiveTimer GameProcess matches 0 run bossbar set mcs:deathmatch_bonus_weapons visible true
execute if score DeathMatchBonusWeaponGiveTimer GameProcess matches 0 run execute as @r run function mcgo:game/game_process/deathmatch/execute_bonus_weapons
execute if score DeathMatchBonusWeaponGiveTimer GameProcess matches 0 run scoreboard players set DeathMatchBonusWeaponGiveTimer GameProcess 100
#当时间结束时，设置BonusWeaponsSeed DeathMatchSeed为0
execute if score DeathMatchBonusWeaponDurationTimer GameProcess matches 0 run scoreboard players set BonusWeaponsSeed DeathMatchSeed 0
execute if score DeathMatchBonusWeaponDurationTimer GameProcess matches 0 run bossbar set mcs:deathmatch_bonus_weapons visible false


#除非游戏结束，否则一直执行
execute if score S InGame matches 1 run schedule function mcgo:execute/timer/timer_deathmatch_bonus_weapons 1s append