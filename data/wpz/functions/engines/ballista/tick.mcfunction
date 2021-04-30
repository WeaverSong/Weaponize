scoreboard players remove @s[scores={wpz-boss-timer=1..}] wpz-boss-timer 1




execute positioned ~ ~-0.2 ~ as @e[type=item_frame,tag=Ballista,distance=..0.1] unless data entity @s Item run kill @s
execute positioned ~ ~-0.2 ~ unless entity @e[type=item_frame,tag=Ballista,distance=..0.1] run function wpz:engines/ballista/kill