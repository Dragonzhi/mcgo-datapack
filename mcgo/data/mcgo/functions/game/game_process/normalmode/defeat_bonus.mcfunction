#每局结束时执行，给予败方战败补偿

execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 0 run scoreboard players add @a[team=CT] Points 1400
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 0 run tellraw @a[team=CT] [{"text":"输掉本回合，获得奖励 ","color":"white"},{"text":"$+1400","color":"green"}]
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 1 run scoreboard players add @a[team=CT] Points 1900
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 1 run tellraw @a[team=CT] [{"text":"输掉本回合，获得奖励 ","color":"white"},{"text":"$+1900","color":"green"}]
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 2 run scoreboard players add @a[team=CT] Points 2400
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 2 run tellraw @a[team=CT] [{"text":"输掉本回合，获得奖励 ","color":"white"},{"text":"$+2400","color":"green"}]
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 3 run scoreboard players add @a[team=CT] Points 2900
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 3 run tellraw @a[team=CT] [{"text":"输掉本回合，获得奖励 ","color":"white"},{"text":"+$2900","color":"green"}]
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 4 run scoreboard players add @a[team=CT] Points 3400
execute if score TWinTheRound GameProcess matches 1 run execute if score CT DefeatBonus matches 4 run tellraw @a[team=CT] [{"text":"输掉本回合，获得奖励 ","color":"white"},{"text":"$+3400","color":"green"}]

execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 0 run scoreboard players add @a[team=T] Points 1400
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 0 run tellraw @a[team=T] [{"text":"未安装C4且输掉本回合，获得奖励 ","color":"white"},{"text":"+$1400","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 1 run scoreboard players add @a[team=T] Points 1900
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 1 run tellraw @a[team=T] [{"text":"未安装C4且输掉本回合，获得奖励 ","color":"white"},{"text":"+$1900","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 2 run scoreboard players add @a[team=T] Points 2400
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 2 run tellraw @a[team=T] [{"text":"未安装C4且输掉本回合，获得奖励 ","color":"white"},{"text":"+$2400","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 3 run scoreboard players add @a[team=T] Points 2900
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 3 run tellraw @a[team=T] [{"text":"未安装C4且输掉本回合，获得奖励 ","color":"white"},{"text":"+$2900","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 4 run scoreboard players add @a[team=T] Points 3400
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 0 run execute if score T DefeatBonus matches 4 run tellraw @a[team=T] [{"text":"未安装C4且输掉本回合，获得奖励 ","color":"white"},{"text":"+$3400","color":"green"}]

execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 0 run scoreboard players add @a[team=T] Points 1400
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 0 run tellraw @a[team=T] [{"text":"安放C4但输掉本回合，获得奖励 ","color":"white"},{"text":"+$2200","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 1 run scoreboard players add @a[team=T] Points 1900
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 1 run tellraw @a[team=T] [{"text":"安放C4但输掉本回合，获得奖励 ","color":"white"},{"text":"+$2700","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 2 run scoreboard players add @a[team=T] Points 2400
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 2 run tellraw @a[team=T] [{"text":"安放C4但输掉本回合，获得奖励 ","color":"white"},{"text":"+$3200","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 3 run scoreboard players add @a[team=T] Points 2900
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 3 run tellraw @a[team=T] [{"text":"安放C4但输掉本回合，获得奖励 ","color":"white"},{"text":"+$3700","color":"green"}]
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 4 run scoreboard players add @a[team=T] Points 3400
execute if score CTWinTheRound GameProcess matches 1 run execute if score BombDefused GameProcess matches 1 run execute if score T DefeatBonus matches 4 run tellraw @a[team=T] [{"text":"安放C4但输掉本回合，获得奖励 ","color":"white"},{"text":"+$4200","color":"green"}]