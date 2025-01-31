execute if score HalfTimeSwitch GameProcess matches 1 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set HalfTimeSwitch GameProcess 2
    execute if score Allowance GameProcess matches 1 run clear @a[team=CT]
    execute if score Allowance GameProcess matches 1 run clear @a[team=T]
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
schedule clear mcgo:execute/timer/timer_normal_game
function mcgo:game/game_process/normalmode/round_result
function mcgo:game/reset/reset_scoreboard2
function mcgo:game/game_process/normalmode/give_books
function mcgo:game/map_select_tp/tp_to_selected_map
function mcgo:execute/is_valid/is_surrender_valid

kill @e[type=item]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=block_bettle:c_4]
effect clear @a[team=CT]
effect clear @a[team=T]
effect give @a[team=T] minecraft:regeneration 3 255 true
effect give @a[team=T] health_boost 99999 2 true
effect give @a[team=T] minecraft:saturation 99999 255 true
effect give @a[team=T] minecraft:slowness 99999 10 true
effect give @a[team=T] minecraft:jump_boost 99999 200 true
effect give @a[team=T] minecraft:dolphins_grace 99999 1 true
effect give @a[team=CT] minecraft:regeneration 3 255 true
effect give @a[team=CT] health_boost 99999 2 true
effect give @a[team=CT] minecraft:saturation 99999 255 true
effect give @a[team=CT] minecraft:slowness 99999 10 true
effect give @a[team=CT] minecraft:jump_boost 99999 200 true
effect give @a[team=CT] minecraft:dolphins_grace 99999 1 true
gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
execute as @a[team=CT] run function mcgo:execute/clear_inventory
execute as @a[team=T] run function mcgo:execute/clear_inventory
#清理背包
item replace entity @r[team=T] hotbar.8 with block_bettle:c_4_false{GunId:4} 1
#给予C4
clear @a[team=CT] minecraft:leather_leggings
clear @a[team=T] minecraft:leather_leggings
item replace entity @a[team=T] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:16767744,Name:'{"text":"T"}',Lore:['{"text":"T"}']}}
item replace entity @a[team=CT] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:636159,Name:'{"text":"CT"}',Lore:['{"text":"CT"}']}}
#给予标志裤

item replace entity @a[team=T] hotbar.2 with tacz:modern_kinetic_gun{tag:{GunType:3},HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1
item replace entity @a[team=CT] hotbar.2 with tacz:modern_kinetic_gun{tag:{GunType:3},HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1
#给予刀



scoreboard players set S InGame 1
scoreboard players set NormalMode GameProcess 1
scoreboard objectives setdisplay sidebar Timer

execute as @a[team=CT] run function mcgo:game/temp_ct
execute as @a[team=T] run function mcgo:game/temp_t

execute if score CTGamePoint GameProcess matches 1 run title @a title [{"text":"赛点","color":"blue","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score TGamePoint GameProcess matches 1 run title @a title [{"text":"赛点","color":"yellow","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]

scoreboard players set 商店时间 Timer 20
schedule function mcgo:execute/timer/timer_normal_shop 1s append



