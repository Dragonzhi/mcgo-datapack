#重置计分板信息，除InGame，Hp，SeletedMap以及reset_scoreboard1中执行的指令

scoreboard players set @a Allowance 0
scoreboard players set @a Deaths 0
scoreboard players set @a GetGunForFree 0
scoreboard players set 商店时间 Timer 15
scoreboard players reset 游戏倒计时 Timer
scoreboard players set GameCountDownTicks Ticks 0
scoreboard players set C4ticks Ticks 0
scoreboard players set Buying Ticks 0

scoreboard players set ticks GameProcess 0
scoreboard players set seconds GameProcess 0
scoreboard players set BombPlanted GameProcess 0
scoreboard players set BombDefused GameProcess 0
scoreboard players set BombExploded GameProcess 0
scoreboard players set CTAllDied GameProcess 0
scoreboard players set TAllDied GameProcess 0
scoreboard players set Allowance GameProcess 0
scoreboard players set CTWinTheRound GameProcess 0
scoreboard players set TWinTheRound GameProcess 0
scoreboard players set TMissing GameProcess 0
scoreboard players set CTMissing GameProcess 0
scoreboard players set ReturnToTheGame GameProcess 0
scoreboard players set RoundFinished GameProcess 0
scoreboard players set RoundStart GameProcess 0