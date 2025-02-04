execute store result score #CTNum sort run execute if entity @a[team=CT]
execute store result score #TNum sort run execute if entity @a[team=T]
#分别获取双方人数，如果当前MVP玩家的击杀数等于敌方玩家数，则播报王牌

execute if score CTWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]
execute if score TWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"yellow"}]
execute if score @s sort >= #CTNum sort if score TWinTheRound GameProcess matches 1 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"王牌！","color":"yellow","bold":false},{"selector":"@s","bold":false},{"text":"击杀了敌方","color":"white","bold":false},{"text":"所有","color":"yellow","bold":true},{"text":"玩家！","color":"white","bold":false}]
execute if score @s sort >= #TNum sort if score CTWinTheRound GameProcess matches 1 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"王牌！","color":"yellow","bold":false},{"selector":"@s","bold":false},{"text":"击杀了敌方","color":"white","bold":false},{"text":"所有","color":"yellow","bold":true},{"text":"玩家！","color":"white","bold":false}]
execute unless score @s sort >= #CTNum sort unless score @s sort >= #TNum sort run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":"击杀了","color":"white","bold":false},{"score":{"name":"@s","objective":"Kills"},"color":"yellow","bold":true},{"text":"名敌人！","color":"white","bold":false}]
execute if score CTWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]
execute if score TWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"yellow"}]

scoreboard players add @s MVP 1