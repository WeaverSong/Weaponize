execute store result score @s x1 run data get entity @s Pos[0] 100
execute store result score @s y1 run data get entity @s Pos[1] 100
execute store result score @s z1 run data get entity @s Pos[2] 100

tp @s ^ ^ ^1

execute store result score @s x2 run data get entity @s Pos[0] 100
execute store result score @s y2 run data get entity @s Pos[1] 100
execute store result score @s z2 run data get entity @s Pos[2] 100

execute store result entity @s Motion[0] double 0.1 run scoreboard players operation @s x2 -= @s x1
execute store result entity @s Motion[1] double 0.1 run scoreboard players operation @s y2 -= @s y1
execute store result entity @s Motion[2] double 0.1 run scoreboard players operation @s z2 -= @s z1