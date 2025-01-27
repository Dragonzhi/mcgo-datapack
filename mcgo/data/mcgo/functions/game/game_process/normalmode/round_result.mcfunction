execute if score CTWinTheRound Wins matches 1 run scoreboard players set WinAllowance Wins 1
    execute if score WinAllowance Wins matches 1 run execute if entity @a[team=CT,limit=1,scores={Kills=3..}] run scoreboard players set WinAllowance Wins 2
        execute if score WinAllowance Wins matches 2 run execute as @a[team=CT,limit=1,scores={Kills=3..}] run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":"击杀了","color":"white"},{"score":{"name":"@s","objective":"Kills"},"color":"yellow","bold":true},{"text":"名敌人！","color":"white","bold":false}]
        execute if score WinAllowance Wins matches 2 run execute as @a[team=CT,limit=1,scores={Kills=3..}] run scoreboard players add @s MVP 1
        execute if score WinAllowance Wins matches 2 run scoreboard players set WinAllowance Wins 0
        #此时WinAllowance为0，不会使后面的指令执行
    execute if score WinAllowance Wins matches 1 run execute if entity @a[team=CT,limit=1,scores={Kills=1..}] run scoreboard players set WinAllowance Wins 2
        execute if score WinAllowance Wins matches 2 run execute as @a[team=CT,limit=1,scores={Kills=1..}] run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":"击杀了最多名敌方玩家","color":"white"}]
        execute if score WinAllowance Wins matches 2 run execute as @a[team=CT,limit=1,scores={Kills=1..}] run scoreboard players add @s MVP 1
        execute if score WinAllowance Wins matches 2 run scoreboard players set WinAllowance Wins 0

execute if score TWinTheRound Wins matches 1 run scoreboard players set WinAllowance Wins 1
    execute if score WinAllowance Wins matches 1 run execute if entity @a[team=T,limit=1,scores={Kills=3..}] run scoreboard players set WinAllowance Wins 2
        execute if score WinAllowance Wins matches 2 run execute as @a[team=T,limit=1,scores={Kills=3..}] run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":"击杀了","color":"white"},{"score":{"name":"@s","objective":"Kills"},"color":"yellow","bold":true},{"text":"名敌人！","color":"white","bold":false}]
        execute if score WinAllowance Wins matches 2 run execute as @a[team=T,limit=1,scores={Kills=3..}] run scoreboard players add @s MVP 1
        execute if score WinAllowance Wins matches 2 run scoreboard players set WinAllowance Wins 0
        #此时WinAllowance为0，不会使后面的指令执行
    execute if score WinAllowance Wins matches 1 run execute if entity @a[team=T,limit=1,scores={Kills=1..}] run scoreboard players set WinAllowance Wins 2
        execute if score WinAllowance Wins matches 2 run execute as @a[team=T,limit=1,scores={Kills=1..}] run tellraw @a [{"text":"[MVP]","color":"yellow","bold":true},{"selector":"@s","bold":false},{"text":"击杀了最多名敌方玩家","color":"white"}]
        execute if score WinAllowance Wins matches 2 run execute as @a[team=T,limit=1,scores={Kills=1..}] run scoreboard players add @s MVP 1
        execute if score WinAllowance Wins matches 2 run scoreboard players set WinAllowance Wins 0

#每局结束后播报击杀最多的人，如果击杀数不超过1，则不播报mvp，若下包被拆了，则播报拆包的玩家，若击杀数超过3，则播报该玩家。

tellraw @a [{"text":"当前比分  ","color":"white","bold":false},{"text":"CT ","color":"aqua","bold":true},{"score":{"name":"CT","objective":"Wins"},"color":"aqua","bold":true},{"text":" : ","color":"white","bold":false},{"score":{"name":"T","objective":"Wins"},"color":"yellow","bold":true},{"text":" T","color":"yellow","bold":true}]