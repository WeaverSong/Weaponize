summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["boss","shadeguard","shadespear","temp"],ArmorItems:[{},{},{},{id:"minecraft:fermented_spider_eye",Count:1b,tag:{CustomModelData:10000}}]}
execute as @e[tag=temp] at @s run function wpz:bosses/shadeguard/phase1/spearsummon

scoreboard players add @s wpz-boss-temp 1
scoreboard players set @s wpz-boss-timer 20

execute if score @s wpz-boss-temp matches 3.. run function wpz:bosses/shadeguard/phase1/setat1