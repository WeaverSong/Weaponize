execute store result score @s wpz-maxhealth run attribute @s generic.max_health base get 1

kill @s[scores={wpz-health=..0}]
attribute @s[scores={wpz-health=1}] generic.max_health base set 1
attribute @s[scores={wpz-health=2}] generic.max_health base set 2
attribute @s[scores={wpz-health=3}] generic.max_health base set 3
attribute @s[scores={wpz-health=4}] generic.max_health base set 4
attribute @s[scores={wpz-health=5}] generic.max_health base set 5
attribute @s[scores={wpz-health=6}] generic.max_health base set 6
attribute @s[scores={wpz-health=7}] generic.max_health base set 7
attribute @s[scores={wpz-health=8}] generic.max_health base set 8
attribute @s[scores={wpz-health=9}] generic.max_health base set 9
attribute @s[scores={wpz-health=10}] generic.max_health base set 10
attribute @s[scores={wpz-health=11}] generic.max_health base set 11
attribute @s[scores={wpz-health=12}] generic.max_health base set 12
attribute @s[scores={wpz-health=13}] generic.max_health base set 13
attribute @s[scores={wpz-health=14}] generic.max_health base set 14
attribute @s[scores={wpz-health=15}] generic.max_health base set 15
attribute @s[scores={wpz-health=16}] generic.max_health base set 16
attribute @s[scores={wpz-health=17}] generic.max_health base set 17
attribute @s[scores={wpz-health=18}] generic.max_health base set 18
attribute @s[scores={wpz-health=19}] generic.max_health base set 19
attribute @s[scores={wpz-health=20}] generic.max_health base set 20
attribute @s[scores={wpz-health=21}] generic.max_health base set 21
attribute @s[scores={wpz-health=22}] generic.max_health base set 22
attribute @s[scores={wpz-health=23}] generic.max_health base set 23
attribute @s[scores={wpz-health=24}] generic.max_health base set 24
attribute @s[scores={wpz-health=25}] generic.max_health base set 25
attribute @s[scores={wpz-health=26}] generic.max_health base set 26
attribute @s[scores={wpz-health=27}] generic.max_health base set 27
attribute @s[scores={wpz-health=28}] generic.max_health base set 28
attribute @s[scores={wpz-health=29}] generic.max_health base set 29
attribute @s[scores={wpz-health=30}] generic.max_health base set 30

effect give @s instant_health 1 0 true

tag @s add finish_damage