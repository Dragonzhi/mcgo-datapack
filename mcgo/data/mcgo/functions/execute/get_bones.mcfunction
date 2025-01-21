

execute if score CT MoneyGiving matches 0 run scoreboard players add @a[team=CT] Points 1400
execute if score CT MoneyGiving matches 0 run tellraw @a[team=CT] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$1400","color":"green"}]
execute if score CT MoneyGiving matches 1 run scoreboard players add @a[team=CT] Points 1900
execute if score CT MoneyGiving matches 1 run tellraw @a[team=CT] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$1900","color":"green"}]
execute if score CT MoneyGiving matches 2 run scoreboard players add @a[team=CT] Points 2400
execute if score CT MoneyGiving matches 2 run tellraw @a[team=CT] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$2400","color":"green"}]
execute if score CT MoneyGiving matches 3 run scoreboard players add @a[team=CT] Points 2900
execute if score CT MoneyGiving matches 3 run tellraw @a[team=CT] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$2900","color":"green"}]
execute if score CT MoneyGiving matches 4 run scoreboard players add @a[team=CT] Points 3400
execute if score CT MoneyGiving matches 4 run tellraw @a[team=CT] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$3400","color":"green"}]

execute if score CT MoneyGiving matches 0 run scoreboard players add @a[team=T] Points 1400
execute if score CT MoneyGiving matches 0 run tellraw @a[team=T] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$1400","color":"green"}]
execute if score CT MoneyGiving matches 1 run scoreboard players add @a[team=T] Points 1900
execute if score CT MoneyGiving matches 1 run tellraw @a[team=T] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$1900","color":"green"}]
execute if score CT MoneyGiving matches 2 run scoreboard players add @a[team=T] Points 2400
execute if score CT MoneyGiving matches 2 run tellraw @a[team=T] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$2400","color":"green"}]
execute if score CT MoneyGiving matches 3 run scoreboard players add @a[team=T] Points 2900
execute if score CT MoneyGiving matches 3 run tellraw @a[team=T] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$2900","color":"green"}]
execute if score CT MoneyGiving matches 4 run scoreboard players add @a[team=T] Points 3400
execute if score CT MoneyGiving matches 4 run tellraw @a[team=T] [{"text":"输掉本回合获得 ","color":"white"},{"text":"$3400","color":"green"}]

