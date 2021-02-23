execute store result score #dummy wpz-damage run scoreboard players get @s wpz-damage
tag @s add temp
# Locate an entity that could be hurt (not invulnerable, no iframes, ...)
execute positioned ~ ~2 ~ as @e[type=!item_frame,type=!leash_knot,type=!armor_stand,type=!item,tag=!temp,dx=0,dy=0,dz=0] unless score @s wpz-iframes matches 1.. unless score @s wpz-id = @e[type=armor_stand,tag=temp,limit=1,sort=nearest] wpz-id run tag @s add target
# If we found a victim, then bounce off and mark ourselves as on the return trip
execute if entity @e[tag=target] run tag @s add return
# Deal the specified amount of damage to the target
execute as @e[tag=target] unless score @s wpz-iframes matches 1.. run function wpz:damage/damage

# If the target doesn't have iframes then call the function to deal knockback
execute as @e[tag=target] unless score @s wpz-iframes matches 1.. run tag @s add wpz-push-me
execute as @e[tag=target] unless score @s wpz-iframes matches 1.. store result score @s wpz-stored-id run scoreboard players get @e[tag=temp,limit=1] wpz-id
execute as @e[tag=target] unless score @s wpz-iframes matches 1.. run scoreboard players set @s wpz-damage 50
execute unless score @e[tag=target,limit=1] wpz-iframes matches 1.. run scoreboard players set @e[tag=target] wpz-iframes 10

# Cleanup the tags
tag @s remove temp
tag @e remove target
tag @a remove dealing_knockback