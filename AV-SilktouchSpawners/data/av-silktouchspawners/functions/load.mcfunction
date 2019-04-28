# create the scoreboard objectives
scoreboard objectives add av-mine_spawner minecraft.mined:minecraft.spawner
scoreboard objectives add av-use_spawner minecraft.used:minecraft.spawner

# load confirmation
tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," Loaded ",{"text":"SilkTouchSpawners","color":"yellow"}]