scoreboard objectives setdisplay sidebar

execute if score CTWinTheGame GameProcess matches 1 run setblock 1059 -52 -7 minecraft:redstone_block
execute if score CTWinTheGame GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score CTWinTheGame GameProcess matches 1 run title @a subtitle [{"text":"CT胜利","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score TWinTheGame GameProcess matches 1 run setblock 1066 -52 -7 minecraft:redstone_block
execute if score TWinTheGame GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score TWinTheGame GameProcess matches 1 run title @a subtitle [{"text":"T胜利","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score Tie GameProcess matches 1 run setblock 1073 -52 -7 minecraft:redstone_block
execute if score Tie GameProcess matches 1 run title @a title [{"text":"游戏结束","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score Tie GameProcess matches 1 run title @a subtitle [{"text":"平局","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

