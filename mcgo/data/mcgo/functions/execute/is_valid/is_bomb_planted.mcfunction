##判断C4是否被安装

execute if score S InGame matches 1 run execute if entity @a[team=T] run execute if entity @e[type=block_bettle:c_4,nbt={CustomName:'{"text":"C4"}'}] run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set BombPlanted GameProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @e[type=block_bettle:c_4] run data modify entity @s CustomName set value '{"text":" C4 "}'
    #若检测到c4，则设置BombPlanted为1，且设置其CustomName为" C4 "，以防重复进入该分支
    execute if score Allowance GameProcess matches 1 run setblock 1080 -51 16 air
    #停止游戏时间流逝
    execute if score Allowance GameProcess matches 1 run scoreboard players reset 游戏倒计时 Timer
    execute if score Allowance GameProcess matches 1 run title @a title [{"text":"C4已安放","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score Allowance GameProcess matches 1 run tellraw @a[team=T] [{"text":"安放炸弹奖励 ","color":"white"},{"text":"+$100","color":"green"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players add @a[team=T] Points 100
    execute if score Allowance GameProcess matches 1 run scoreboard objectives setdisplay sidebar
    #将侧栏隐藏
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
