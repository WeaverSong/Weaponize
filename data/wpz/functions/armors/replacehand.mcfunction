data modify storage wpz Armor set from entity @s SelectedItem.tag
execute if data storage wpz Armor.tags.leather_base run item entity @s weapon.mainhand replace leather_helmet
execute if data storage wpz Armor.tags.iron_base run item entity @s weapon.mainhand replace iron_helmet
execute if data storage wpz Armor.tags.gold_base run item entity @s weapon.mainhand replace golden_helmet
execute if data storage wpz Armor.tags.diamond_base run item entity @s weapon.mainhand replace diamond_helmet
execute if data storage wpz Armor.tags.netherite_base run item entity @s weapon.mainhand replace netherite_helmet
item entity @s weapon.mainhand modify wpz:armor/hand