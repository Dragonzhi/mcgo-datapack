scoreboard players set @a Deaths 0
tp @a[team=CT] 1027 -47 -27
tp @a[team=T] 1027 -47 -27
spawnpoint @a[team=CT] 1027 -47 -27
spawnpoint @a[team=T] 1027 -47 -27
clear @a[team=CT]
clear @a[team=T]
gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
scoreboard players set @a[team=CT] Points 800
scoreboard players set @a[team=T] Points 800
scoreboard players set CT MoneyGiving 1
scoreboard players set T MoneyGiving 1
scoreboard players set seconds GameProcess 0
scoreboard players set ticks GameProcess 0
scoreboard players set Buying Ticks 0
scoreboard players set GameCountDownTicks Ticks 0
scoreboard players set Finished_Round Wins 0
scoreboard players set CT Wins 0
scoreboard players set T Wins 0
scoreboard players set 游戏倒计时 Timer 65
scoreboard players set 商店时间 Timer 65
scoreboard players set S InGame 0
scoreboard objectives setdisplay sidebar

setblock 1069 -52 19 minecraft:white_wool
#T赛点播报
setblock 1069 -52 13 minecraft:white_wool
#CT赛点播报
setblock 1059 -49 14 minecraft:white_wool
#finish_round.mcfunction换边

kill @e[type=minecraft:experience_orb]
kill @e[type=item]

fill 1028 -46 -22 1028 -46 -12 air
#fill 1018 -43 -56 1014 -43 -56 air
#fill 1081 -52 25 1081 0 25 air
#商店房间

setblock 1077 -52 13 air
#CT wins