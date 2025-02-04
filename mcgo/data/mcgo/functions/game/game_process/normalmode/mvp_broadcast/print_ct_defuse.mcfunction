tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]
execute if score #RealCountDownMS Timer matches -1 run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":"成功拆除了C4！","color":"white","bold":false}]
execute if score #RealCountDownMS Timer matches 0.. run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":"在C4爆炸前 ","color":"white","bold": false},{"score":{"name":"#RealCountDownTicks","objective":"Timer"},"bold":true,"color":"yellow"},{"text":" ticks（ ","color":"white","bold": false},{"text":"0.","bold":true,"color":"yellow"},{"score":{"name":"#RealCountDownMS","objective":"Timer"},"bold":true,"color":"yellow"},{"text":" 秒）","color":"white","bold": false},{"text":"成功拆除了C4！","color":"white","bold":false}]
tellraw @a [{"text":"-+-=-+-+-=-+-+-=-+-+-=-+-","color":"aqua"}]



scoreboard players add @s MVP 1