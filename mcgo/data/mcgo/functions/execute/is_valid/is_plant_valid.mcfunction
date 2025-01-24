execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s if block ~ ~302 ~ minecraft:glass run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] hotbar.8 with block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s if block ~ ~302 ~ minecraft:ice run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] hotbar.8 with block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s if block ~ ~312 ~ minecraft:white_stained_glass run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] hotbar.8 with block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s if block ~ ~314 ~ minecraft:barrier run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] hotbar.8 with block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s unless block ~ -64 ~ minecraft:emerald_block run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] hotbar.8 with block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_down"}]}] block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s if block ~ -64 ~ minecraft:emerald_block run execute as @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] at @s run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run item replace entity @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] hotbar.8 with block_bettle:c_4_down
    execute if score Allowance GameProcess matches 1 run clear @a[team=T,nbt={Inventory:[{id:"block_bettle:c_4_false"}]}] block_bettle:c_4_false
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
