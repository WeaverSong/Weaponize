scoreboard players set @s wpz-cooldown 20
scoreboard players set #dummy wpz-damage 12
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:damage/damage
execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:scythes/knockback

tag @s remove wpz_damage_immune

replaceitem entity @s weapon.offhand warped_fungus_on_a_stick{display:{Name:'{"text":"Netherite Scythe","italic":false}',Lore:['{"text":"Right click to unleash a spinning attack","color":"gray","italic":false}','{"text":"dealing double damage","color":"gray","italic":false}','{"text":"6 Attack Damage","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:61,scythe:1b,netheritescythe:1b,spinning:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1025592061,942294230,-1712724811,-2119400215],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:0,UUID:[I;880526557,-1553838143,-1396706914,-1997964647],Slot:"mainhand"}]}