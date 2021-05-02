data modify storage wpz KillName set value ""
data modify storage wpz KillName set from entity @s SelectedItem.tag.pages[0]
execute as @a at @s run function wpz:misc/killbookloop