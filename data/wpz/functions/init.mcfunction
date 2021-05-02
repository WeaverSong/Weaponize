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

#cooldowns
scoreboard players set @s wpz-cooldown 0

#wandering traders
execute if entity @s[type=wandering_trader] run data modify entity @s Offers.Recipes prepend value {maxUses:1,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:emerald",Count:5b},xp:1,uses:0}
execute if entity @s[type=wandering_trader] run loot spawn ~ ~ ~ loot wpz:wandering_trader
execute if entity @s[type=wandering_trader] run data modify entity @s Offers.Recipes[0].sell set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{trader:1b}}}] Item
execute if entity @s[type=wandering_trader] run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{trader:1b}}}]



#add tag
tag @s add wpz-init