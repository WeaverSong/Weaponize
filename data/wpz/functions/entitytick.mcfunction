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