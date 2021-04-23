summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,Health:400f,Tags:["shadeguard","boss"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["boss","shadeguard"],ArmorItems:[{},{},{},{id:"minecraft:fermented_spider_eye",Count:1b,tag:{CustomModelData:2}}]}],CustomName:'{"text":"Shadeguard","italic":false}',Attributes:[{Name:generic.max_health,Base:400}]}
bossbar add shadeguard {"text":"Shadeguard","color": "white"}
bossbar set shadeguard color white
bossbar set shadeguard max 400
bossbar set shadeguard style progress
bossbar set shadeguard value 400
bossbar set shadeguard visible true
bossbar set shadeguard players @a[distance=..100]

scoreboard players set @e[tag=boss,tag=shadeguard,limit=1,sort=nearest] wpz-boss-phase 1
scoreboard players set @e[tag=boss,tag=shadeguard,limit=1,sort=nearest] wpz-boss-attack -1
scoreboard players set @e[tag=boss,tag=shadeguard,limit=1,sort=nearest] wpz-boss-timer 60
scoreboard players set @e[tag=boss,tag=shadeguard,limit=1,sort=nearest] wpz-boss-temp 0