# @s = player who just entered bed

# show current insomnia players
execute if entity @a[scores={av-insomnia=1}] run tellraw @s {"color":"gray","text":"","extra":["The following players are experiencing insomnia: ",{"selector":"@a[scores={av-insomnia=1..}]"}]}
execute unless entity @a[scores={av-insomnia=1}] run tellraw @s {"color":"gray","text":"Nobody is experiencing insomnia"}

# allow enabling/disabling insomnia
scoreboard players enable @s av-insomnia-trig
tellraw @s[scores={av-insomnia=1}] {"color":"dark_gray","text":"","extra":["Insomnia: ", {"text":"[Disable]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger av-insomnia-trig set 2"}}]}
tellraw @s[scores={av-insomnia=0}] {"color":"dark_gray","text":"","extra":["Insomnia: ", {"text":"[Enable]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger av-insomnia-trig set 1"}}]}