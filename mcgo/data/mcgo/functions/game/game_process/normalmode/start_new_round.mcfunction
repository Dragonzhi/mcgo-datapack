#趣事分享（如果以后多了就单独分离）
tellraw @a [{"text":"[瞎几把搞的抽象统计]","color":"yellow","bold":false},{"text":"上一局一共发射了 ","color":"white","bold": false},{"score":{"name":"FiredBullet","objective": "FunnyCase"},"color":"yellow","bold":true},{"text":" 发子弹！","color":"white","bold":false}]

execute if score HalfTimeSwitch GameProcess matches 1 run scoreboard players set Allowance GameProcess 1
    execute if score Allowance GameProcess matches 1 run scoreboard players set HalfTimeSwitch GameProcess 2
    execute if score Allowance GameProcess matches 1 run clear @a[team=CT]
    execute if score Allowance GameProcess matches 1 run clear @a[team=T]
    execute if score Allowance GameProcess matches 1 run scoreboard players set Allowance GameProcess 0
schedule clear mcgo:execute/timer/timer_normal_game
function mcgo:game/reset/reset_scoreboard2
function mcgo:execute/is_valid/is_surrender_valid
function mcgo:execute/vote_execute/reset_world/is_reset_world_needed

kill @e[type=item]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=block_bettle:c_4]
kill @e[type=tacz:bullet]
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

clear @a[team=CT] minecraft:leather_leggings
clear @a[team=T] minecraft:leather_leggings
item replace entity @a[team=T] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:16767744,Name:'{"text":"T"}',Lore:['{"text":"T"}']}}
item replace entity @a[team=CT] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:636159,Name:'{"text":"CT"}',Lore:['{"text":"CT"}']}}
#给予标志裤
execute as @a[team=CT] run function mcgo:game/get_guns/get_knives
execute as @a[team=T] run function mcgo:game/get_guns/get_knives
#给予刀


scoreboard players set S InGame 1
scoreboard players set NormalMode GameProcess 1
scoreboard objectives setdisplay sidebar Timer

function mcgo:game/game_process/normalmode/give_books
execute as @a[team=T] run function mcgo:game/get_guns/gun_redirect
execute as @a[team=CT] run function mcgo:game/get_guns/gun_redirect
schedule function mcgo:game/map_select_tp/tp_to_selected_map 5t append

item replace entity @r[team=T] hotbar.8 with block_bettle:c_4_false{GunId:4} 1
#给予C4

execute if score CTGamePoint GameProcess matches 1 run title @a title [{"text":"赛点","color":"blue","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score TGamePoint GameProcess matches 1 run title @a title [{"text":"赛点","color":"yellow","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score CTGamePoint GameProcess matches 1 run playsound minecraft:item.goat_horn.sound.0 player @a ~ ~ ~ 100 1.5 1
execute if score TGamePoint GameProcess matches 1 run playsound minecraft:item.goat_horn.sound.1 player @a ~ ~ ~ 100 1.5 1

scoreboard players set 商店时间 Timer 20
schedule function mcgo:execute/timer/timer_normal_shop 1s append

#1.0.3以后，round_result函数被完全夺舍啦！
tellraw @a [{"text":"\n当前比分  ","color":"white","bold":false},{"text":"CT ","color":"aqua","bold":true},{"score":{"name":"CT","objective":"Wins"},"color":"aqua","bold":true},{"text":" : ","color":"white","bold":false},{"score":{"name":"T","objective":"Wins"},"color":"yellow","bold":true},{"text":" T\n","color":"yellow","bold":true}]


