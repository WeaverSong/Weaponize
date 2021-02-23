#skeleton
attribute @s[type=skeleton] generic.max_health base set 5
data modify entity @s[type=skeleton] Health set value 5

#stray
attribute @s[type=stray] generic.max_health base set 8
data modify entity @s[type=stray] Health set value 8

#wither skeleton
attribute @s[type=wither_skeleton] generic.max_health base set 12
data modify entity @s[type=wither_skeleton] Health set value 12

#playerids
execute if entity @s[type=player] run scoreboard players add #dummy wpz-id 1
execute if entity @s[type=player] store result score @s wpz-id run scoreboard players get #dummy wpz-id



#add tag
tag @s add wpz-init