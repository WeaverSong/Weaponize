execute store result score @s wpz-outtime run data get entity @s Pose.Head[0] 10
scoreboard players remove @s wpz-outtime 50
execute store result entity @s Pose.Head[0] float 0.1 run scoreboard players get @s wpz-outtime