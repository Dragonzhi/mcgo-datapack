playsound minecraft:ui.loom.select_pattern player @s ~ ~ ~ 100 1.3 1

give @s written_book{pages:['["",{"text":"->游戏设置","bold":true},{"text":"\\n\\n·天气设置：\\n","color":"reset"},{"text":"晴天","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:game/weather_select/select_clear"}},{"text":"\\n","color":"reset","underlined":true},{"text":"雨天","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/weather_select/select_rain"}},{"text":"\\n","color":"reset","underlined":true},{"text":"雷雨天","underlined":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/function mcgo:game/weather_select/select_thunder"}}]'],title:"游戏设置",author:"MCS:GO"}

