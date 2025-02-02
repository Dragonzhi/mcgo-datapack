tellraw @a {"text":"已初始化游戏","color":"yellow"}

scoreboard players set S InGame 0
scoreboard objectives setdisplay sidebar
#清除sidebar

effect clear @a[team=T]
effect clear @a[team=CT]
#清除双方效果
clear @a[team=CT]
clear @a[team=T]
#清除双方背包

kill @e[type=item]
kill @e[type=experience_orb]
kill @e[type=area_effect_cloud]
kill @e[type=block_bettle:c_4]
gamemode adventure @a[team=T]
gamemode adventure @a[team=CT]

function mcgo:game/reset/set_scoreboard
function mcgo:game/reset/reset_scoreboard1
function mcgo:game/reset/reset_scoreboard2
function mcgo:game/reset/reset_team
function mcgo:game/reset/reset_gamerule
schedule clear mcgo:game/reset/reset_world
schedule clear mcgo:execute/timer/timer_normal_game
schedule clear mcgo:execute/timer/timer_normal_shop
schedule clear mcgo:execute/timer/timer_normal_finish
schedule clear mcgo:execute/timer/timer_starting_arms_race
schedule clear mcgo:execute/timer/timer_starting_normal_game
schedule clear mcgo:execute/timer/timer_arms_race
schedule clear mcgo:execute/vote_execute/starting_normal_game/execute_vote
schedule clear mcgo:execute/vote_execute/surrender/execute_vote
schedule clear mcgo:execute/vote_execute/starting_arms_race/execute_vote

execute as @a run attribute @s generic.max_health base set 20