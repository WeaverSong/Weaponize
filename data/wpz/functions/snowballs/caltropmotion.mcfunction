execute store result score @s x1 run data get entity @s Pos[0] 1000
execute store result score @s y1 run data get entity @s Pos[1] 1000
execute store result score @s z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^-0.5

execute store result score @s x2 run data get entity @s Pos[0] 1000
execute store result score @s y2 run data get entity @s Pos[1] 1000
execute store result score @s z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.0025 run scoreboard players operation @s x2 -= @s x1
execute store result entity @s Motion[1] double 0.0025 run scoreboard players operation @s y2 -= @s y1
execute store result entity @s Motion[2] double 0.0025 run scoreboard players operation @s z2 -= @s z1

tag @s remove newspawn

scoreboard players set @s wpz-cooldown 20
scoreboard players set @s wpz-lifetime 1200