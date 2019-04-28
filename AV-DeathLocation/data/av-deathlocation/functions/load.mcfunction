# initialize scoreboard
scoreboard objectives add av-X dummy
scoreboard objectives add av-Y dummy
scoreboard objectives add av-Z dummy
scoreboard objectives add av-deathcheck deathCount

# load confirmation
tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," Loaded ",{"text":"DeathLocation","color":"yellow"}]