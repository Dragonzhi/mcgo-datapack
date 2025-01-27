#重置计分板信息，除InGame，Hp，SeletedMap以及reset_scoreboard2中执行的指令

scoreboard players reset @a mcs
scoreboard players set @a PlayKills 0
scoreboard players set @a PlayKill 0
scoreboard players set @a PlayDeaths 0
scoreboard players set @a MVP 0
scoreboard players set CT Wins 0
scoreboard players set T Wins 0
scoreboard players set Finished_Round Wins 0
scoreboard players set CT MoneyGiving 1
scoreboard players set T MoneyGiving 1
scoreboard players set @a[team=T] Points 800
scoreboard players set @a[team=CT] Points 800
scoreboard players set S InGame 0

scoreboard players set RapidMode GameProcess 0
scoreboard players set CTGamePoint GameProcess 0
scoreboard players set TGamePoint GameProcess 0
scoreboard players set HalfTimeSwitch GameProcess 0
scoreboard players set GameFinished GameProcess 0
scoreboard players set CTWinTheGame GameProcess 0
scoreboard players set TWinTheGame GameProcess 0
scoreboard players set Tie GameProcess 0
scoreboard players set StopStartingGame GameProcess 0

scoreboard players set #1 sort 0
scoreboard players set #2 sort 0
scoreboard players set #highPlayKills sort 0
scoreboard players set #minPlayDeaths sort 0