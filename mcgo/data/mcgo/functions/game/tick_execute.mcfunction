#时刻执行，判断场上局势

##其他杂项
function mcgo:game/weather_select/turn_to_selected_weather
execute if score S InGame matches 1 run function mcgo:execute/various_ingame_codes

##玩家击杀或阵亡
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_kill_or_died

##各个计时
execute if score S InGame matches 1 run function mcgo:execute/timer/timer_ingame_1
execute if score S InGame matches 0 run function mcgo:execute/timer/timer_ingame_0

##检测是否符合下包条件
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_plant_valid

##判断C4是否被安装
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_bomb_planted

##检测CT胜利条件
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_ct_wins

##检测T胜利条件
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_t_wins

##检测双方是否都有玩家
function mcgo:execute/is_valid/is_players_both_group

##检测游戏场次
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_round

##判断是否结束游戏
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_game_finished

# execute if score S InGame matches 1 run schedule function mcgo:game/tick_execute 1t append
