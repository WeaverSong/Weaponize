scoreboard players set @s wpz-cooldown 8
scoreboard players set #dummy wpz-damage 10000
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run scoreboard players operation @s util.damage = #dummy wpz-damage

tag @s remove wpz_damage_immune