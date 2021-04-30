execute as @s unless score @s wpz-boss-phase matches 0.. run scoreboard players set @s wpz-boss-phase 0

#loading animation
execute as @s[scores={wpz-boss-phase=2,wpz-boss-timer=0}] run function wpz:engines/ballista/interacts/preps/load-3
execute as @s[scores={wpz-boss-phase=1,wpz-boss-timer=0}] run function wpz:engines/ballista/interacts/preps/load-2
execute as @s[scores={wpz-boss-phase=0,wpz-boss-timer=0}] run function wpz:engines/ballista/interacts/preps/load-1

#firing
execute as @s[scores={wpz-boss-phase=4}] run function wpz:engines/ballista/interacts/shoot/wooden

scoreboard players set @s wpz-boss-timer 20

tag @s add Interacted