##其他游戏中每刻执行的杂项

kill @e[type=item]
kill @e[type=experience_orb]

scoreboard players set @a GetGunForFree 1

function mcgo:game/game_process/arms_race/clear_inventory


item replace entity @a[team=T] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:16767744,Name:'{"text":"T"}',Lore:['{"text":"T"}']}}
item replace entity @a[team=CT] armor.legs with minecraft:leather_leggings{Unbreakable:true,Enchantments:[{id:"swift_sneak",lvl:1s}],display:{color:636159,Name:'{"text":"CT"}',Lore:['{"text":"CT"}']}}
item replace entity @a[team=T] armor.head with minecraft:netherite_helmet{Unbreakable:true}
item replace entity @a[team=CT] armor.head with minecraft:netherite_helmet{Unbreakable:true}
item replace entity @a[team=T] armor.chest with minecraft:netherite_chestplate{Unbreakable:true}
item replace entity @a[team=CT] armor.chest with minecraft:netherite_chestplate{Unbreakable:true}


#在之后的版本，如果地图数量变多，则这个函数可能还要往后延迟一定时间才能不出现bug
execute if entity @a[scores={Deaths=1..}] run schedule function mcgo:game/game_process/arms_race/death_reborn 5t append


