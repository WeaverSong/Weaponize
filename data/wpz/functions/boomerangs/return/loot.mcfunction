tag @s add temp
execute as @a if score @s wpz-id = @e[type=armor_stand,tag=temp,limit=1] wpz-id run tag @s add temp
tag @s remove temp

#movement
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1
execute at @s facing entity @e[tag=temp] feet run tp @s ^ ^ ^0.1

tag @s add temp
execute positioned ~ ~1.6 ~ as @e[type=item,tag=nabbed] if score @s wpz-id = @e[type=armor_stand,limit=1,sort=nearest] wpz-id run tp @s ~ ~ ~
execute as @e[type=item,tag=nabbed] if score @s wpz-id = @e[type=armor_stand,limit=1,sort=nearest] wpz-id run data modify entity @s PickupDelay set value 2
tag @s remove temp

execute as @e[tag=temp,distance=..1.5] run function wpz:recipes/boomerangs/lootrang
execute positioned ~ ~ ~ if entity @e[tag=temp,distance=..1.5] run kill @s


#subtractscoreboards
scoreboard players remove @s wpz-lifetime 1


execute store result score #dummy wpz-damage run scoreboard players get @s wpz-damage
tag @s add temp
execute positioned ~ ~1 ~ if score @s wpz-outtime matches ..-2 as @e[type=!item_frame,type=!leash_knot,type=!armor_stand,type=!item,distance=..1] unless score @s wpz-id = @e[type=armor_stand,tag=temp,limit=1,sort=nearest] wpz-id as @e[type=armor_stand,tag=temp] run tag @s add return
execute positioned ~ ~1 ~ if score @s wpz-outtime matches ..-2 as @e[type=!item_frame,type=!leash_knot,type=!armor_stand,type=!item,distance=..1] unless score @s wpz-id = @e[type=armor_stand,tag=temp,limit=1,sort=nearest] wpz-id run scoreboard players operation @s util.damage = #dummy wpz-damage
tag @s remove temp


scoreboard players remove @s wpz-outtime 1


#kill
execute if score @s wpz-lifetime matches ..0 run function wpz:boomerangs/drop/base
kill @s[scores={wpz-lifetime=..0}]


tag @a remove temp