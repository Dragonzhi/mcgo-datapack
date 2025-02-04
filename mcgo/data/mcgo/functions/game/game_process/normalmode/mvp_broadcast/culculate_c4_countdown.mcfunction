#??????????????????????
scoreboard players set #RealCountDownSeconds Timer 0
execute store result score #RealCountDownSeconds Timer run scoreboard players operation #40 Timer -= C4CountDownSeconds Timer
execute if score C4CountDownTicks Timer matches 1.. run scoreboard players remove #RealCountDownSeconds Timer 1

scoreboard players set #RealCountDownTicks Timer 0
execute if score C4CountDownTicks Timer matches 1.. store result score #RealCountDownTicks Timer run scoreboard players operation #20 Timer -= C4CountDownTicks Timer
#??#RealCountDownSeconds?RealCountDownTicks??????????????

#????????????????
scoreboard players set #RealCountDownMS Timer -1
execute if score #RealCountDownSeconds Timer matches 0 if score C4CountDownTicks Timer matches 1.. run scoreboard players operation #RealCountDownMS Timer = #RealCountDownTicks Timer
execute if score #RealCountDownSeconds Timer matches 0 if score C4CountDownTicks Timer matches 1.. run scoreboard players operation #RealCountDownMS Timer *= #50 Timer