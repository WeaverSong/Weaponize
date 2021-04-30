scoreboard players set @s wpz-cooldown 20
scoreboard players set #dummy wpz-damage 4000
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run scoreboard players operation @s util.damage = #dummy wpz-damage
execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:scythes/knockback

tag @s remove wpz_damage_immune

replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick{display:{Name:'{"text":"Wooden Scythe","italic":false}',Lore:['{"text":"Right click to unleash a spinning attack","color":"gray","italic":false}','{"text":"dealing double damage","color":"gray","italic":false}','{"text":"2 Attack Damage","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:11,scythe:1b,woodenscythe:1b,spinning:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-1519190226,1584480863,-1864718674,-1599242354],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:0,UUID:[I;-1637526222,1964592099,-1711477904,-1497832430],Slot:"mainhand"}]}