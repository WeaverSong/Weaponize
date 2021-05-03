execute if entity @s[type=player] run data modify storage wpz Armor set from entity @s Inventory[{Slot:103b}].tag
execute unless entity @s[type=player] run data modify storage wpz Armor set from entity @s ArmorItems[3].tag
item entity @s armor.head replace warped_fungus_on_a_stick
item entity @s armor.head modify wpz:armor/head