execute store result score @s wpz-health run data get entity @s Health 1
scoreboard players operation @s wpz-health -= #dummy wpz-damage

execute as @s[type=!player,type=!villager] at @s run function wpz:damage/damage_entity
execute as @s[type=player] at @s if score #dummy wpz-pvp matches 1 run function wpz:damage/damage_player

execute as @s[type=villager] at @s if score #dummy wpz-pvp matches 1 run function wpz:damage/damage_entity