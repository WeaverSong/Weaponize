tag @s add temp
data merge entity @e[type=item_frame,tag=!Ballista,nbt={Item:{id:"minecraft:item_frame",tag:{CustomModelData:1}}},limit=1] {Tags:["Ballista","NewSpawn","wpz-init","Global.Ignore"],Facing:1b}
execute at @e[type=item_frame,tag=NewSpawn] run summon armor_stand ~ ~0.2 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Ballista","Global.Ignore","NewSpawn"],Pose:{},ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:10}}]}

data modify entity @e[type=armor_stand,tag=NewSpawn,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=armor_stand,tag=NewSpawn,limit=1] Pose.Head[1] set from entity @s Rotation[0]
execute as @e[type=armor_stand,tag=NewSpawn] at @s run tp @s @s
tag @e remove NewSpawn