execute if score S InGame matches 1 if score ArmsRace GameProcess matches 1 if score seconds GameProcess matches 1.. run scoreboard players remove seconds GameProcess 1
execute if score S InGame matches 1 if score ArmsRace GameProcess matches 1 if score seconds GameProcess matches 1.. run schedule function mcgo:execute/timer/timer_arms_race 1s append

execute if score seconds GameProcess matches 420 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"text":"7","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？打你的枪枪喵❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

execute if score seconds GameProcess matches 360 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"text":"6","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？打你的枪枪喵❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

execute if score seconds GameProcess matches 300 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"text":"5","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？打你的枪枪喵❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

execute if score seconds GameProcess matches 240 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"text":"4","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？打你的枪枪喵❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

execute if score seconds GameProcess matches 180 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"text":"3","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？打你的枪枪喵❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

execute if score seconds GameProcess matches 120 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"text":"2","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？是不是怕自己时间快不够了喵❤？像你这样的杂鱼，就只能这样了喵❤~杂鱼❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

execute if score seconds GameProcess matches 60 run tellraw @a [{"text":"[提示]","color":"yellow","bold":false},{"text":"还有 ","color":"white","bold":false},{"text":"1","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"杂鱼❤~看什么看？是不是怕自己时间快不够了喵❤？像你这样的杂鱼，就只能这样了喵❤~杂鱼❤~","color":"yellow"}}},{"text":" 分钟！","color":"white","bold":false}]

