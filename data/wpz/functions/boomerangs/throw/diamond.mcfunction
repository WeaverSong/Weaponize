summon armor_stand ~ ~-0.2 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["boomerang","diamond","temp"],ArmorItems:[{},{},{},{id:"minecraft:fermented_spider_eye",Count:1b,tag:{CustomModelData:105,boomerang:1b,diamond:1b}}]}

execute store result entity @e[type=armor_stand,tag=temp,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[type=armor_stand,tag=temp,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]
scoreboard players set @e[type=armor_stand,tag=temp] wpz-outtime 19
scoreboard players set @e[type=armor_stand,tag=temp] wpz-lifetime 200
scoreboard players set @e[type=armor_stand,tag=temp] wpz-damage 6000
execute store result score @e[tag=temp,limit=1,sort=nearest] wpz-id run scoreboard players get @s wpz-id

tag @s remove temp