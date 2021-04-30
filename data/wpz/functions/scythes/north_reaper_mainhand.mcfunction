scoreboard players set @s wpz-cooldown 20
scoreboard players set #dummy wpz-damage 15000
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run scoreboard players operation @s util.damage = #dummy wpz-damage
execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:scythes/knockback
effect give @e[tag=!wpz_damage_immune,distance=..3,type=!player] slowness 2 1
execute if score #dummy wpz-pvp matches 1 run effect give @e[tag=!wpz_damage_immune,distance=..3,type=player] slowness 2 1

tag @s remove wpz_damage_immune

replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick{display:{Name:'{"text":"Northern Reaper","italic":false}',Lore:['{"text":"Right click to unleash a spinning attack","color":"gray","italic":false}','{"text":"dealing triple damage and slowing hit enemies","color":"gray","italic":false}','{"text":"5 Attack Damage","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:2,scythe:1b,northreaperscythe:1b,spinning:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1507946623,820793283,-1119207894,950415869],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.7,Operation:0,UUID:[I;1952576374,-1362736207,-1309576035,-1290734193],Slot:"mainhand"}]}