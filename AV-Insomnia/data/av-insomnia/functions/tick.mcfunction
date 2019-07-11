
# run enter_bed for all players that have just gotten into bed
execute as @a[nbt={SleepTimer:1s}] run function av-insomnia:enter_bed

# if a player hits 100 ticks sleeping in bed, attempt to skip night
execute if entity @a[nbt={SleepTimer:100s}] run function av-insomnia:attempt_skip_night

# allow players to set their insomnia status
# handle players setting/disabling insomnia
tellraw @a[scores={av-insomnia-trig=1}] {"color":"gray","text":"You are now experiencing insomnia"}
tellraw @a[scores={av-insomnia-trig=2..}] {"color":"gray","text":"You are no longer experiencing insomnia"}
scoreboard players set @a[scores={av-insomnia-trig=1}] av-insomnia 1
scoreboard players set @a[scores={av-insomnia-trig=2..}] av-insomnia 0
scoreboard players set @a av-insomnia-trig 0