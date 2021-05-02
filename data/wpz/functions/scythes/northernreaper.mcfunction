scoreboard players set @s wpz-cooldown 20
scoreboard players set #dummy wpz-damage 15000
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run scoreboard players operation @s util.damage = #dummy wpz-damage
execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:scythes/knockback
effect give @e[tag=!wpz_damage_immune,distance=..3,type=!player] slowness 2 1
execute if score #dummy wpz-pvp matches 1 run effect give @e[tag=!wpz_damage_immune,distance=..3,type=player] slowness 2 1

tag @s remove wpz_damage_immune