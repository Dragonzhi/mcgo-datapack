##
 # give_settings_book.mcfunction
 # 
 #
 # Created by .
##
playsound minecraft:ui.loom.select_pattern player @s ~ ~ ~ 100 1.3 1

give @s written_book{pages:['["",{"text":"->\\u6e38\\u620f\\u8bbe\\u7f6e","bold":true},{"text":"\\n\\n·\\u5929\\u6c14\\u8bbe\\u7f6e\\uff1a\\n","color":"reset"},{"text":"\\u6674\\u5929","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:game/weather_select/select_clear"}},{"text":"\\n","color":"reset","underlined":true},{"text":"\\u96e8\\u5929","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/weather_select/select_rain"}},{"text":"\\n","color":"reset","underlined":true},{"text":"\\u96f7\\u96e8\\u5929","underlined":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function mcgo:game/weather_select/select_thunder"}}]'],title:"游戏设置",author:"MCS:GO"}