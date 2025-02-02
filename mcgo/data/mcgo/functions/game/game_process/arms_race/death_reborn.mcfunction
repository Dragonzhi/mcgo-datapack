execute if score pool SelectedMap matches 1 run spreadplayers 42 -26 1 2 under -59 false @s[team=T]
execute if score pool SelectedMap matches 1 run spreadplayers 5 -24 1 2 under -59 false @s[team=CT]

effect give @a health_boost 99999 2 true
effect give @a minecraft:saturation 99999 255 true
effect give @a minecraft:dolphins_grace 99999 1 true

effect give @a[scores={Deaths=1..}] minecraft:regeneration 3 255 true
scoreboard players set @a[scores={Deaths=1..}] Deaths 0
