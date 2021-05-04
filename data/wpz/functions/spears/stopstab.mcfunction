execute if predicate wpz:spears/mainhand store result score @s wpz-temp run data get entity @s SelectedItem.tag.CustomModelData
execute if predicate wpz:spears/offhand store result score @s wpz-temp run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData
execute store result storage wpz temp int 1 run scoreboard players remove @s wpz-temp 1
item entity @s[predicate=wpz:spears/mainhand] weapon.mainhand modify wpz:spears/cmd
item entity @s[predicate=wpz:spears/offhand] weapon.offhand modify wpz:spears/cmd