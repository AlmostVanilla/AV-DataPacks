
# Increment counter
scoreboard players add #av-counter av-counter 1

# Every tick
function #av:av-tick

# Every second
execute if score #av-counter av-counter matches 1 run function #av:av-second
execute if score #av-counter av-counter matches 21 run function #av:av-second
execute if score #av-counter av-counter matches 41 run function #av:av-second
execute if score #av-counter av-counter matches 61 run function #av:av-second
execute if score #av-counter av-counter matches 81 run function #av:av-second

# Reset counter if over 100
execute if score #av-counter av-counter matches 100.. run scoreboard players set #av-counter av-counter 0