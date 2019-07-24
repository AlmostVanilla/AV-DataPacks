# pull xp from chest by looking up
# first, calculate amount of xp to pull based on current level
scoreboard players set @s av-xp-dummy 0
scoreboard players set @s[scores={av-stored-xp=1..}] av-xp-dummy 1
scoreboard players set @s[scores={av-stored-xp=2..},level=11..] av-xp-dummy 2
scoreboard players set @s[scores={av-stored-xp=3..},level=21..] av-xp-dummy 3
scoreboard players set @s[scores={av-stored-xp=4..},level=31..] av-xp-dummy 4
scoreboard players set @s[scores={av-stored-xp=5..},level=41..] av-xp-dummy 5

# now use that number and move xp
scoreboard players remove @s[scores={av-xp-dummy=1}] av-stored-xp 1
xp add @s[scores={av-xp-dummy=1}] 1 points
scoreboard players remove @s[scores={av-xp-dummy=2}] av-stored-xp 2
xp add @s[scores={av-xp-dummy=2}] 2 points
scoreboard players remove @s[scores={av-xp-dummy=3}] av-stored-xp 3
xp add @s[scores={av-xp-dummy=3}] 3 points
scoreboard players remove @s[scores={av-xp-dummy=4}] av-stored-xp 4
xp add @s[scores={av-xp-dummy=4}] 4 points
scoreboard players remove @s[scores={av-xp-dummy=5}] av-stored-xp 5
xp add @s[scores={av-xp-dummy=5}] 5 points

# play sound
execute as @s[scores={av-xp-dummy=1..}] run playsound minecraft:item.bottle.empty player @a ~ ~ ~ 1 2

# emit particle
execute as @s[scores={av-xp-dummy=1..}] run particle minecraft:nautilus ~ ~2 ~ 0.2 0 0.2 3 10 force

# show title
title @s actionbar [{"color":"green","bold":true,"text":"▲ "},{"color":"dark_purple","bold":true,"text":"","extra":["Ender XP: ",{"score":{"name":"*","objective":"av-stored-xp"}}]},{"color":"green","bold":true,"text":" ▲"}]