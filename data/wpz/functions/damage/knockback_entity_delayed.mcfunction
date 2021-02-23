execute store result score #dummy wpz-damage run scoreboard players get @s wpz-damage
tag @s add temp
execute as @a if score @s wpz-id = @e[tag=temp,limit=1] wpz-stored-id run tag @s add dealing_knockback
function wpz:damage/knockback_entity
tag @s remove temp
tag @s remove wpz-push-me
tag @e remove dealing_knockback