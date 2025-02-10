scoreboard players add ticks GameProcess 1

execute if score CTWinTheGame GameProcess matches 1 run execute if score seconds GameProcess matches 1.. run execute if score ticks GameProcess matches 20.. run effect give @a[team=CT] minecraft:resistance 8 6
execute if score CTWinTheGame GameProcess matches 1 run execute if score seconds GameProcess matches 1.. run execute if score ticks GameProcess matches 20.. run execute at @a[team=CT] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;1146583],Type:0,Flicker:0b,Trail:0b}]}}}}
execute if score CTWinTheGame GameProcess matches 1 run execute if score seconds GameProcess matches 1.. run execute if score ticks GameProcess matches 20.. run execute at @a[team=CT] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;1146583],Type:1,Flicker:1b,Trail:1b}]}}}}

execute if score TWinTheGame GameProcess matches 1 run execute if score seconds GameProcess matches 1.. run execute if score ticks GameProcess matches 20.. run effect give @a[team=T] minecraft:resistance 8 6
execute if score TWinTheGame GameProcess matches 1 run execute if score seconds GameProcess matches 1.. run execute if score ticks GameProcess matches 20.. run execute at @a[team=T] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;16766720],Type:0,Flicker:0b,Trail:0b}]}}}}
execute if score TWinTheGame GameProcess matches 1 run execute if score seconds GameProcess matches 1.. run execute if score ticks GameProcess matches 20.. run execute at @a[team=T] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;16766720],Type:1,Flicker:1b,Trail:0b}]}}}}


execute if score ticks GameProcess matches 20.. run scoreboard players remove seconds GameProcess 1
execute if score ticks GameProcess matches 20.. run scoreboard players set ticks GameProcess 0
execute if score seconds GameProcess matches 1.. run schedule function mcgo:execute/timer/timer_normal_finish 1t append