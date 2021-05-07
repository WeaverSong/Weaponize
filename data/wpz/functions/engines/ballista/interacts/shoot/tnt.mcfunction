function wpz:engines/ballista/interacts/shoot/setpos

scoreboard players set @s wpz-phase 0
scoreboard players set @s wpz-timer 40
data modify entity @s ArmorItems[3].tag.CustomModelData set value 11

data merge entity @e[type=arrow,tag=NewSpawn,limit=1] {CustomPotionEffects:[{Id:26b,Amplifier:5b,Duration:2,ShowParticles:0b},{Id:27b,Amplifier:5b,Duration:2,ShowParticles:0b}]}

tag @e[tag=NewSpawn] add TntBolt
tag @e remove NewSpawn