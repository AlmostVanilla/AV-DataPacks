# handle players that are standing on an ender chest and are looking up or down

# players on a chest shows their ender xp
execute as @a at @s if block ~ ~ ~ minecraft:ender_chest run title @s actionbar {"color":"dark_purple","bold":true,"text":"","extra":["Ender XP: ",{"score":{"name":"*","objective":"av-stored-xp"}}]}

# players looking down on an ender chest are attempting to store xp
execute as @a[x_rotation=89..90] at @s if block ~ ~ ~ minecraft:ender_chest run function av-enderxpstorage:attempt_store

# players looking up on an ender chest are attempting to retrieve xp
execute as @a[x_rotation=-90..-89] at @s if block ~ ~ ~ minecraft:ender_chest run function av-enderxpstorage:attempt_retrieve