kill @e[type=item]
kill @e[type=experience_orb]
kill @e[type=minecraft:area_effect_cloud]
effect clear @a[team=CT]
effect clear @a[team=T]
effect give @a[team=T] minecraft:regeneration 3 255 true
effect give @a[team=T] health_boost 99999 9 true
effect give @a[team=T] minecraft:saturation 99999 255 true
effect give @a[team=CT] minecraft:regeneration 3 255 true
effect give @a[team=CT] health_boost 99999 9 true
effect give @a[team=CT] minecraft:saturation 99999 255 true
gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
clear @a block_bettle:c_4_false
clear @a block_bettle:c_4_down
item replace entity @r[team=T] hotbar.8 with block_bettle:c_4_false{tag:{GunId:4}} 1
clear @a[team=CT] minecraft:leather_leggings
clear @a[team=T] minecraft:leather_leggings
item replace entity @a[team=T] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:2s}],display:{color:16767744,Name:'{"text":"T"}',Lore:['{"text":"T"}']}}
item replace entity @a[team=CT] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:2s}],display:{color:636159,Name:'{"text":"CT"}',Lore:['{"text":"CT"}']}}
execute as @a[team=CT,nbt={Inventory:[{id:"block_bettle:lei_qian"}]}] run scoreboard players set @s Allowance 1
execute as @a[team=CT] run execute if score @s Allowance matches 1 run clear @s block_bettle:lei_qian
execute as @a[team=CT] run execute if score @s Allowance matches 1 run item replace entity @s hotbar.8 with block_bettle:lei_qian{tag:{GunId:5}}
execute as @a[team=CT] run execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
execute as @a[team=CT,nbt={Inventory:[{id:"block_bettle:qian_zi"}]}] run scoreboard players set @s Allowance 1
execute as @a[team=CT] run execute if score @s Allowance matches 1 run clear @s block_bettle:qian_zi
execute as @a[team=CT] run execute if score @s Allowance matches 1 run item replace entity @s hotbar.8 with block_bettle:qian_zi{tag:{GunId:5}}
execute as @a[team=CT] run execute if score @s Allowance matches 1 run scoreboard players set @s Allowance 0
clear @a[team=CT] tacz:modern_kinetic_gun{tag:{GunType:3}}
clear @a[team=T] tacz:modern_kinetic_gun{tag:{GunType:3}}

execute as @a[team=CT] run function mcgo:execute/clear_inventory
execute as @a[team=T] run function mcgo:execute/clear_inventory

item replace entity @a[team=T] hotbar.2 with tacz:modern_kinetic_gun{tag:{GunType:3},HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1
item replace entity @a[team=CT] hotbar.2 with tacz:modern_kinetic_gun{tag:{GunType:3},HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1

function mcgo:game/reset_scoreboard2
scoreboard players set S InGame 1


execute as @a[team=CT] run schedule function mcgo:game/temp_ct 5t append
execute as @a[team=T] run schedule function mcgo:game/temp_t 5t append


setblock 1080 -51 16 air
#sotp seconds ticking
setblock 1080 -52 16 air
#sotp c4 ticking
setblock 1080 -50 16 minecraft:redstone_block
#start buying ticking

spreadplayers 1140 57 1 2 false @a[team=CT]
spreadplayers 1249 -3 1 2 false @a[team=T]

