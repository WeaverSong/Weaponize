scoreboard players set @s wpz-cooldown 20
scoreboard players set #dummy wpz-damage 10000
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run scoreboard players operation @s util.damage = #dummy wpz-damage
execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:scythes/knockback

tag @s remove wpz_damage_immune

replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick{display:{Name:'{"text":"Diamond Scythe","italic":false}',Lore:['{"text":"Right click to unleash a spinning attack","color":"gray","italic":false}','{"text":"dealing double wpz-damage","color":"gray","italic":false}','{"text":"5 Attack wpz-damage","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:51,scythe:1b,diamondscythe:1b,spinning:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;759575937,-371701757,-1192750113,367563133],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:0,UUID:[I;427870147,-1153283983,-1911627316,-1584269739],Slot:"mainhand"}]}