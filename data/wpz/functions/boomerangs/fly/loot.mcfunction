#movement
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
execute positioned ~ ~2 ~ if entity @e[type=item,distance=..1] run tag @s add return
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air unless entity @s[tag=return] run tp @s ^ ^ ^0.1

tag @s add temp
execute positioned ~ ~2 ~ as @e[type=item,distance=..1,limit=1] run tag @s add nabbed
execute positioned ~ ~2 ~ as @e[type=item,distance=..1,limit=1] store result score @s wpz-id as @e[type=armor_stand,tag=temp,limit=1,sort=nearest] run scoreboard players get @s wpz-id
execute positioned ~ ~2 ~ if entity @e[type=item,distance=..1] run tag @s add return
tag @s remove temp

#execute positioned ~ ~2 ~ run particle end_rod ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~2 ~ #wpz:air run tag @s add return

#subtractscoreboards
scoreboard players remove @s wpz-lifetime 1
scoreboard players remove @s wpz-outtime 1

#return
tag @s[scores={wpz-outtime=..0}] add return

