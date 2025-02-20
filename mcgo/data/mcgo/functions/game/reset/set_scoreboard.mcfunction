scoreboard objectives remove Timer
scoreboard objectives remove Hp
scoreboard objectives remove GetGunForFree
scoreboard objectives remove Points
scoreboard objectives remove DefeatBonus
scoreboard objectives remove InGame
scoreboard objectives remove PlayKills
scoreboard objectives remove PlayKill
scoreboard objectives remove Kills
scoreboard objectives remove PlayDeaths
scoreboard objectives remove Deaths
scoreboard objectives remove GameProcess
scoreboard objectives remove Allowance
scoreboard objectives remove mcs
scoreboard objectives remove Wins
scoreboard objectives remove MVP
scoreboard objectives remove sort
scoreboard objectives remove SelectedMap
scoreboard objectives remove BoughtFlashbang
scoreboard objectives remove BoughtHEGrenade
scoreboard objectives remove BoughtSmokeGrenade
scoreboard objectives remove BoughtIncendiary
scoreboard objectives remove BoughtMolotov
scoreboard objectives remove Vote
scoreboard objectives remove ArmsRaceProcess
scoreboard objectives remove ArmsRaceSeed
scoreboard objectives remove PlantC4
scoreboard objectives remove DefuseC4
scoreboard objectives remove csgrenade_killcount_hegrenade
scoreboard objectives remove csgrenade_killcount_flashbang
scoreboard objectives remove csgrenade_killcount_smokegrenade
scoreboard objectives remove csgrenade_killcount_incendiary
scoreboard objectives remove csgrenade_killcount_molotov
scoreboard objectives remove FunnyCase
scoreboard objectives remove DeathMatchSeed
scoreboard objectives remove DeathMatchPoints
scoreboard objectives remove DeathMatchChosenMainWeapon
scoreboard objectives remove DeathMatchChosenPistol
scoreboard objectives remove GetGunRapidly
scoreboard objectives remove DeathMatchSeed_cala

scoreboard objectives add Timer dummy "倒计时"
scoreboard objectives add Hp health
scoreboard objectives add GetGunForFree dummy
scoreboard objectives add Points dummy
scoreboard objectives add DefeatBonus dummy
scoreboard objectives add InGame dummy
scoreboard objectives add PlayKills dummy
scoreboard objectives add PlayKill playerKillCount
scoreboard objectives add Kills dummy
scoreboard objectives add PlayDeaths dummy
scoreboard objectives add Deaths deathCount
scoreboard objectives add GameProcess dummy
scoreboard objectives add Allowance trigger
scoreboard objectives add mcs dummy
scoreboard objectives add Wins dummy
scoreboard objectives add MVP dummy
scoreboard objectives add sort dummy
scoreboard objectives add SelectedMap dummy
scoreboard objectives add BoughtFlashbang dummy
scoreboard objectives add BoughtHEGrenade dummy
scoreboard objectives add BoughtSmokeGrenade dummy
scoreboard objectives add BoughtIncendiary dummy
scoreboard objectives add BoughtMolotov dummy
scoreboard objectives add Vote dummy
scoreboard objectives add ArmsRaceProcess dummy "军备竞赛进程"
# 随机数种子，一个不断增加的数值
scoreboard objectives add ArmsRaceSeed dummy
scoreboard objectives add PlantC4 minecraft.used:block_bettle.c_4_down
scoreboard objectives add DefuseC4 minecraft.killed:block_bettle.c_4

scoreboard objectives add GlockSkin trigger
scoreboard objectives add USPSkin trigger
scoreboard objectives add AK47Skin trigger
scoreboard objectives add M4A1Skin trigger
scoreboard objectives add AWPSkin trigger
scoreboard objectives add KnifeSkin trigger

#csgrenades mod相关计分板x5，因为不懂怎么创建新的criteria干脆自己加分了（悲
#不直接写csgrenades自带的指令的原因是vscode不认识（x），而且这样写也可以有提示
scoreboard objectives add csgrenade_killcount_hegrenade dummy
scoreboard objectives add csgrenade_killcount_flashbang dummy
scoreboard objectives add csgrenade_killcount_smokegrenade dummy
scoreboard objectives add csgrenade_killcount_incendiary dummy
scoreboard objectives add csgrenade_killcount_molotov dummy

scoreboard objectives add FunnyCase dummy
scoreboard objectives add DeathMatchSeed dummy
scoreboard objectives add DeathMatchSeed_cala dummy
scoreboard objectives add DeathMatchPoints dummy "死亡竞赛得分"
scoreboard objectives add DeathMatchChosenMainWeapon dummy
scoreboard objectives add DeathMatchChosenPistol dummy
scoreboard objectives add GetGunRapidly dummy

scoreboard objectives setdisplay belowName Hp
