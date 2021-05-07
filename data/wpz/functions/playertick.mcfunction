#scythe commands
execute as @s[scores={fungus=1..,wpz-cooldown=..0},predicate=wpz:scythes/valid/any] run function wpz:scythes/checkscythe
execute as @s[scores={wpz-cooldown=11}] run function wpz:scythes/stopspinning
execute as @s[scores={wpz-cooldown=0}] run function wpz:scythes/stopspinning

#spear commands
execute as @s[scores={fungus=1..,wpz-cooldown=..0},predicate=wpz:spears/any] at @s run function wpz:spears/stab
execute as @s[scores={wpz-cooldown=23}] run function wpz:spears/stopstab

#boomerangs
execute as @s[scores={fungus=1..},predicate=wpz:boomerangs/holding/any] at @s run function wpz:boomerangs/throw

#engines
execute as @s[scores={wpz-frameplace=1..}] at @s run function wpz:engines/place

#resets
scoreboard players reset @s fungus
scoreboard players reset @s wpz-frameplace
scoreboard players set @s[scores={wpz-rap-time=0}] wpz-rap-combo 0
scoreboard players remove @s[scores={wpz-rap-time=1..}] wpz-rap-time 1

#greatsword handling
attribute @s[predicate=wpz:twohanded/not_invalid] generic.attack_speed modifier remove f9e61bfe-3354-4278-bedc-2f7a44c6f435
attribute @s[predicate=wpz:twohanded/not_invalid] generic.attack_damage modifier remove f9e61bfe-3354-4278-bedc-2f7a44c6f435
execute if predicate wpz:twohanded/has unless predicate wpz:twohanded/hasvalid run attribute @s generic.attack_speed modifier add f9e61bfe-3354-4278-bedc-2f7a44c6f435 "Disable Use" -100 add
execute if predicate wpz:twohanded/has unless predicate wpz:twohanded/hasvalid run attribute @s generic.attack_damage modifier add f9e61bfe-3354-4278-bedc-2f7a44c6f435 "Disable Use" -100 add

#combos
attribute @s generic.attack_damage modifier remove 3ed08584-5acf-4d76-9deb-935ce40524e1
execute if score @s wpz-rap-combo matches 2.. run function wpz:combos/rap