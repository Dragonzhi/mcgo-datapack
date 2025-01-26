scoreboard players set LaNterN_AloNe PlayKills 10
scoreboard players set Lythos PlayKills 10
scoreboard players set test1 PlayKills 10
scoreboard players set test2 PlayKills 4
scoreboard players set LaNterN_AloNe PlayDeaths 8
scoreboard players set Lythos PlayDeaths 7
scoreboard players set test1 PlayDeaths 7
scoreboard players set test2 PlayDeaths 4
execute as @a[scores={PlayKills=0..}] run scoreboard players operation @s sort = @s PlayKills
scoreboard objectives setdisplay sidebar sort