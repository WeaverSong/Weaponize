#movement
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1
function wpz:boomerangs/fly/checks/base
execute at @s if block ~ ~2 ~ #wpz:air run tp @s ^ ^ ^0.1

#execute positioned ~ ~2 ~ run particle end_rod ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~2 ~ #wpz:air run tag @s add return

#subtractscoreboards
scoreboard players remove @s wpz-lifetime 1
scoreboard players remove @s wpz-outtime 1

#return
tag @s[scores={wpz-outtime=..0}] add return

