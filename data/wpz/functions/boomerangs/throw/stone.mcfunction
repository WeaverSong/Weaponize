summon armor_stand ~ ~-0.2 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["boomerang","stone","temp"],ArmorItems:[{},{},{},{id:"minecraft:fermented_spider_eye",Count:1b,tag:{CustomModelData:102,boomerang:1b,stone:1b}}]}

execute store result entity @e[type=armor_stand,tag=temp,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[type=armor_stand,tag=temp,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]
scoreboard players set @e[type=armor_stand,tag=temp] wpz-outtime 12
scoreboard players set @e[type=armor_stand,tag=temp] wpz-lifetime 200
scoreboard players set @e[type=armor_stand,tag=temp] wpz-damage 4000
execute store result score @e[tag=temp,limit=1,sort=nearest] wpz-id run scoreboard players get @s wpz-id

tag @s remove temp