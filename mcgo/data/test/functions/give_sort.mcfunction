scoreboard players set LaNterN_AloNe DeathMatchPoints 800
scoreboard players set Lythos DeathMatchPoints 600
scoreboard players set test1 DeathMatchPoints 400
scoreboard players set test2 DeathMatchPoints 400
execute as @a[scores={DeathMatchPoints=0..}] run scoreboard players operation @s sort = @s DeathMatchPoints