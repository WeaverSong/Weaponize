execute as @p[nbt={SelectedItem:{tag:{WoodenBolt:1b}}}] run clear @s scute{WoodenBolt:1b} 1
data modify entity @s ArmorItems[3].tag.CustomModelData set value 14
scoreboard players set @s wpz-phase 4