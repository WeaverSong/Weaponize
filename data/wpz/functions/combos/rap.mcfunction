execute if score @s wpz-rap-combo matches 2 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 0.5 add
execute if score @s wpz-rap-combo matches 3 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 1 add
execute if score @s wpz-rap-combo matches 4 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 1.5 add
execute if score @s wpz-rap-combo matches 5 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 2 add
execute if score @s wpz-rap-combo matches 6 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 2.5 add
execute if score @s wpz-rap-combo matches 7 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 3 add
execute if score @s wpz-rap-combo matches 8 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 3.5 add
execute if score @s wpz-rap-combo matches 9 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 4 add
execute if score @s wpz-rap-combo matches 10 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 4.5 add
execute if score @s wpz-rap-combo matches 11 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 5 add
execute if score @s wpz-rap-combo matches 12 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 5.5 add
execute if score @s wpz-rap-combo matches 13 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 6 add
execute if score @s wpz-rap-combo matches 14 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 6.5 add
execute if score @s wpz-rap-combo matches 15 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 7 add
execute if score @s wpz-rap-combo matches 16 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 7.5 add
execute if score @s wpz-rap-combo matches 17 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 8 add
execute if score @s wpz-rap-combo matches 18 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 8.5 add
execute if score @s wpz-rap-combo matches 19 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 9 add
execute if score @s wpz-rap-combo matches 20 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 9.5 add
execute if score @s wpz-rap-combo matches 21 run attribute @s generic.attack_damage modifier add 3ed08584-5acf-4d76-9deb-935ce40524e1 "Combo" 10 add


data modify storage wpz combo set value [-, -, -, -, -, -, -, -, -, -]
execute if score @s wpz-rap-combo matches ..19 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..17 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..15 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..13 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..11 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..9 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..7 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..5 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..3 run data remove storage wpz combo[-1]
execute if score @s wpz-rap-combo matches ..1 run data remove storage wpz combo[-1]

title @s actionbar ["",{"nbt":"combo","storage":"wpz","interpret":true,"color":"gold"},{"text":" Combo: ","color":"gold"},{"score":{"name":"*","objective":"wpz-rap-combo"},"color":"gold"},{"text":"x ","color":"gold"},{"nbt":"combo","storage":"wpz","interpret":true,"color":"gold"}]