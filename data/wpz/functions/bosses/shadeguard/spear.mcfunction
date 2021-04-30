tp @s ^ ^ ^0.01
execute unless block ~ ~ ~ air run kill @s

execute unless score @s wpz-boss-attack matches 1.. run scoreboard players add @s wpz-boss-temp 1
execute if score @s wpz-boss-attack matches 1.. run function wpz:bosses/shadeguard/spear
scoreboard players operation @s wpz-boss-attack = @s wpz-boss-temp