##其他游戏中每刻执行的杂项


spawnpoint @a[team=CT]
spawnpoint @a[team=T]

scoreboard players set @a[scores={Points=10000..}] Points 10000
execute if score CT MoneyGiving matches 5.. run scoreboard players set CT MoneyGiving 4
execute if score T MoneyGiving matches 5.. run scoreboard players set T MoneyGiving 4
execute if score CT MoneyGiving matches ..-1 run scoreboard players set CT MoneyGiving 0
execute if score T MoneyGiving matches ..-1 run scoreboard players set T MoneyGiving 0
execute as @e[type=item] run data modify entity @s Item.tag.GunUsed set value 1