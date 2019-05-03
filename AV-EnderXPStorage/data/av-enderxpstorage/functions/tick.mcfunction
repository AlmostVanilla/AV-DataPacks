
# put xp into chest by looking down
# first, calculate xp percentage
# use level to calc rate of transfer, and stored to calc storage ratio
#
# transfer rates 1, 2, and 3
#
# ratios:
# up to level 30 stored -> 80%
# 31 to 40 stored -> 60%
# 41 and up stored -> 40%
scoreboard players set @a av-xp-dummy 0
execute as @a[x_rotation=89..90,level=1..15,scores={av-stored-xp=..1400}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 81
execute as @a[x_rotation=89..90,level=16..30,scores={av-stored-xp=..1400}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 82
execute as @a[x_rotation=89..90,level=31..,scores={av-stored-xp=..1400}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 83
execute as @a[x_rotation=89..90,level=2..15,scores={av-stored-xp=1401..2900}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 61
execute as @a[x_rotation=89..90,level=16..30,scores={av-stored-xp=1401..2900}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 62
execute as @a[x_rotation=89..90,level=31..,scores={av-stored-xp=1401..2900}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 63
execute as @a[x_rotation=89..90,level=3..15,scores={av-stored-xp=2901..}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 41
execute as @a[x_rotation=89..90,level=16..30,scores={av-stored-xp=2901..}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 42
execute as @a[x_rotation=89..90,level=31..,scores={av-stored-xp=2901..}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 43

# now, use that percentage and rate to move xp
scoreboard players add @a[scores={av-xp-dummy=81}] av-stored-xp 4
xp add @a[scores={av-xp-dummy=81}] -5 points
scoreboard players add @a[scores={av-xp-dummy=82}] av-stored-xp 8
xp add @a[scores={av-xp-dummy=82}] -10 points
scoreboard players add @a[scores={av-xp-dummy=83}] av-stored-xp 16
xp add @a[scores={av-xp-dummy=83}] -20 points
scoreboard players add @a[scores={av-xp-dummy=61}] av-stored-xp 3
xp add @a[scores={av-xp-dummy=61}] -5 points
scoreboard players add @a[scores={av-xp-dummy=62}] av-stored-xp 6
xp add @a[scores={av-xp-dummy=62}] -10 points
scoreboard players add @a[scores={av-xp-dummy=63}] av-stored-xp 12
xp add @a[scores={av-xp-dummy=63}] -20 points
scoreboard players add @a[scores={av-xp-dummy=41}] av-stored-xp 2
xp add @a[scores={av-xp-dummy=41}] -5 points
scoreboard players add @a[scores={av-xp-dummy=42}] av-stored-xp 4
xp add @a[scores={av-xp-dummy=42}] -10 points
scoreboard players add @a[scores={av-xp-dummy=43}] av-stored-xp 8
xp add @a[scores={av-xp-dummy=43}] -20 points


# pull xp from chest by looking up
# first, calculate amount of xp to pull based on current level
scoreboard players set @a av-xp-dummy 0
execute as @a[x_rotation=-90..-89,scores={av-stored-xp=1..}] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 1
execute as @a[x_rotation=-90..-89,scores={av-stored-xp=2..},level=11..] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 2
execute as @a[x_rotation=-90..-89,scores={av-stored-xp=3..},level=21..] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 3
execute as @a[x_rotation=-90..-89,scores={av-stored-xp=4..},level=31..] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 4
execute as @a[x_rotation=-90..-89,scores={av-stored-xp=5..},level=41..] at @s if block ~ ~ ~ minecraft:ender_chest run scoreboard players set @s av-xp-dummy 5

# now use that number and move xp
scoreboard players remove @a[scores={av-xp-dummy=1}] av-stored-xp 1
xp add @a[scores={av-xp-dummy=1}] 1 points
scoreboard players remove @a[scores={av-xp-dummy=2}] av-stored-xp 2
xp add @a[scores={av-xp-dummy=2}] 2 points
scoreboard players remove @a[scores={av-xp-dummy=3}] av-stored-xp 3
xp add @a[scores={av-xp-dummy=3}] 3 points
scoreboard players remove @a[scores={av-xp-dummy=4}] av-stored-xp 4
xp add @a[scores={av-xp-dummy=4}] 4 points
scoreboard players remove @a[scores={av-xp-dummy=5}] av-stored-xp 5
xp add @a[scores={av-xp-dummy=5}] 5 points


# show title
execute as @a[x_rotation=89..90] at @s if block ~ ~ ~ minecraft:ender_chest run title @s actionbar {"color":"dark_purple","bold":true,"text":"","extra":["Ender XP: ",{"score":{"name":"*","objective":"av-stored-xp"}}]}
execute as @a[x_rotation=-90..-89] at @s if block ~ ~ ~ minecraft:ender_chest run title @s actionbar {"color":"dark_purple","bold":true,"text":"","extra":["Ender XP: ",{"score":{"name":"*","objective":"av-stored-xp"}}]}