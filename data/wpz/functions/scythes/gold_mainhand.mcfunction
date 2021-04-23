scoreboard players set @s wpz-cooldown 20
scoreboard players set #dummy wpz-damage 10
tag @s add wpz_damage_immune

execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run scoreboard players operation @s util.damage = #dummy wpz-damage
execute as @e[tag=!wpz_damage_immune,distance=..3] at @s run function wpz:scythes/knockback

tag @s remove wpz_damage_immune

replaceitem entity @s weapon.mainhand warped_fungus_on_a_stick{display:{Name:'{"text":"Gold Scythe","italic":false}',Lore:['{"text":"Right click to unleash a spinning attack","color":"gray","italic":false}','{"text":"dealing quintuple damage","color":"gray","italic":false}','{"text":"2 Attack Damage","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:41,scythe:1b,goldscythe:1b,spinning:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-872912509,856902088,-2064557447,149344074],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:0,UUID:[I;1993362702,-149665102,-2113667438,-1128320774],Slot:"mainhand"}]}