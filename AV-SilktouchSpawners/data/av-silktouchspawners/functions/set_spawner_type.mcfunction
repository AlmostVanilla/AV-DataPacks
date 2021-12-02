# @s = player who just placed a spawner

# set the score back to 0
scoreboard players set @s av-use_spawner 0

# start by making a special command block
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"AV-SilktouchSpawners"} replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:pig"}}}

# put a pseudo-random value into av-counter
scoreboard players operation @s av-counter = #av-counter av-counter

# overworld -> zombie, skeleton, or spider
execute at @s[scores={av-counter=..32},nbt={Dimension:"minecraft:overworld"}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{entity:{id:"minecraft:skeleton"}}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
execute at @s[scores={av-counter=33..66},nbt={Dimension:"minecraft:overworld"}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{entity:{id:"minecraft:zombie"}}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
execute at @s[scores={av-counter=67..},nbt={Dimension:"minecraft:overworld"}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{entity:{id:"minecraft:spider"}}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
# nether -> blaze
execute at @s[scores={av-counter=..50},nbt={Dimension:"minecraft:the_nether"}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{entity:{id:"minecraft:blaze"}}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
execute at @s[scores={av-counter=51..},nbt={Dimension:"minecraft:the_nether"}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{entity:{id:"minecraft:magma_cube"}}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
# end -> enderman
execute at @s[nbt={Dimension:"minecraft:the_end"}] run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{entity:{id:"minecraft:enderman"}}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"}
# everything else
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:spawner{SpawnData:{entity:{id:"minecraft:ender_pearl"}}} replace minecraft:command_block{Command:"AV-SilktouchSpawners"} 