
# Prevent experience drops when mining with silk touch

# clear nearby experience to prevent using this to farm experience
execute at @a[scores={av-mine_spawner=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run kill @e[type=minecraft:experience_orb,distance=..5]

# set the score back to 0
scoreboard players set @a[scores={av-mine_spawner=1..}] av-mine_spawner 0


# Handle placing spawners

# convert pig spawner into a special command block
execute as @a[scores={av-use_spawner=1..}] run function av-silktouchspawners:set_spawner_type 