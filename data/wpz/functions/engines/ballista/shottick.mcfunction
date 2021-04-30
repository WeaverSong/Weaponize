data modify entity @s Pose.Head[0] set from entity @e[type=snowball,limit=1,sort=nearest] Rotation[1]
data modify entity @s Pose.Head[1] set from entity @e[type=snowball,limit=1,sort=nearest] Rotation[0]

execute if predicate wpz:fell_off positioned ^ ^ ^-10 run kill @s