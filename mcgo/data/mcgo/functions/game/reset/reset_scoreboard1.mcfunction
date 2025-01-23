#重置计分板信息，除InGame，Hp，SeletedMap以及reset_scoreboard2中执行的指令

scoreboard players reset @a mcs
scoreboard players reset @a PlayKills
scoreboard players reset @a PlayKill
scoreboard players reset @a Kills
scoreboard players reset @a PlayDeaths
scoreboard players reset @a MVP
scoreboard players set CT Wins 0
scoreboard players set T Wins 0
scoreboard players set Finished_Round Wins 0
scoreboard players set CT MoneyGiving 1
scoreboard players set T MoneyGiving 1
scoreboard players set @a[team=T] Points 800
scoreboard players set @a[team=CT] Points 800
scoreboard players set S InGame 0

scoreboard players set NormalMode GameProcess 0
scoreboard players set RapidMode GameProcess 0
scoreboard players set CTGamePoint GameProcess 0
scoreboard players set TGamePoint GameProcess 0
scoreboard players set HalfTimeSwitch GameProcess 0
scoreboard players set GameFinished GameProcess 0
scoreboard players set CTWinTheGame GameProcess 0
scoreboard players set TWinTheGame GameProcess 0
scoreboard players set Tie GameProcess 0

