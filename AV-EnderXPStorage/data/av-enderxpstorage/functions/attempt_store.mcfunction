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
scoreboard players set @s av-xp-dummy 0
scoreboard players set @s[level=1..15,scores={av-stored-xp=..1400}] av-xp-dummy 81
scoreboard players set @s[level=16..30,scores={av-stored-xp=..1400}] av-xp-dummy 82
scoreboard players set @s[level=31..,scores={av-stored-xp=..1400}] av-xp-dummy 83
scoreboard players set @s[level=2..15,scores={av-stored-xp=1401..2900}] av-xp-dummy 61
scoreboard players set @s[level=16..30,scores={av-stored-xp=1401..2900}] av-xp-dummy 62
scoreboard players set @s[level=31..,scores={av-stored-xp=1401..2900}] av-xp-dummy 63
scoreboard players set @s[level=3..15,scores={av-stored-xp=2901..}] av-xp-dummy 41
scoreboard players set @s[level=16..30,scores={av-stored-xp=2901..}] av-xp-dummy 42
scoreboard players set @s[level=31..,scores={av-stored-xp=2901..}] av-xp-dummy 43

# now, use that percentage and rate to move xp
scoreboard players add @s[scores={av-xp-dummy=81}] av-stored-xp 4
xp add @s[scores={av-xp-dummy=81}] -5 points
scoreboard players add @s[scores={av-xp-dummy=82}] av-stored-xp 8
xp add @s[scores={av-xp-dummy=82}] -10 points
scoreboard players add @s[scores={av-xp-dummy=83}] av-stored-xp 16
xp add @s[scores={av-xp-dummy=83}] -20 points
scoreboard players add @s[scores={av-xp-dummy=61}] av-stored-xp 3
xp add @s[scores={av-xp-dummy=61}] -5 points
scoreboard players add @s[scores={av-xp-dummy=62}] av-stored-xp 6
xp add @s[scores={av-xp-dummy=62}] -10 points
scoreboard players add @s[scores={av-xp-dummy=63}] av-stored-xp 12
xp add @s[scores={av-xp-dummy=63}] -20 points
scoreboard players add @s[scores={av-xp-dummy=41}] av-stored-xp 2
xp add @s[scores={av-xp-dummy=41}] -5 points
scoreboard players add @s[scores={av-xp-dummy=42}] av-stored-xp 4
xp add @s[scores={av-xp-dummy=42}] -10 points
scoreboard players add @s[scores={av-xp-dummy=43}] av-stored-xp 8
xp add @s[scores={av-xp-dummy=43}] -20 points

# show title
title @s actionbar {"color":"dark_purple","bold":true,"text":"","extra":["Ender XP: ",{"score":{"name":"*","objective":"av-stored-xp"}}]}

# give advancement if storage happened
advancement grant @s[scores={av-xp-dummy=1..}] until av-enderxpstorage:untouchable_xp