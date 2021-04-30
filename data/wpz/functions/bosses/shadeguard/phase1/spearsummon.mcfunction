spreadplayers ~ ~ 5 5 false @s

execute if predicate m.util:0.8 at @s run tp @s ~ ~5 ~
execute if predicate m.util:0.5 at @s run tp @s ~ ~8 ~
execute if predicate m.util:0.2 at @s run tp @s ~ ~2 ~

execute at @s facing entity @p eyes run tp @s @s
scoreboard players set @s wpz-boss-attack 1
scoreboard players set @s wpz-boss-temp 1