execute store result score #CTNum sort run execute if entity @a[team=CT]
execute store result score #TNum sort run execute if entity @a[team=T]
#分别获取双方人数，如果当前MVP玩家的击杀数等于敌方玩家数，则播报王牌

execute if score CTWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]
execute if score TWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"yellow"}]

execute if score TLeft1Kills GameProcess >= #CTNum sort if score TWinTheRound GameProcess matches 1 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"王牌！","color":"yellow","bold":false},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"孤军奋战，击杀了敌方","color":"white","bold":false},{"text":"所有","color":"yellow","bold":true},{"text":"玩家！","color":"white","bold":false}]

execute if score CTLeft1Kills GameProcess >= #TNum sort if score CTWinTheRound GameProcess matches 1 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"王牌！","color":"yellow","bold":false},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"孤军奋战，击杀了敌方","color":"white","bold":false},{"text":"所有","color":"yellow","bold":true},{"text":"玩家并赢得本局胜利！","color":"white","bold":false}]

execute unless score TLeft1Kills GameProcess >= #TNum sort if score TWinTheRound GameProcess matches 1 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"孤军奋战，击杀了","color":"white","bold":false},{"score":{"name":"TLeft1Kills","objective":"GameProcess"},"color":"yellow","bold":true},{"text":"名敌人并赢得本局胜利！","color":"white","bold":false}]

execute unless score CTLeft1Kills GameProcess >= #CTNum sort if score CTWinTheRound GameProcess matches 1 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"孤军奋战，击杀了","color":"white","bold":false},{"score":{"name":"CTLeft1Kills","objective":"GameProcess"},"color":"yellow","bold":true},{"text":"名敌人并赢得本局胜利！","color":"white","bold":false}]

execute if score CTWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]
execute if score TWinTheRound GameProcess matches 1 run tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"yellow"}]

scoreboard players add @s MVP 1