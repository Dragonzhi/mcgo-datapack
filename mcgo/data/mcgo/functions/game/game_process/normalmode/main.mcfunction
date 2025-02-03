##其他杂项
execute if score S InGame matches 1 run function mcgo:game/game_process/normalmode/other_various_codes

##玩家击杀或阵亡
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_kill_or_died

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

##检测能否投降
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_surrender_valid

##判断是否结束游戏
execute if score S InGame matches 1 run function mcgo:execute/is_valid/is_normal_game_finished
