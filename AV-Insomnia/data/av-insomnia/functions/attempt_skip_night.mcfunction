# copy all players' sleep timer into scoreboard (for range testing)
execute as @a store result score @s av-insomnia-slep run data get entity @s SleepTimer

# skip the night if all players meet at least one of the following
# - have been in bed for at least 100 ticks, OR
# - are experiencing insomnia, OR
# - are in the nether or the end

# a player meets none of the previous criteria if:
# - they have been in bed for less than 100 ticks, AND
# - they are not experiencing insomnia, AND
# - they are in the overworld

# we want to execute a skip to daylight UNLESS a player has all of these
# different dimension checks for different versions
execute if score #av-mcversion av-mcversion matches ..115 unless entity @a[scores={av-insomnia-slep=..99,av-insomnia=0},nbt={Dimension:0}] run time set 0
execute if score #av-mcversion av-mcversion matches 116.. unless entity @a[scores={av-insomnia-slep=..99,av-insomnia=0},nbt={Dimension:"minecraft:overworld"}] run time set 0