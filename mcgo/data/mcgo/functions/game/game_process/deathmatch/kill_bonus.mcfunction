execute if entity @s[nbt={SelectedItem:{tag:{GunName:"USP-S"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 1 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"USP-S"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 1 run tellraw @s [{"text":"使用USP-S击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"USP-S"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 1 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"USP-S"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 1 run tellraw @s [{"text":"使用USP-S击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]
#奖励武器造成击杀得到原始分数+6分

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"格洛克"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 2 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"格洛克"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 2 run tellraw @s [{"text":"使用格洛克击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"格洛克"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 2 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"格洛克"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 2 run tellraw @s [{"text":"使用格洛克击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Tec-9"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 3 run scoreboard players add @s DeathMatchPoints 12 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Tec-9"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 3 run tellraw @s [{"text":"使用Tec-9击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Tec-9"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 3 run scoreboard players add @s DeathMatchPoints 18 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Tec-9"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 3 run tellraw @s [{"text":"使用Tec-9击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"FN57"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 4 run scoreboard players add @s DeathMatchPoints 12 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"FN57"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 4 run tellraw @s [{"text":"使用FN57击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"FN57"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 4 run scoreboard players add @s DeathMatchPoints 18 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"FN57"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 4 run tellraw @s [{"text":"使用FN57击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"CZ75"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 5 run scoreboard players add @s DeathMatchPoints 12 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"CZ75"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 5 run tellraw @s [{"text":"使用CZ75击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"CZ75"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 5 run scoreboard players add @s DeathMatchPoints 18 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"CZ75"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 5 run tellraw @s [{"text":"使用CZ75击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"沙漠之鹰"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 6 run scoreboard players add @s DeathMatchPoints 12 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"沙漠之鹰"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 6 run tellraw @s [{"text":"使用沙漠之鹰击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"沙漠之鹰"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 6 run scoreboard players add @s DeathMatchPoints 18 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"沙漠之鹰"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 6 run tellraw @s [{"text":"使用沙漠之鹰击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]
    
# === R8特殊计分规则 === 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"R8"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 7 run scoreboard players add @s DeathMatchPoints 12 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"R8"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 7 run tellraw @s [{"text":"使用R8击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"R8"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 7 run scoreboard players add @s DeathMatchPoints 18 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"R8"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 7 run tellraw @s [{"text":"使用R8击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P250"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 8 run scoreboard players add @s DeathMatchPoints 12 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P250"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 8 run tellraw @s [{"text":"使用P250击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P250"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 8 run scoreboard players add @s DeathMatchPoints 18 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P250"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 8 run tellraw @s [{"text":"使用P250击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AK47"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 11 run scoreboard players add @s DeathMatchPoints 11 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AK47"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 11 run tellraw @s [{"text":"使用AK47击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AK47"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 11 run scoreboard players add @s DeathMatchPoints 17 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AK47"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 11 run tellraw @s [{"text":"使用AK47击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AUG"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 12 run scoreboard players add @s DeathMatchPoints 11 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AUG"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 12 run tellraw @s [{"text":"使用AUG击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AUG"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 12 run scoreboard players add @s DeathMatchPoints 17 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AUG"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 12 run tellraw @s [{"text":"使用AUG击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AWP"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 13 run scoreboard players add @s DeathMatchPoints 10 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AWP"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 13 run tellraw @s [{"text":"使用AWP击杀一名敌人 ","color":"white"},{"text":"+10分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AWP"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 13 run scoreboard players add @s DeathMatchPoints 16 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"AWP"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 13 run tellraw @s [{"text":"使用AWP击杀一名敌人 ","color":"white"},{"text":"+16分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"加利尔ACE-22"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 14 run scoreboard players add @s DeathMatchPoints 11 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"加利尔ACE-22"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 14 run tellraw @s [{"text":"使用加利尔ACE-22击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"加利尔ACE-22"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 14 run scoreboard players add @s DeathMatchPoints 17 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"加利尔ACE-22"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 14 run tellraw @s [{"text":"使用加利尔ACE-22击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M4A1-S"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 15 run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M4A1-S"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 15 run tellraw @s [{"text":"使用M4A1-S击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M4A1-S"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 15 run scoreboard players add @s DeathMatchPoints 17
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M4A1-S"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 15 run tellraw @s [{"text":"使用M4A1-S击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SCAR-H"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 16 run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SCAR-H"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 16 run tellraw @s [{"text":"使用SCAR-H击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SCAR-H"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 16 run scoreboard players add @s DeathMatchPoints 17
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SCAR-H"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 16 run tellraw @s [{"text":"使用SCAR-H击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SSG-08"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 17 run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SSG-08"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 17 run tellraw @s [{"text":"使用SSG-08击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SSG-08"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 17 run scoreboard players add @s DeathMatchPoints 17
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SSG-08"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 17 run tellraw @s [{"text":"使用SSG-08击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"法玛斯"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 18 run scoreboard players add @s DeathMatchPoints 11 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"法玛斯"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 18 run tellraw @s [{"text":"使用法玛斯击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"法玛斯"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 18 run scoreboard players add @s DeathMatchPoints 17 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"法玛斯"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 18 run tellraw @s [{"text":"使用法玛斯击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SG-553"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 19 run scoreboard players add @s DeathMatchPoints 11 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SG-553"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 19 run tellraw @s [{"text":"使用SG-553击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SG-553"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 19 run scoreboard players add @s DeathMatchPoints 17 
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"SG-553"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 19 run tellraw @s [{"text":"使用SG-553击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP9"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 21 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP9"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 21 run tellraw @s [{"text":"使用MP9击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP9"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 21 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP9"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 21 run tellraw @s [{"text":"使用MP9击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P90"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 22 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P90"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 22 run tellraw @s [{"text":"使用P90击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P90"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 22 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"P90"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 22 run tellraw @s [{"text":"使用P90击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"PP19"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 23 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"PP19"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 23 run tellraw @s [{"text":"使用PP19击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"PP19"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 23 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"PP19"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 23 run tellraw @s [{"text":"使用PP19击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP7"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 24 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP7"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 24 run tellraw @s [{"text":"使用MP7击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP7"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 24 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP7"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 24 run tellraw @s [{"text":"使用MP7击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]
    
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"UMP45"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 25 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"UMP45"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 25 run tellraw @s [{"text":"使用UMP45击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"UMP45"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 25 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"UMP45"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 25 run tellraw @s [{"text":"使用UMP45击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Mac-10"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 26 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Mac-10"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 26 run tellraw @s [{"text":"使用Mac-10击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Mac-10"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 26 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"Mac-10"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 26 run tellraw @s [{"text":"使用Mac-10击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP5-SD"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 27 run scoreboard players add @s DeathMatchPoints 12
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP5-SD"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 27 run tellraw @s [{"text":"使用MP5-SD击杀一名敌人 ","color":"white"},{"text":"+12分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP5-SD"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 27 run scoreboard players add @s DeathMatchPoints 18
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"MP5-SD"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 27 run tellraw @s [{"text":"使用MP5-SD击杀一名敌人 ","color":"white"},{"text":"+18分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M249"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 31 run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M249"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 31 run tellraw @s [{"text":"使用M249击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M249"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 31 run scoreboard players add @s DeathMatchPoints 17
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M249"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 31 run tellraw @s [{"text":"使用M249击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M870"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 32 run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M870"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 32 run tellraw @s [{"text":"使用M870击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M870"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 32 run scoreboard players add @s DeathMatchPoints 17
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M870"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 32 run tellraw @s [{"text":"使用M870击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"内格夫"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 33 run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"内格夫"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 33 run tellraw @s [{"text":"使用内格夫击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"内格夫"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 33 run scoreboard players add @s DeathMatchPoints 17
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"内格夫"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 33 run tellraw @s [{"text":"使用内格夫击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M1014"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 34 run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M1014"}}}] unless score BonusWeaponsSeed DeathMatchSeed matches 34 run tellraw @s [{"text":"使用M1014击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M1014"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 34 run scoreboard players add @s DeathMatchPoints 17
execute if entity @s[nbt={SelectedItem:{tag:{GunName:"M1014"}}}] if score BonusWeaponsSeed DeathMatchSeed matches 34 run tellraw @s [{"text":"使用M1014击杀一名敌人 ","color":"white"},{"text":"+17分","color":"green"}]
    

#为了应为与敌人同时死亡的情况，枚举一个手持空物品击杀玩家的
execute if entity @s[nbt={SelectedItem:{id:"minecraft:air"}}] run scoreboard players add @s DeathMatchPoints 11
execute if entity @s[nbt={SelectedItem:{id:"minecraft:air"}}] run tellraw @s [{"text":"击杀一名敌人 ","color":"white"},{"text":"+11分","color":"green"}]

#其他物品的击杀反馈
execute if entity @s[nbt={SelectedItem:{tag:{GunType:3}}}] run scoreboard players add @s DeathMatchPoints 20
execute if entity @s[nbt={SelectedItem:{tag:{GunType:3}}}] run tellraw @s [{"text":"使用近战武器击杀一名敌人 ","color":"white"},{"text":"+20分","color":"green"}]

execute if entity @s[nbt={SelectedItem:{id:"block_bettle:dian_ji_qiang"}}] run scoreboard players add @s DeathMatchPoints 15
execute if entity @s[nbt={SelectedItem:{id:"block_bettle:dian_ji_qiang"}}] run tellraw @s [{"text":"使用电击枪击杀一名敌人 ","color":"white"},{"text":"+15分","color":"green"}]


experience add @s 1 levels

scoreboard players set @s Kills 0