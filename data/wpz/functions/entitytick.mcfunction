#runs an init on all untagged entities - useful for editing base values, or other such init things.
execute as @s[tag=!wpz-init] at @s run function wpz:init

execute as @s[type=player] at @s run function wpz:playertick

#pushme test tag
execute as @s[tag=wpz-push-me] run function wpz:damage/knockback_entity_delayed

#boomerang commands
execute as @s[tag=boomerang,tag=!return] at @s run function wpz:boomerangs/fly
execute as @s[tag=boomerang,tag=return] at @s run function wpz:boomerangs/return

#engines
execute as @s[type=armor_stand,tag=Ballista] at @s run function wpz:engines/ballista/tick
execute as @s[type=armor_stand,tag=BallistaShot] at @s run function wpz:engines/ballista/shottick
execute as @s[type=arrow,tag=BallistaShot,nbt={inGround:1b}] at @s run function wpz:engines/ballista/shotkill

#iframes
scoreboard players remove @s[scores={wpz-iframes=1..}] wpz-iframes 1

#armor
#helmet replacing
execute if predicate wpz:armor/head/true/hasany run function wpz:armors/replacehead
execute if predicate wpz:armor/head/model/holding/hasany run function wpz:armors/replacehand
#attributes for standard armors
execute if predicate wpz:armor/has/feet run item entity @s armor.feet modify wpz:armor/attribute/feet
execute if predicate wpz:armor/has/legs run item entity @s armor.legs modify wpz:armor/attribute/legs
execute if predicate wpz:armor/has/chest run item entity @s armor.chest modify wpz:armor/attribute/chest
execute if predicate wpz:armor/has/head run item entity @s armor.head modify wpz:armor/attribute/head
execute if predicate wpz:armor/has/shield/mainhand run item entity @s weapon.mainhand modify wpz:armor/attribute/shield
execute if predicate wpz:armor/has/shield/offhand run item entity @s weapon.offhand modify wpz:armor/attribute/shield

#resets
scoreboard players remove @s[scores={wpz-cooldown=1..}] wpz-cooldown 1
scoreboard players remove @s[scores={wpz-lifetime=1..}] wpz-lifetime 1

#caltrops
execute as @s[type=armor_stand,tag=Caltrop,scores={wpz-cooldown=0}] at @s if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,distance=..0.5] run function wpz:misc/caltrop
kill @s[type=armor_stand,tag=Caltrop,scores={wpz-lifetime=0}]