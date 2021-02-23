execute store result score @s x1 run data get entity @s Pos[0] 1000
execute store result score @s y1 run data get entity @s Pos[1] 1000
execute store result score @s z1 run data get entity @s Pos[2] 1000
execute at @s facing entity @e[tag=dealing_knockback,sort=nearest,limit=1] eyes run tp @s ^ ^ ^-1
execute store result score @s x2 run data get entity @s Pos[0] 1000
execute store result score @s y2 run data get entity @s Pos[1] 1000
execute store result score @s z2 run data get entity @s Pos[2] 1000
#3s are for debugging
execute store result score @s x3 run data get entity @s Pos[0] 1000
execute store result score @s y3 run data get entity @s Pos[1] 1000
execute store result score @s z3 run data get entity @s Pos[2] 1000
execute at @s facing entity @e[tag=dealing_knockback,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1

scoreboard players operation @s x2 -= @s x1
scoreboard players operation @s y2 -= @s y1
scoreboard players operation @s z2 -= @s z1


execute store result entity @s Motion[0] double 0.00001 run scoreboard players operation @s x2 *= #dummy wpz-damage
execute store result entity @s Motion[1] double 0.00001 run scoreboard players operation @s y2 *= #dummy wpz-damage
execute store result entity @s Motion[2] double 0.00001 run scoreboard players operation @s z2 *= #dummy wpz-damage