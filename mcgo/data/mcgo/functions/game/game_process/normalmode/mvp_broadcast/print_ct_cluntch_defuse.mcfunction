tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]

execute if score #RealCountDownMS Timer matches -1 if score CTLeft1Kills GameProcess matches 0 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"成功拆除C4并赢得本局胜利！","color":"white","bold":false}]

execute if score #RealCountDownMS Timer matches -1 if score CTLeft1Kills GameProcess matches 1.. run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"击杀了","color":"white","bold":false},{"score":{"name":"CTLeft1Kills","objective":"GameProcess"},"bold":true,"color":"yellow"},{"text":"敌人并成功拆除了C4！","color":"white","bold":false}]

execute if score #RealCountDownMS Timer matches 0.. if score CTLeft1Kills GameProcess matches 0 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"在C4爆炸前 ","color":"white","bold": false},{"score":{"name":"#RealCountDownTicks","objective":"Timer"},"bold":true,"color":"yellow"},{"text":" ticks（ ","color":"white","bold": false},{"text":"0.","bold":true,"color":"yellow"},{"score":{"name":"#RealCountDownMS","objective":"Timer"},"bold":true,"color":"yellow"},{"text":" 秒）","color":"white","bold": false},{"text":"成功拆除了C4！","color":"white","bold":false}]

execute if score #RealCountDownMS Timer matches 0.. if score CTLeft1Kills GameProcess matches 1.. run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"text":"在队友全阵亡后，","color":"white","bold": false},{"selector":"@s","bold":false},{"text":"击杀了","color":"white","bold":false},{"score":{"name":"CTLeft1Kills","objective":"GameProcess"},"bold":true,"color":"yellow"},{"text":"名敌人并在C4爆炸前 ","color":"white","bold": false},{"score":{"name":"#RealCountDownTicks","objective":"Timer"},"bold":true,"color":"yellow"},{"text":" ticks（ ","color":"white","bold": false},{"text":"0.","bold":true,"color":"yellow"},{"score":{"name":"#RealCountDownMS","objective":"Timer"},"bold":true,"color":"yellow"},{"text":" 秒）","color":"white","bold": false},{"text":"成功拆除了C4！","color":"white","bold":false}]

tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]



scoreboard players add @s MVP 1