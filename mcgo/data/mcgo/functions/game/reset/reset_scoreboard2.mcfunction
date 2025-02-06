#重置计分板信息，除InGame，Hp，SeletedMap以及reset_scoreboard1中执行的指令

scoreboard players set @a Allowance 0
scoreboard players set @a Deaths 0
scoreboard players set @a GetGunForFree 0
scoreboard players set @a Kills 0
scoreboard players set 商店时间 Timer 20
scoreboard players reset 游戏倒计时 Timer
scoreboard players reset C4CountDownSeconds Timer
scoreboard players reset C4CountDownTicks Timer
scoreboard players set #RealCountDownSeconds Timer 0
scoreboard players set #RealCountDownTicks Timer 0
scoreboard players set #RealCountDownMS Timer 0
scoreboard players set @a PlantC4 0
scoreboard players set @a DefuseC4 0

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
scoreboard players set CTLeft1 GameProcess 0
scoreboard players set CTLeft1Kills GameProcess 0
scoreboard players set TLeft1Kills GameProcess 0
scoreboard players set TLeft1 GameProcess 0

scoreboard players set @a BoughtFlashbang 0
scoreboard players set @a BoughtHEGrenade 0
scoreboard players set @a BoughtSmokeGrenade 0
scoreboard players set @a BoughtIncendiary 0
scoreboard players set @a BoughtMolotov 0

scoreboard players set @a ArmsRaceProcess 0