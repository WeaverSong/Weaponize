execute rotated as @p run summon armor_stand ^ ^ ^0.5 {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["wpz-init","Caltrop","newspawn"],ArmorItems:[{},{},{},{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[type=armor_stand,tag=newspawn] at @s facing entity @p eyes run function wpz:snowballs/caltropmotion
kill @s