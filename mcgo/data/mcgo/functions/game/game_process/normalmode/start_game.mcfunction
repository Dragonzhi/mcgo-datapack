
tellraw @a {"text":"[温馨提示]请按~键确定开启“禁止自动拾取”，自行设定按键以手动拾取物品。","color":"aqua"}

clear @a[team=CT]
clear @a[team=T]
schedule clear mcgo:execute/timer/timer_normal_game
function mcgo:game/reset/reset_scoreboard1
function mcgo:game/reset/reset_scoreboard2
function mcgo:execute/vote_execute/reset_world/is_reset_world_needed

scoreboard players set @a[team=CT] Points 800
scoreboard players set @a[team=T] Points 800

item replace entity @a[team=T] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:16767744,Name:'{"text":"T"}',Lore:['{"text":"T"}']}}
item replace entity @a[team=CT] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:636159,Name:'{"text":"CT"}',Lore:['{"text":"CT"}']}}
item replace entity @a[team=T] hotbar.2 with tacz:modern_kinetic_gun{GunType:3,HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1
item replace entity @a[team=CT] hotbar.2 with tacz:modern_kinetic_gun{GunType:3,HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1
#给予初始装备


effect clear @a[team=CT]
effect clear @a[team=T]
#清除效果
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
#给予效果

gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
#变为冒险模式

function mcgo:game/game_process/normalmode/give_books
scoreboard players set S InGame 1
scoreboard players set NormalMode GameProcess 1
#重置部分计分板

scoreboard objectives setdisplay sidebar Timer
#将侧栏计分板改为Timer

execute as @a[team=CT] run function mcgo:game/get_guns/gun_redirect
execute as @a[team=T] run function mcgo:game/get_guns/gun_redirect

item replace entity @r[team=T] hotbar.8 with block_bettle:c_4_false{GunId:4} 1
#给予C4，要在temp执行之后才能执行

scoreboard players set 商店时间 Timer 20
schedule function mcgo:execute/timer/timer_normal_shop 1s append

schedule function mcgo:game/map_select_tp/tp_to_selected_map 5t append