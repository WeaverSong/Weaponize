#runs an init on all untagged entities - useful for editing base values, or other such init things.
execute as @s[tag=!wpz-init] at @s run function wpz:init

#pushme test tag
execute as @s[tag=wpz-push-me] run function wpz:damage/knockback_entity_delayed

#scythe commands
execute as @s[type=player,scores={fungus=1..,wpz-cooldown=..0},predicate=wpz:scythes/valid/any] run function wpz:scythes/checkscythe
execute as @s[type=player,scores={wpz-cooldown=11}] run function wpz:scythes/stopspinning
execute as @s[type=player,scores={wpz-cooldown=0}] run function wpz:scythes/stopspinning

#boomerang commands
execute as @s[type=player,scores={fungus=1..},nbt={SelectedItem:{tag:{boomerang:1b}}}] at @s run function wpz:boomerangs/throw
execute as @s[type=player,scores={fungus=1..},nbt={Inventory:[{Slot:-106b,tag:{boomerang:1b}}]}] at @s run function wpz:boomerangs/throw_offhand
execute as @s[tag=boomerang,tag=!return] at @s run function wpz:boomerangs/fly
execute as @s[tag=boomerang,tag=return] at @s run function wpz:boomerangs/return

#engines
execute as @s[type=player,scores={wpz-frameplace=1..}] at @s run function wpz:engines/place
execute as @s[type=armor_stand,tag=Ballista] at @s run function wpz:engines/ballista/tick
execute as @s[type=armor_stand,tag=BallistaShot] at @s run function wpz:engines/ballista/shottick
execute as @s[type=arrow,tag=BallistaShot,nbt={inGround:1b}] at @s run function wpz:engines/ballista/shotkill

#resets
scoreboard players remove @s[type=player,scores={wpz-cooldown=1..}] wpz-cooldown 1
scoreboard players reset @s[type=player] fungus
scoreboard players reset @s[type=player] wpz-frameplace
#iframes
scoreboard players remove @s[scores={wpz-iframes=1..}] wpz-iframes 1