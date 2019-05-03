# init scores
scoreboard objectives add av-level level "Level"
scoreboard objectives add av-health health "Health"
scoreboard objectives modify av-health
scoreboard objectives setdisplay list av-level
scoreboard objectives setdisplay belowName av-health

# load confirmation
tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," Loaded ",{"text":"ScoreDisplay","color":"yellow"}]