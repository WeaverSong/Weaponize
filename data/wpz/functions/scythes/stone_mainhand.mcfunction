scoreboard players set @s wpz-cooldown 20
scoreboard players set #dummy wpz-damage 3
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:damage/damage
execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:scythes/knockback

tag @s remove wpz_damage_immune

replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick{display:{Name:'{"text":"Stone Scythe","italic":false}',Lore:['{"text":"Right click to unleash a spinning attack","color":"gray","italic":false}','{"text":"dealing double damage","color":"gray","italic":false}','{"text":"3 Attack Damage","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:21,scythe:1b,stonescythe:1b,spinning:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-2092354005,1194410763,-1394776755,-1933626812],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:0,UUID:[I;931760827,986531277,-1547132380,-249766662],Slot:"mainhand"}]}