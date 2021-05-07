execute as @s unless score @s wpz-phase matches 0.. run scoreboard players set @s wpz-phase 0

#loading animation
execute as @s[scores={wpz-phase=2,wpz-timer=0}] run function wpz:engines/ballista/interacts/preps/load-3
execute as @s[scores={wpz-phase=1,wpz-timer=0}] run function wpz:engines/ballista/interacts/preps/load-2
execute as @s[scores={wpz-phase=0,wpz-timer=0}] run function wpz:engines/ballista/interacts/preps/load-1

#firing
execute as @s[scores={wpz-phase=4}] run function wpz:engines/ballista/interacts/shoot/wooden
execute as @s[scores={wpz-phase=5}] run function wpz:engines/ballista/interacts/shoot/tnt

scoreboard players set @s wpz-timer 20

tag @s add Interacted