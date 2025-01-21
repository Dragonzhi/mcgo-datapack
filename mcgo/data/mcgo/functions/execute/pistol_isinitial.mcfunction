#在购买初始手枪时执行，与pistol_isvalid.mcfunction配合

execute store result score @s mcs run data get entity @s Inventory[{Slot:1b}].tag.GunPrice
#检查是否为初始手枪
execute if entity @s[scores={Allowance=10}] run execute if score @s mcs matches 200 run scoreboard players set @s Allowance 11
    #检查为Glock还是USP
    execute if entity @s[scores={Allowance=11}] run execute store result score @s mcs run data get entity @s Inventory[{Slot:1b}].tag.GunName
    execute if entity @s[scores={Allowance=11}] run execute if score @s mcs matches 11 run scoreboard players set @s Allowance 12
        execute if entity @s[scores={Allowance=12}] run tellraw @s [{"text":"你已拥有格洛克，请丢弃后再试！","color":"red"}]
        execute if entity @s[scores={Allowance=12}] run scoreboard players set @s Allowance 0
    execute if entity @s[scores={Allowance=11}] run execute if score @s mcs matches 13 run scoreboard players set @s Allowance 12
        execute if entity @s[scores={Allowance=12}] run execute run tellraw @s [{"text":"你已拥有USP，请丢弃后再试！","color":"red"}]
        execute if entity @s[scores={Allowance=12}] run scoreboard players set @s Allowance 0
    execute if entity @s[scores={Allowance=11}] run scoreboard players set @s Allowance 10
    #以上两种情况都不成立，Allowance重设为10