##其他游戏中每刻执行的杂项

execute as @a at @s if block ~ ~2 ~ air if block ~ ~1 ~ air run spawnpoint @s ~ ~1 ~
execute as @a at @s if block ~ ~ ~ air run spawnpoint @s ~ ~ ~

scoreboard players set @a[scores={Points=10000..}] Points 10000
execute if score CT DefeatBonus matches 5.. run scoreboard players set CT DefeatBonus 4
execute if score T DefeatBonus matches 5.. run scoreboard players set T DefeatBonus 4
execute if score CT DefeatBonus matches ..-1 run scoreboard players set CT DefeatBonus 0
execute if score T DefeatBonus matches ..-1 run scoreboard players set T DefeatBonus 0
execute as @e[type=item] run data modify entity @s Item.tag.GunUsed set value 1
kill @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_helmet"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_helmet"}}]
kill @e[type=experience_orb]