

##检测是否符合下包条件
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s if block ~ ~302 ~ minecraft:glass run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] hotbar.8 with block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s if block ~ ~302 ~ minecraft:ice run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] hotbar.8 with block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s if block ~ ~312 ~ minecraft:white_stained_glass run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] hotbar.8 with block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s if block ~ ~314 ~ minecraft:barrier run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] hotbar.8 with block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s if block ~ -64 ~ minecraft:bedrock run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] hotbar.8 with block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s if block ~ -64 ~ minecraft:emerald_block run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] hotbar.8 with block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0


##检测警匪胜利条件
execute if score S InGame matches 1 run execute unless entity @a[team=T,scores={Deaths=0}] run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set TAllDied GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set @a[team=T] Deaths 0
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
    #若检测不到Deaths为0的T，则设置TAllDied为1

execute if score S InGame matches 1 run execute if entity @e[type=block_bettle:c_4,nbt={CustomName:'{"text":"C4"}'}] run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set BombPlanted GameProcess 1
    execute if score Allowance GameProcess matches 1 run execute as @e[type=block_bettle:c_4] run data modify entity @s CustomName set value '{"text":" C4 "}'
    #若检测到c4，则设置BombPlanted为1，且设置其CustomName为" C4 "，以防重复进入该分支
    execute if score Allowance GameProcess matches 1 run setblock 1080 -51 16 air
    #停止游戏时间流逝
    execute if score Allowance GameProcess matches 1 run scoreboard players set 游戏倒计时 Timer -1
    execute if score Allowance GameProcess matches 1 run title @a title [{"text":"C4已安放","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score Allowance GameProcess matches 1 run tellraw @a[team=T] [{"text":"安放炸弹奖励 ","color":"white"},{"text":"+$100","color":"green"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players add @a[team=T] Points 100
    execute if score Allowance GameProcess matches 1 run scoreboard objectives setdisplay sidebar
    #将侧栏隐藏
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score S InGame matches 1 run execute if entity @e[name="C 4 Defused"] run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run kill @e[name="C 4 Defused"]
    execute if score Allowance GameProcess matches 1 run tellraw @a[team=T] [{"text":"安放炸弹奖励 ","color":"white"},{"text":"$800","color":"green"}]
    execute if score Allowance GameProcess matches 1 run scoreboard players add @a[team=T] Points 800
    execute if score Allowance GameProcess matches 1 run scoreboard players set BombDefused GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0

execute if score S InGame matches 1 run execute if score BombDefused GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run tellraw @a[team=CT] [{"text":"成功拆除C4，回合胜利 ","color":"white"},{"text":"+$3300","color":"green"}]
    execute if score CTWinTheRound GameProcess matches 1 run title @a title [{"text":"CT阵营胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 2
    #相当于给defeat_bonus.mcfunction传入Allowance为2的参数
    execute if score CTWinTheRound GameProcess matches 2 run function mcgo:game/defeat_bonus
    #defeat_bonus.mcfunction结束时设置Allowance为1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add CT Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add @a[team=CT] Points 3500
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set S InGame 0
    execute if score CTWinTheRound GameProcess matches 1 run schedule function mcgo:game/start_new_round 5s append
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 0

execute if score S InGame matches 1 run execute if score TAllDied GameProcess matches 1 run execute if score BombPlanted GameProcess matches 0 run scoreboard players set CTWinTheRound GameProcess 1
#如果C4被拆了或者在T没有安包的情况下T被歼灭，则CT获得本局胜利
    execute if score CTWinTheRound GameProcess matches 1 run tellraw @a[team=CT] [{"text":"歼灭T方，回合胜利 ","color":"white"},{"text":"+$3250","color":"green"}]
    execute if score CTWinTheRound GameProcess matches 1 run title @a title [{"text":"CT阵营胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 2
    #相当于给defeat_bonus.mcfunction传入Allowance为2的参数
    execute if score CTWinTheRound GameProcess matches 2 run function mcgo:game/defeat_bonus
    #defeat_bonus.mcfunction结束时设置Allowance为1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add CT Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add @a[team=CT] Points 3250
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set S InGame 0
    execute if score CTWinTheRound GameProcess matches 1 run schedule function mcgo:game/start_new_round 5s append

execute if score S InGame matches 1 run execute if score 游戏倒计时 Timer matches 0 run scoreboard players set CTWinTheRound GameProcess 1
    execute if score CTWinTheRound GameProcess matches 1 run tellraw @a[team=CT] [{"text":"时间耗尽，回合胜利 ","color":"white"},{"text":"+$3250","color":"green"}]
    execute if score CTWinTheRound GameProcess matches 1 run playsound minecraft:entity.player.levelup music @a ~ ~ ~ 256
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set CTWinTheRound GameProcess 2
    #相当于给defeat_bonus.mcfunction传入Allowance为2的参数
    execute if score CTWinTheRound GameProcess matches 2 run function mcgo:game/defeat_bonus
    #defeat_bonus.mcfunction结束时设置Allowance为1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add CT Wins 1
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players add @a[team=CT] Points 3250
    execute if score CTWinTheRound GameProcess matches 1 run scoreboard players set S InGame 0
    execute if score CTWinTheRound GameProcess matches 1 run schedule function mcgo:game/start_new_round 5s append


# execute if score S InGame matches 1 run schedule function mcgo:game/tick_execute 1t append
