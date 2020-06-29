
# init message
tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," ",{"text":"Loading data packs..."}]

# global setup
scoreboard objectives add av-mcversion dummy
scoreboard objectives add av-counter dummy
scoreboard objectives add av-X dummy
scoreboard objectives add av-Y dummy
scoreboard objectives add av-Z dummy

# determine minecraft version
function av:113
function av:114
function av:115
function av:116
execute if score #av-mcversion av-mcversion matches ..113 run tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," ",{"text":"AlmostVanilla requires MC 1.14+","color":"red"}]

# load all av-load functions
function #av:av-load

# done message
tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," ",{"text":"Loading complete!"}]