execute unless data entity @s Pose.Head run data merge entity @s {Pose:{Head:[0.1f,0f,0f]}}
execute run data modify entity @s Pose.Head[1] set value 0f
execute store success score @s wpz-temp run data modify entity @s Rotation[0] set from entity @p[tag=temp] Rotation[0]

execute if score @s wpz-temp matches 0 as @s[tag=!forward,tag=!backward] run tag @s add forward

execute if score @s wpz-temp matches 0 as @s[tag=forward,nbt={Pose:{Head:[-45f,0f,0f]}}] run tag @s add backward
execute if score @s wpz-temp matches 0 as @s[tag=forward,tag=backward,nbt={Pose:{Head:[-45f,0f,0f]}}] run tag @s remove forward
execute if score @s wpz-temp matches 0 as @s[tag=backward,nbt={Pose:{Head:[45f,0f,0f]}}] run tag @s add forward
execute if score @s wpz-temp matches 0 as @s[tag=forward,tag=backward,nbt={Pose:{Head:[45f,0f,0f]}}] run tag @s remove backward

execute if score @s wpz-temp matches 0 as @s[tag=forward] run function wpz:engines/ballista/interacts/rotate/forward
execute if score @s wpz-temp matches 0 as @s[tag=backward] run function wpz:engines/ballista/interacts/rotate/backward

data modify entity @s Rotation[1] set from entity @s Pose.Head[1]

tag @s add Interacted