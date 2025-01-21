tellraw @a {"text":"已初始化游戏","color":"yellow"}

function mcgo:game/reset_scoreboard1
function mcgo:game/reset_scoreboard2

scoreboard players set S InGame 0
scoreboard objectives setdisplay sidebar
#清除sidebar

setblock 1080 -51 16 air
setblock 1080 -50 16 air
#停止tick
#---
fill 1036 -48 -40 1036 0 -40 air
fill 1036 -48 -66 1036 0 -66 air
#---商店传送区域的红石块
setblock 1025 -46 -18 air
setblock 1025 -44 -22 air
#快速模式的红石块
fill 1028 -46 -22 1028 -46 -12 air
#选图的方块
fill 1018 -43 -56 1014 -43 -56 air
#商店时间结束强制传送的方块
fill 1081 -52 25 1081 0 25 air
#商店时间流逝的红石块
setblock 1069 -52 23 air
setblock 1071 -51 17 air
#允许播报赛点的羊毛
setblock 1077 -52 13 air

spawnpoint @a[team=CT] 1027 -47 -27
spawnpoint @a[team=T] 1027 -47 -27
#重设双方重生点为主城
effect clear @a[team=T]
effect clear @a[team=CT]
#清除双方效果
clear @a[team=CT]
clear @a[team=T]
#清除双方背包
tp @a[team=CT] 1027 -47 -27
tp @a[team=T] 1027 -47 -27
#tp回主城
kill @e[type=item]