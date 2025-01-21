tellraw @a {"text":"=================================================","color":"yellow"}
tellraw @a {"text":"游戏正在启动。"}
tellraw @a {"text":"祝游戏愉快！"}
tellraw @a {"text":"[温馨提示]请按~键确定开启“禁止自动拾取”，自行设定按键以手动拾取物品。","color":"blue"}
tellraw @a {"text":"=================================================","color":"yellow"}

item replace entity @a[team=T] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:2s}],display:{color:16767744,Name:'{"text":"T"}',Lore:['{"text":"T"}']}}
item replace entity @a[team=CT] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:2s}],display:{color:636159,Name:'{"text":"CT"}',Lore:['{"text":"CT"}']}}
item replace entity @a[team=T] hotbar.2 with tacz:modern_kinetic_gun{HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1
item replace entity @a[team=CT] hotbar.2 with tacz:modern_kinetic_gun{HasBulletInBarrel:1,GunFireMode:"SEMI",GunId:"test:m9",GunCurrentAmmoCount:10000,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Operation:0,Amount:10.0d,UUID:[I;1075105064,1478773498,-1710059135,-341026296]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"mainhand",Operation:0,Amount:0.03d,UUID:[I;-1230441390,1310869827,-1271527859,1264434293]}]} 1
scoreboard players set @a[team=CT] GetGunForFree 1
scoreboard players set @a[team=T] GetGunForFree 1
execute as @s[team=CT] run function mcgo:pistols/pistol_get_usp
execute as @s[team=T] run function mcgo:pistols/pistol_get_glock
scoreboard players set @a GetGunForFree 0
#给予初始装备
effect clear @a[team=CT]
effect clear @a[team=T]
#清除效果
effect give @a[team=CT] minecraft:saturation 99999 255 true
effect give @a[team=CT] minecraft:regeneration 3 255 true
effect give @a[team=CT] health_boost 99999 9 true
effect give @a[team=T] minecraft:saturation 99999 255 true
effect give @a[team=T] minecraft:regeneration 3 255 true
effect give @a[team=T] health_boost 99999 9 true
#给予效果
item replace entity @a[team=CT] hotbar.8 with block_bettle:qian_zi{tag:{GunType:5,GunPrice:1}}
item replace entity @r[team=T] hotbar.8 with block_bettle:c_4_false{tag:{GunType:4,GunPrice:1}} 1
#给予CT初始钳子/T C4
gamemode adventure @a[team=CT]
gamemode adventure @a[team=T]
#变为冒险模式
function mcgo:game/reset_scoreboard1
function mcgo:game/reset_scoreboard2
scoreboard players set S InGame 1
#重置部分计分板
playsound minecraft:block.slime_block.place music @a ~ ~ ~ 256
#播放音效
scoreboard objectives setdisplay sidebar Timer
#将侧栏计分板改为Timer

setblock 1080 -50 16 minecraft:redstone_block
#开始商店倒计时

spreadplayers 1140 57 1 2 false @a[team=CT]
spreadplayers 1249 -3 1 2 false @a[team=T]