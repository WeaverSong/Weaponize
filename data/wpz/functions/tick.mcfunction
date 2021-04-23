#pushme test tag
execute as @e[tag=wpz-push-me] run function wpz:damage/knockback_entity_delayed

#scythe commands
execute as @a[scores={fungus=1..,wpz-cooldown=..0}] at @s run function wpz:scythes/checkscythe
execute as @e[scores={wpz-cooldown=11}] at @s run function wpz:scythes/stopspinning
execute as @e[scores={wpz-cooldown=0}] at @s run function wpz:scythes/stopspinning

#boomerang commands
execute as @a[scores={fungus=1..},nbt={SelectedItem:{tag:{boomerang:1b}}}] at @s run function wpz:boomerangs/throw
execute as @a[scores={fungus=1..},nbt={Inventory:[{Slot:-106b,tag:{boomerang:1b}}]}] at @s run function wpz:boomerangs/throw_offhand
execute as @e[tag=boomerang,tag=!return] at @s run function wpz:boomerangs/fly
execute as @e[tag=boomerang,tag=return] at @s run function wpz:boomerangs/return

#resets
scoreboard players remove @e[scores={wpz-cooldown=1..}] wpz-cooldown 1
scoreboard players reset @a fungus

#first time settings
execute as @a unless score @s wpz-cooldown matches 0.. run scoreboard players set @s wpz-cooldown 0

#runs an init on all untagged entities - useful for editing base values, or other such init things.
execute as @e[tag=!wpz-init] at @s run function wpz:init

#iframes
scoreboard players remove @e[scores={wpz-iframes=1..}] wpz-iframes 1

#bosses
execute as @e[type=slime,tag=boss] at @s run function wpz:bosses/tickcheck