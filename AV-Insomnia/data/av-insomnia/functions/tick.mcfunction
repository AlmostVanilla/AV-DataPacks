
# show insomnia status of players
execute if entity @a[scores={av-insomnia=1}] as @a[nbt={SleepTimer:1s}] run tellraw @s {"color":"gray","text":"","extra":["The following players are experiencing insomnia: ",{"selector":"@a[scores={av-insomnia=1..}]"}]}
execute unless entity @a[scores={av-insomnia=1}] as @a[nbt={SleepTimer:1s}] run tellraw @s {"color":"gray","text":"Nobody is experiencing insomnia"}

# if a player hits the 120 ticks sleeping in bed, attempt to skip night
execute if entity @a[nbt={SleepTimer:120s}] run function av-insomnia:attempt_skip_night

# allow players to set their insomnia status
# handle players setting/disabling insomnia
tellraw @a[scores={av-insomnia-trig=1}] {"color":"gray","text":"You are now experiencing insomnia"}
tellraw @a[scores={av-insomnia-trig=2..}] {"color":"gray","text":"You are no longer experiencing insomnia"}
scoreboard players set @a[scores={av-insomnia-trig=1}] av-insomnia 1
scoreboard players set @a[scores={av-insomnia-trig=2..}] av-insomnia 0
scoreboard players set @a av-insomnia-trig 0
# allow enabling/disabling insomnia
scoreboard players enable @a[nbt={SleepTimer:1s}] av-insomnia-trig
tellraw @a[nbt={SleepTimer:1s}] {"color":"dark_gray","text":"","extra":["Insomnia: ", {"text":"[Enable]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger av-insomnia-trig set 1"}}, " ", {"text":"[Disable]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger av-insomnia-trig set 2"}}]}