execute if score @s wpz-boss-timer matches 1.. run scoreboard players remove @s wpz-boss-timer 1
execute store result bossbar shadeguard value run data get entity @s Health


execute if score @s wpz-boss-attack matches -1 if score @s wpz-boss-timer matches 0 run function wpz:bosses/shadeguard/phase1/setat0



execute if score @s wpz-boss-attack matches 0 if score @s wpz-boss-timer matches 0 run function wpz:bosses/shadeguard/phase1/at0