#scoreboard for right click detection
scoreboard objectives add fungus minecraft.used:minecraft.warped_fungus_on_a_stick

#damage system scoreboards
scoreboard objectives add wpz-damage dummy
scoreboard objectives add wpz-cooldown dummy
scoreboard objectives add wpz-health dummy
scoreboard objectives add wpz-maxhealth dummy

#weapon cooldown scoreboard
scoreboard players set @a wpz-cooldown 0

#pvp toggle - goes on #dummy
scoreboard objectives add wpz-pvp trigger

#location storages for motion
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy
scoreboard objectives add x2 dummy
scoreboard objectives add y2 dummy
scoreboard objectives add z2 dummy
scoreboard objectives add x3 dummy
scoreboard objectives add y3 dummy
scoreboard objectives add z3 dummy

#scoreboards for boomerangs
scoreboard objectives add wpz-outtime dummy
scoreboard objectives add wpz-lifetime dummy

#id scoreboard for tracking owners (on #dummy it marks the highest yet used)
scoreboard objectives add wpz-id dummy
scoreboard objectives add wpz-stored-id dummy

#immunity frames
scoreboard objectives add wpz-iframes dummy

#bosses
scoreboard objectives add wpz-boss-phase dummy
scoreboard objectives add wpz-boss-timer dummy
scoreboard objectives add wpz-boss-attack dummy
scoreboard objectives add wpz-boss-temp dummy

#placing
scoreboard objectives add wpz-frameplace minecraft.used:minecraft.item_frame



scoreboard objectives add wpz-temp dummy