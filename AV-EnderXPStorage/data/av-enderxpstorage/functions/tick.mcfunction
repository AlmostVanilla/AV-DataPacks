# handle players that are standing on an ender chest and are looking up or down

# players looking down on an ender chest are attempting to store xp
execute as @a[x_rotation=89..90] at @s if block ~ ~ ~ minecraft:ender_chest run function av-enderxpstorage:attempt_store

# players looking up on an ender chest are attempting to retrieve xp
execute as @a[x_rotation=-90..-89] at @s if block ~ ~ ~ minecraft:ender_chest run function av-enderxpstorage:attempt_retrieve