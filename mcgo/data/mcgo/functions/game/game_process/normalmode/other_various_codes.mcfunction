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

#给掉落的C4打上粒子效果
execute at @e[name="未激活的C4"] run particle block_bettle:c_4flag ~ ~0.5 ~
execute as @e[name="已激活的C4"] run data modify entity @s Item.id set value "block_bettle:c_4_false"

#在拥有C4的玩家的周围生成粒子
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] run particle block_bettle:c_4flag ~-0.3 ~0.2 ~
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] run particle block_bettle:c_4flag ~0.3 ~0.2 ~
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] run particle block_bettle:c_4flag ~ ~0.2 ~0.3
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] run particle block_bettle:c_4flag ~ ~0.2 ~-0.3
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] run particle block_bettle:c_4flag ~-0.3 ~0.2 ~
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] run particle block_bettle:c_4flag ~0.3 ~0.2 ~
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] run particle block_bettle:c_4flag ~ ~0.2 ~0.3
execute at @a[nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] run particle block_bettle:c_4flag ~ ~0.2 ~-0.3