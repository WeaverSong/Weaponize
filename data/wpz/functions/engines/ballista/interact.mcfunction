advancement revoke @s only wpz:engines/ballista

tag @s add temp

execute as @s[nbt={SelectedItem:{id:"minecraft:scute",tag:{CustomModelData:1}}}] at @e[type=item_frame,tag=Ballista,nbt={ItemRotation:3b}] positioned ~ ~0.2 ~ as @e[type=armor_stand,tag=Ballista,distance=..0.1,limit=1,sort=nearest] at @s run function wpz:engines/ballista/interacts/rotate

execute as @s[nbt={SelectedItem:{id:"minecraft:scute",tag:{BallistaAmmo:1b}}}] at @e[type=item_frame,tag=Ballista,nbt={ItemRotation:3b}] positioned ~ ~0.2 ~ as @e[type=armor_stand,tag=Ballista,tag=!Interacted,scores={wpz-boss-phase=3,wpz-boss-timer=0},distance=..0.1,limit=1,sort=nearest] at @s run function wpz:engines/ballista/interacts/load

execute at @e[type=item_frame,tag=Ballista,nbt={ItemRotation:3b}] positioned ~ ~0.2 ~ as @e[type=armor_stand,tag=Ballista,tag=!Interacted,distance=..0.1,limit=1,sort=nearest] at @s unless score @s wpz-boss-timer matches 1.. run function wpz:engines/ballista/interacts/prep


tag @s remove temp
tag @e remove Interacted
data modify entity @e[type=item_frame,tag=Ballista,nbt={ItemRotation:3b},limit=1] ItemRotation set value 2b