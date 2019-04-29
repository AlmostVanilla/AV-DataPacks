# if a player died, tell them their death location
tellraw @a[scores={av-deathcheck=1..},nbt={Dimension:0}] {"color":"gray","text":"","extra":["☠ Overworld ",{"score":{"name":"*","objective":"av-X"}},", ",{"score":{"name":"*","objective":"av-Y"}},", ",{"score":{"name":"*","objective":"av-Z"}}]}
tellraw @a[scores={av-deathcheck=1..},nbt={Dimension:-1}] {"color":"gray","text":"","extra":["☠ Nether ",{"score":{"name":"*","objective":"av-X"}},", ",{"score":{"name":"*","objective":"av-Y"}},", ",{"score":{"name":"*","objective":"av-Z"}}]}
tellraw @a[scores={av-deathcheck=1..},nbt={Dimension:1}] {"color":"gray","text":"","extra":["☠ End ",{"score":{"name":"*","objective":"av-X"}},", ",{"score":{"name":"*","objective":"av-Y"}},", ",{"score":{"name":"*","objective":"av-Z"}}]}

# reset score
scoreboard players set @a[scores={av-deathcheck=1..}] av-deathcheck 0

# set location for all players
execute as @a store result score @s av-X align xyz run data get entity @s Pos[0] 1.0
execute as @a store result score @s av-Y align xyz run data get entity @s Pos[1] 1.0
execute as @a store result score @s av-Z align xyz run data get entity @s Pos[2] 1.0