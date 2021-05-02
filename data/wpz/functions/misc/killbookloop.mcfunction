data modify storage wpz KillNameTemp set from storage wpz KillName
loot spawn ~ ~ ~ loot wpz:head
execute store success score @s wpz-temp run data modify storage wpz KillNameTemp set from entity @e[type=item,nbt={Item:{id:"minecraft:player_head"}},limit=1,sort=nearest] Item.tag.SkullOwner.Name
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}},limit=1,sort=nearest]
execute if score @s wpz-temp matches 0 run kill @s