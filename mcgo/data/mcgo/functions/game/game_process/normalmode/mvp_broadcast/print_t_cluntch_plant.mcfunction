tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"yellow"}]

execute if score TLeft1Kills GameProcess matches 0 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"成功引爆C4并赢得本局胜利！","color":"white","bold":false}]

execute if score TLeft1Kills GameProcess matches 1.. run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"击杀了","color":"white","bold":false},{"score":{"name":"CTLeft1Kills","objective":"GameProcess"},"bold":true,"color":"yellow"},{"text":"敌人并成功引爆了C4！","color":"white","bold":false}]

tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"yellow"}]