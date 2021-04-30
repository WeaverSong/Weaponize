function wpz:engines/ballista/interacts/shoot/setpos

scoreboard players set @s wpz-boss-phase 0
scoreboard players set @s wpz-boss-timer 40
data modify entity @s ArmorItems[3].tag.CustomModelData set value 10

tag @e[tag=NewSpawn] add WoodenBolt
tag @e remove NewSpawn