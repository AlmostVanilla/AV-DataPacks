
# Prevent experience drops when mining with silk touch

# clear nearby experience to prevent using this to farm experience
execute at @a[scores={av-mine_spawner=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run kill @e[type=minecraft:experience_orb,distance=..5]

# set the score back to 0
scoreboard players set @a[scores={av-mine_spawner=1..}] av-mine_spawner 0


# Handle placing spawners

# convert pig spawner into a special command block
execute at @a[scores={av-use_spawner=1..}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"AV-SilktouchSpawners"} replace minecraft:spawner{SpawnData:{id:"minecraft:pig"}}

# for people in the overworld, put a pseudo-random value into av-counter
scoreboard players operation @a[scores={av-use_spawner=1..,av-dimension=0}] av-counter = #av-counter av-counter

# overworld -> zombie, skeleton, or spider
execute at @a[scores={av-use_spawner=1..,av-dimension=0,av-counter=..32}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:skeleton"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
execute at @a[scores={av-use_spawner=1..,av-dimension=0,av-counter=33..66}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:zombie"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
execute at @a[scores={av-use_spawner=1..,av-dimension=0,av-counter=67..}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:spider"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
# nether -> blaze
execute at @a[scores={av-use_spawner=1..,av-dimension=1}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:blaze"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
# end -> enderman
execute at @a[scores={av-use_spawner=1..,av-dimension=2}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:enderman"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}

# set the score back to 0
scoreboard players set @a[scores={av-use_spawner=1..}] av-use_spawner 0