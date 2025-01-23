#半场换边时执行
#此时S InGame为0，之后执行start_new_round中会再变为1

execute if score TWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a ~ ~ ~ 256

scoreboard players set S InGame 0
scoreboard players operation temp Wins = CT Wins
scoreboard players operation CT Wins = T Wins
scoreboard players operation T Wins = temp Wins
scoreboard players reset temp Wins
team join switch @a[team=T]
team join T @a[team=CT]
team join CT @a[team=switch]
title @a subtitle [{"text":"已完成8次对局","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a title [{"text":"中场双方互换阵营","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players set @a[team=CT] Points 800
scoreboard players set @a[team=T] Points 800
clear @a[team=T]
clear @a[team=CT]

scoreboard players set CT MoneyGiving 1
scoreboard players set T MoneyGiving 1
scoreboard players set HalfTimeSwitch GameProcess 1