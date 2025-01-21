## 防止摸金校尉的 GunUsed 标签变为1b

# 在玩家脚下召唤盔甲架
execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["iu_change"],Invisible:1b}
# 将玩家物品复制到盔甲架
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @s weapon.mainhand from entity @p weapon.mainhand

## 将武器设置为用过
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run data modify entity @s HandItems[0].tag.GunId set from storage mcs:gun_id GunId

# 将盔甲架物品复制到玩家
execute as @e[type=minecraft:armor_stand,tag=iu_change,limit=1] at @s run item replace entity @p weapon.mainhand from entity @s weapon.mainhand
# 杀死盔甲架
execute as @e[type=minecraft:armor_stand,tag=iu_change] at @s run kill @s