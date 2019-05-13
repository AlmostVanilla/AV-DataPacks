# create scoreboard
scoreboard objectives add av-insomnia dummy
scoreboard objectives add av-insomnia-slep dummy
scoreboard objectives add av-insomnia-trig trigger "Insomnia"

# load confirmation
tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," Loaded ",{"text":"Insomnia","color":"yellow"}]