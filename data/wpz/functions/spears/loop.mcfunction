execute as @e[tag=!wpz_damage_immune,dx=0,dy=0,dz=0] run scoreboard players operation @s util.damage = @p[tag=temp] wpz-temp
scoreboard players remove @s wpz-outtime 1
execute if score @s wpz-outtime matches 1.. positioned ^ ^ ^0.1 run function wpz:spears/loop