
# start by making a special command block
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"AV-SilktouchSpawners"} replace minecraft:spawner{SpawnData:{id:"minecraft:pig"}}

# for people in the overworld, put a pseudo-random value into av-counter
scoreboard players operation @s[nbt={Dimension:0}] av-counter = #av-counter av-counter

# overworld -> zombie, skeleton, or spider
execute at @s[scores={av-counter=..32},nbt={Dimension:0}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:skeleton"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
execute at @s[scores={av-counter=33..66},nbt={Dimension:0}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:zombie"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
execute at @s[scores={av-counter=67..},nbt={Dimension:0}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:spider"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
# nether -> blaze
execute at @s[nbt={Dimension:-1}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:blaze"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
# end -> enderman
execute at @s[nbt={Dimension:1}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{id:"minecraft:enderman"}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}