#scythe commands
execute as @s[scores={fungus=1..,wpz-cooldown=..0},predicate=wpz:scythes/valid/any] run function wpz:scythes/checkscythe
execute as @s[scores={wpz-cooldown=11}] run function wpz:scythes/stopspinning
execute as @s[scores={wpz-cooldown=0}] run function wpz:scythes/stopspinning

#boomerangs
execute as @s[scores={fungus=1..},predicate=wpz:boomerangs/holding/any] at @s run function wpz:boomerangs/throw

#engines
execute as @s[scores={wpz-frameplace=1..}] at @s run function wpz:engines/place

#resets
scoreboard players remove @s[scores={wpz-cooldown=1..}] wpz-cooldown 1
scoreboard players reset @s fungus
scoreboard players reset @s wpz-frameplace

#greatsword handling
attribute @s[predicate=wpz:greatswords/not_invalid] generic.attack_speed modifier remove f9e61bfe-3354-4278-bedc-2f7a44c6f435
attribute @s[predicate=wpz:greatswords/not_invalid] generic.attack_damage modifier remove f9e61bfe-3354-4278-bedc-2f7a44c6f435
execute if predicate wpz:greatswords/has unless predicate wpz:greatswords/hasvalid run attribute @s generic.attack_speed modifier add f9e61bfe-3354-4278-bedc-2f7a44c6f435 "Disable Use" -100 add
execute if predicate wpz:greatswords/has unless predicate wpz:greatswords/hasvalid run attribute @s generic.attack_damage modifier add f9e61bfe-3354-4278-bedc-2f7a44c6f435 "Disable Use" -100 add

