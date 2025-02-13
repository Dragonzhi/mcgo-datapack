#bossbar要绑定在每一个人身上，才能让每一个人看到这个bossbar，即bossbar set <id> players @a
bossbar remove mcs:arms_race_game_process
bossbar add mcs:arms_race_game_process [{"text":"军备竞赛剩余时间","color":"yellow"}]
bossbar set mcs:arms_race_game_process style progress
bossbar set mcs:arms_race_game_process max 480
bossbar set mcs:arms_race_game_process players @a
bossbar set mcs:arms_race_game_process visible false

bossbar remove mcs:deathmatch_game_process
bossbar add mcs:deathmatch_game_process [{"text":"死亡竞赛剩余时间","color":"yellow"}]
bossbar set mcs:deathmatch_game_process style progress
bossbar set mcs:deathmatch_game_process max 600
bossbar set mcs:deathmatch_game_process players @a
bossbar set mcs:deathmatch_game_process visible false

bossbar remove mcs:deathmatch_bonus_weapons
bossbar add mcs:deathmatch_bonus_weapons [{"text":"死亡竞赛奖励武器：","color":"yellow"},{"storage":"mcs:gun_name","nbt":"GunName","nbttype":"string","color":"green","bold":true}]
bossbar set mcs:deathmatch_bonus_weapons style progress
bossbar set mcs:deathmatch_bonus_weapons max 30
bossbar set mcs:deathmatch_bonus_weapons players @a
bossbar set mcs:deathmatch_bonus_weapons visible false