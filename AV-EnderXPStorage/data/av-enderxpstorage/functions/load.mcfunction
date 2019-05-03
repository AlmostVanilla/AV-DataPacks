# create scoreboard
scoreboard objectives add av-stored-xp dummy "Stored XP"
scoreboard objectives add av-xp-dummy dummy

# load confirmation
tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," Loaded ",{"text":"EnderXPStorage","color":"yellow"}]