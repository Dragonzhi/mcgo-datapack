##玩家死亡
execute as @a[team=T,scores={Deaths=1}] run gamemode spectator @s
execute as @a[team=T,scores={Deaths=1}] run scoreboard players add @s PlayDeaths 1
execute as @a[team=T,scores={Deaths=1}] run scoreboard players set @s Deaths 2

execute as @a[team=CT,scores={Deaths=1}] run gamemode spectator @s
execute as @a[team=CT,scores={Deaths=1}] run scoreboard players add @s PlayDeaths 1
execute as @a[team=CT,scores={Deaths=1}] run scoreboard players set @s Deaths 2

##击杀得分
execute as @a[scores={PlayKill=1..}] run scoreboard players set @s Allowance 1
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"USP-S"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"USP-S"}}}] run tellraw @s [{"text":"使用USP-S击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]

    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"格洛克"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"格洛克"}}}] run tellraw @s [{"text":"使用格洛克击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]

    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"CZ75"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"CZ75"}}}] run tellraw @s [{"text":"使用CZ75击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]

    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"沙漠之鹰"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"沙漠之鹰"}}}] run tellraw @s [{"text":"使用沙漠之鹰击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"R8"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"R8"}}}] run tellraw @s [{"text":"使用R8击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"P250"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"P250"}}}] run tellraw @s [{"text":"使用P250击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"AK47"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"AK47"}}}] run tellraw @s [{"text":"使用AK47击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"AUG"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"AUG"}}}] run tellraw @s [{"text":"使用AUG击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"AWP"}}}] run scoreboard players add @s Points 100
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"AWP"}}}] run tellraw @s [{"text":"使用AWP击杀一名敌人 ","color":"white"},{"text":"+$100","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"加利尔ACE-22"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"加利尔ACE-22"}}}] run tellraw @s [{"text":"使用加利尔ACE-22击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"M4A1-S"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"M4A1-S"}}}] run tellraw @s [{"text":"使用M4A1-S击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"SCAR-H"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"SCAR-H"}}}] run tellraw @s [{"text":"使用SCAR-H击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"SSG-08"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"SSG-08"}}}] run tellraw @s [{"text":"使用SSG-08击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"MP5ST"}}}] run scoreboard players add @s Points 600
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"MP5ST"}}}] run tellraw @s [{"text":"使用MP5ST击杀一名敌人 ","color":"white"},{"text":"+$600","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"P90"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"P90"}}}] run tellraw @s [{"text":"使用P90击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"PP19"}}}] run scoreboard players add @s Points 600
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"PP19"}}}] run tellraw @s [{"text":"使用PP19击杀一名敌人 ","color":"white"},{"text":"+$600","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"UMP45"}}}] run scoreboard players add @s Points 600
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"UMP45"}}}] run tellraw @s [{"text":"使用UMP45击杀一名敌人 ","color":"white"},{"text":"+$600","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"UZI"}}}] run scoreboard players add @s Points 600
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"UZI"}}}] run tellraw @s [{"text":"使用UZI击杀一名敌人 ","color":"white"},{"text":"+$600","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"M249"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"M249"}}}] run tellraw @s [{"text":"使用M249击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"M870"}}}] run scoreboard players add @s Points 900
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"M870"}}}] run tellraw @s [{"text":"使用M870击杀一名敌人 ","color":"white"},{"text":"+$900","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"内格夫"}}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"内格夫"}}}] run tellraw @s [{"text":"使用内格夫击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]
    
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"Saiga-12"}}}] run scoreboard players add @s Points 600
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunName:"Saiga-12"}}}] run tellraw @s [{"text":"使用Saiga-12击杀一名敌人 ","color":"white"},{"text":"+$600","color":"green"}]

    #为了应为与敌人同时死亡的情况，枚举一个手持空物品击杀玩家的
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:air"}}] run scoreboard players add @s Points 300
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:air"}}] run tellraw @s [{"text":"击杀一名敌人 ","color":"white"},{"text":"+$300","color":"green"}]

    #其他物品的击杀反馈
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunType:3}}}] run scoreboard players add @s Points 1500
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{tag:{GunType:3}}}] run tellraw @s [{"text":"使用近战武器击杀一名敌人 ","color":"white"},{"text":"+$1500","color":"green"}]

    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{id:"block_bettle:dian_ji_qiang"}}] run scoreboard players add @s Points 200
    execute as @a[scores={PlayKill=1..}] if score @s Allowance matches 1 if entity @s[nbt={SelectedItem:{id:"block_bettle:dian_ji_qiang"}}] run tellraw @s [{"text":"使用电击枪击杀一名敌人 ","color":"white"},{"text":"+$200","color":"green"}]


execute as @a[scores={PlayKill=1..}] run scoreboard players set @s Allowance 0
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s PlayKills 1
execute as @a[scores={PlayKill=1..}] run scoreboard players add @s Kills 1
execute as @a[scores={PlayKill=1..}] run scoreboard players remove @s PlayKill 1