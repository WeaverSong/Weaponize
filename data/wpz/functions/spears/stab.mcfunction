scoreboard players set @s wpz-cooldown 30
execute if predicate wpz:spears/mainhand store result score @s wpz-temp run data get entity @s SelectedItem.tag.CustomModelData
execute if predicate wpz:spears/offhand store result score @s wpz-temp run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute store result storage wpz temp int 1 run scoreboard players add @s wpz-temp 1
item entity @s[predicate=wpz:spears/mainhand] weapon.mainhand modify wpz:spears/cmd
item entity @s[predicate=wpz:spears/offhand] weapon.offhand modify wpz:spears/cmd

scoreboard players set @s wpz-outtime 70
execute if predicate wpz:spears/mainhand store result score @s wpz-temp run data get entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"generic.attack_damage"}].Amount 1000
execute if predicate wpz:spears/offhand store result score @s wpz-temp run data get entity @s Inventory[{Slot:-10b}].tag.AttributeModifiers[{AttributeName:"generic.attack_damage"}].Amount 1000
scoreboard players add @s wpz-temp 1000
tag @s add wpz_damage_immune
tag @s add temp
execute positioned ^ ^ ^ anchored eyes run function wpz:spears/loop
tag @s remove wpz_damage_immune
tag @s remove temp