execute if score @s PlayDeaths matches 0 run scoreboard players set @s Allowance 2
execute if score @s Allowance matches 2 run scoreboard players set #kd1 sort -1

execute unless score @s PlayDeaths matches 0 run scoreboard players set @s Allowance 1

execute if score @s Allowance matches 1 run scoreboard players set #1000 sort 1000
execute if score @s Allowance matches 1 run scoreboard players set #10 sort 10
execute if score @s Allowance matches 1 run scoreboard players operation #kd1 sort = @s PlayKills
execute if score @s Allowance matches 1 run scoreboard players operation #kd1 sort /= @s PlayDeaths
execute if score @s Allowance matches 1 run scoreboard players operation #kd2 sort = @s PlayKills
execute if score @s Allowance matches 1 run scoreboard players operation #kd2 sort %= @s PlayDeaths
execute if score @s Allowance matches 1 run scoreboard players operation #kd2 sort *= #1000 sort
execute if score @s Allowance matches 1 run scoreboard players operation #kd2 sort /= @s PlayDeaths
execute if score @s Allowance matches 1 run execute if score #kd2 sort matches 100.. run scoreboard players operation #kd2 sort /= #10 sort