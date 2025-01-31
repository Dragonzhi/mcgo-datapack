clear @a[team=CT] minecraft:written_book
clear @a[team=T] minecraft:written_book

item replace entity @a[team=T] hotbar.7 with written_book{pages:['["",{"text":"->T\\u6b66\\u5668\\u8d2d\\u4e70\\u83dc\\u5355","bold":true,"color":"gold"},{"text":"\\n\\u250c\\u2500\\u2500\\u2510\\u250c\\u2500\\u2500\\u2510\\n-","color":"reset"},{"text":"\\u624b\\u67aa","underlined":true,"clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u624b\\u67aa"}},{"text":"---","color":"reset"},{"text":"\\u6b65\\u67aa","underlined":true,"clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u6b65\\u67aa"}},{"text":"-\\n\\u2514\\u2500\\u2500\\u2518\\u2514\\u2500\\u2500\\u2518\\n\\u250c\\u2500\\u2500\\u2510\\u250c\\u2500\\u2500\\u2510\\n-","color":"reset"},{"text":"\\u91cd\\u578b","underlined":true,"clickEvent":{"action":"change_page","value":"4"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u91cd\\u578b\\u6b66\\u5668"}},{"text":"---","color":"reset"},{"text":"\\u51b2\\u950b","underlined":true,"clickEvent":{"action":"change_page","value":"5"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u51b2\\u950b\\u67aa"}},{"text":"-\\n\\u2514\\u2500\\u2500\\u2518\\u2514\\u2500\\u2500\\u2518\\n\\u250c\\u2500\\u2500\\u2510\\u250c\\u2500\\u2500\\u2510\\n-","color":"reset"},{"text":"\\u6295\\u63b7","underlined":true,"clickEvent":{"action":"change_page","value":"7"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u6295\\u63b7\\u7269"}},{"text":"---","color":"reset"},{"text":"\\u5176\\u4ed6","underlined":true,"clickEvent":{"action":"change_page","value":"6"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u62a4\\u7532\\u548c\\u9053\\u5177"}},{"text":"-\\n\\u2514\\u2500\\u2500\\u2518\\u2514\\u2500\\u2500\\u2518","color":"reset"}]','["",{"text":"->\\u624b\\u67aa\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"P320","bold":true},{"text":"-","color":"reset"},{"text":"$400","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_p320"}},{"text":"\\n","color":"reset"},{"text":"CZ75","bold":true},{"text":"-","color":"reset"},{"text":"$500","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_cz75"}},{"text":"\\n","color":"reset"},{"text":"R8\\u8f6c\\u8f6e","bold":true},{"text":"-","color":"reset"},{"text":"$600","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_r8"}},{"text":"\\n","color":"reset"},{"text":"\\u6c99\\u6f20\\u4e4b\\u9e70","bold":true},{"text":"-","color":"reset"},{"text":"$700","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_deagle"}},{"text":"\\n\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u526f\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/pistol_return"}}]','["",{"text":"->\\u6b65\\u67aa\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"\\u52a0\\u5229\\u5c14","bold":true},{"text":"-","color":"reset"},{"text":"$1800","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_gali"}},{"text":"\\n","color":"reset"},{"text":"AK47","bold":true},{"text":"-","color":"reset"},{"text":"$2700","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_ak47"}},{"text":"\\n","color":"reset"},{"text":"SSG-08","bold":true},{"text":"-","color":"reset"},{"text":"$1800","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_ssg"}},{"text":"\\n","color":"reset"},{"text":"AWP","bold":true},{"text":"-","color":"reset"},{"text":"$4750","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_awp"}},{"text":"\\n","color":"reset"},{"text":"ScarH","bold":true},{"text":"-","color":"reset"},{"text":"$5000","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_scar_h"}},{"text":"\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u4e3b\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/mainweapon_return"}}]','["",{"text":"->\\u91cd\\u578b\\u6b66\\u5668\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"\\u5185\\u683c\\u592b","bold":true},{"text":"-","color":"reset"},{"text":"$1700","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_neglv"}},{"text":"\\n","color":"reset"},{"text":"M249","bold":true},{"text":"-","color":"reset"},{"text":"$5200","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_m249"}},{"text":"\\n","color":"reset"},{"text":"M870","bold":true},{"text":"-","color":"reset"},{"text":"$1500","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_m870"}},{"text":"\\n","color":"reset"},{"text":"Sasg12","bold":true},{"text":"-","color":"reset"},{"text":"$2300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_sasg12"}},{"text":"\\n\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u4e3b\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/mainweapon_return"}}]','["",{"text":"->\\u51b2\\u950b\\u67aa\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"UZI","bold":true},{"text":"-","color":"reset"},{"text":"$1050","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_uzi"}},{"text":"\\n","color":"reset"},{"text":"UMP45","bold":true},{"text":"-","color":"reset"},{"text":"$1800","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_ump45"}},{"text":"\\n","color":"reset"},{"text":"PP19\\u91ce\\u725b","bold":true},{"text":"-","color":"reset"},{"text":"$1400","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_pp19"}},{"text":"\\n","color":"reset"},{"text":"P90","bold":true},{"text":"-","color":"reset"},{"text":"$2300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_p90"}},{"text":"\\n\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u4e3b\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/mainweapon_return"}}]','["",{"text":"->\\u5176\\u4ed6\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"\\u9632\\u5f39\\u8863","bold":true},{"text":"-","color":"reset"},{"text":"$650","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_ironvest"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_ironvest"}},{"text":"\\n\\n","color":"reset"},{"text":"\\u9632\\u5f39\\u8863&\\u5934\\u76d4","bold":true},{"text":"-","color":"reset"},{"text":"$1000","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_netheritevest"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_netheritevest"}},{"text":"\\n\\n","color":"reset"},{"text":"\\u7535\\u51fb\\u67aa","bold":true},{"text":"-","color":"reset"},{"text":"$200","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_stun_gun"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_stun_gun"}}]','["",{"text":"->\\u6295\\u63b7\\u7269\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"\\u95ea\\u5149\\u5f39","bold":true},{"text":"-","color":"reset"},{"text":"$200","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_flashbang"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_flashbang"}},{"text":"\\n","color":"reset"},{"text":"\\u70df\\u96fe\\u5f39","bold":true},{"text":"-","color":"reset"},{"text":"$300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_smoke"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_smoke"}},{"text":"\\n","color":"reset"},{"text":"\\u9ad8\\u7206\\u624b\\u96f7","bold":true},{"text":"-","color":"reset"},{"text":"$300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_he"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_he"}},{"text":"\\n","color":"reset"},{"text":"\\u71c3\\u70e7\\u74f6","bold":true},{"text":"-","color":"reset"},{"text":"$400","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_molotov"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_molotov"}}]'],title:"T武器购买菜单",author:"MCS:GO"} 1

item replace entity @a[team=CT] hotbar.7 with written_book{pages:['["",{"text":"->CT\\u6b66\\u5668\\u8d2d\\u4e70\\u83dc\\u5355","bold":true,"color":"blue"},{"text":"\\n\\u250c\\u2500\\u2500\\u2510\\u250c\\u2500\\u2500\\u2510\\n-","color":"reset"},{"text":"\\u624b\\u67aa","underlined":true,"clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u624b\\u67aa"}},{"text":"---","color":"reset"},{"text":"\\u6b65\\u67aa","underlined":true,"clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u6b65\\u67aa"}},{"text":"-\\n\\u2514\\u2500\\u2500\\u2518\\u2514\\u2500\\u2500\\u2518\\n\\u250c\\u2500\\u2500\\u2510\\u250c\\u2500\\u2500\\u2510\\n-","color":"reset"},{"text":"\\u91cd\\u578b","underlined":true,"clickEvent":{"action":"change_page","value":"4"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u91cd\\u578b\\u6b66\\u5668"}},{"text":"---","color":"reset"},{"text":"\\u51b2\\u950b","underlined":true,"clickEvent":{"action":"change_page","value":"5"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u51b2\\u950b\\u67aa"}},{"text":"-\\n\\u2514\\u2500\\u2500\\u2518\\u2514\\u2500\\u2500\\u2518\\n\\u250c\\u2500\\u2500\\u2510\\u250c\\u2500\\u2500\\u2510\\n-","color":"reset"},{"text":"\\u6295\\u63b7","underlined":true,"clickEvent":{"action":"change_page","value":"7"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u6295\\u63b7\\u7269"}},{"text":"---","color":"reset"},{"text":"\\u5176\\u4ed6","underlined":true,"clickEvent":{"action":"change_page","value":"6"},"hoverEvent":{"action":"show_text","contents":"\\u524d\\u5f80\\u8d2d\\u4e70\\u62a4\\u7532\\u548c\\u9053\\u5177"}},{"text":"-\\n\\u2514\\u2500\\u2500\\u2518\\u2514\\u2500\\u2500\\u2518","color":"reset"}]','["",{"text":"->\\u624b\\u67aa\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"P320","bold":true},{"text":"-","color":"reset"},{"text":"$400","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_p320"}},{"text":"\\n","color":"reset"},{"text":"CZ75","bold":true},{"text":"-","color":"reset"},{"text":"$500","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_cz75"}},{"text":"\\n","color":"reset"},{"text":"R8\\u8f6c\\u8f6e","bold":true},{"text":"-","color":"reset"},{"text":"$600","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_r8"}},{"text":"\\n","color":"reset"},{"text":"\\u6c99\\u6f20\\u4e4b\\u9e70","bold":true},{"text":"-","color":"reset"},{"text":"$700","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:pistols/pistol_get_deagle"}},{"text":"\\n\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u526f\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/pistol_return"}}]','["",{"text":"->\\u6b65\\u67aa\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"M4A1-S","bold":true},{"text":"-","color":"reset"},{"text":"$2900","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_m4a1_s"}},{"text":"\\n","color":"reset"},{"text":"AUG","bold":true},{"text":"-","color":"reset"},{"text":"$3300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_aug"}},{"text":"\\n","color":"reset"},{"text":"SSG-08","bold":true},{"text":"-","color":"reset"},{"text":"$1800","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_ssg"}},{"text":"\\n","color":"reset"},{"text":"AWP","bold":true},{"text":"-","color":"reset"},{"text":"$4750","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_awp"}},{"text":"\\n","color":"reset"},{"text":"ScarH","bold":true},{"text":"-","color":"reset"},{"text":"$5000","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:rifles/rifle_get_scar_h"}},{"text":"\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u4e3b\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/mainweapon_return"}}]','["",{"text":"->\\u91cd\\u578b\\u6b66\\u5668\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"\\u5185\\u683c\\u592b","bold":true},{"text":"-","color":"reset"},{"text":"$1700","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_neglv"}},{"text":"\\n","color":"reset"},{"text":"M249","bold":true},{"text":"-","color":"reset"},{"text":"$5200","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_m249"}},{"text":"\\n","color":"reset"},{"text":"M870","bold":true},{"text":"-","color":"reset"},{"text":"$1500","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_m870"}},{"text":"\\n","color":"reset"},{"text":"Sasg12","bold":true},{"text":"-","color":"reset"},{"text":"$2300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:heavy_weapons/heavyweapon_get_sasg12"}},{"text":"\\n\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u4e3b\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/mainweapon_return"}}]','["",{"text":"->\\u51b2\\u950b\\u67aa\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"MP5ST","bold":true},{"text":"-","color":"reset"},{"text":"$1500","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_mp5st"}},{"text":"\\n","color":"reset"},{"text":"UMP45","bold":true},{"text":"-","color":"reset"},{"text":"$1800","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_ump45"}},{"text":"\\n","color":"reset"},{"text":"PP19\\u91ce\\u725b","bold":true},{"text":"-","color":"reset"},{"text":"$1400","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_pp19"}},{"text":"\\n","color":"reset"},{"text":"P90","bold":true},{"text":"-","color":"reset"},{"text":"$2300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:submachine/submachine_get_p90"}},{"text":"\\n\\n\\n\\n\\n","color":"reset"},{"text":"\\u9000\\u8fd8\\u4e3b\\u6b66\\u5668","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function mcgo:game/get_guns/mainweapon_return"}}]','["",{"text":"->\\u5176\\u4ed6\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"\\u9632\\u5f39\\u8863","bold":true},{"text":"-","color":"reset"},{"text":"$650","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_ironvest"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_ironvest"}},{"text":"\\n\\n","color":"reset"},{"text":"\\u9632\\u5f39\\u8863&\\u5934\\u76d4","bold":true},{"text":"-","color":"reset"},{"text":"$1000","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_netheritevest"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_netheritevest"}},{"text":"\\n\\n","color":"reset"},{"text":"\\u62c6\\u5f39\\u5668","bold":true},{"text":"-","color":"reset"},{"text":"$400","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_kit"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_kit"}},{"text":"\\n\\n","color":"reset"},{"text":"\\u7535\\u51fb\\u67aa","bold":true},{"text":"-","color":"reset"},{"text":"$200","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_stun_gun"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_stun_gun"}}]','["",{"text":"->\\u6295\\u63b7\\u7269\\u8d2d\\u4e70\\u83dc\\u5355\\n\\n"},{"text":"\\u95ea\\u5149\\u5f39","bold":true},{"text":"-","color":"reset"},{"text":"$200","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_flashbang"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_flashbang"}},{"text":"\\n","color":"reset"},{"text":"\\u70df\\u96fe\\u5f39","bold":true},{"text":"-","color":"reset"},{"text":"$300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_smoke"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_smoke"}},{"text":"\\n","color":"reset"},{"text":"\\u9ad8\\u7206\\u624b\\u96f7","bold":true},{"text":"-","color":"reset"},{"text":"$300","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_he"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_he"}},{"text":"\\n","color":"reset"},{"text":"\\u71c3\\u70e7\\u5f39","bold":true},{"text":"-","color":"reset"},{"text":"$600","color":"dark_green"},{"text":"-","color":"reset"},{"text":"\\u8d2d\\u4e70","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_get_incendiary"}},{"text":"/","color":"reset"},{"text":"\\u9000\\u56de","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function mcgo:others/other_return_incendiary"}}]'],title:"CT武器购买菜单",author:"MCS:GO"} 1
