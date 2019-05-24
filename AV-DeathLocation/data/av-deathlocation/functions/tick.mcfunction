# if a player died, tell them their death location
tellraw @a[scores={av-deathcheck=1..},nbt={Dimension:0}] {"color":"gray","text":"","extra":["☠ Overworld ",{"score":{"name":"*","objective":"av-X"}},", ",{"score":{"name":"*","objective":"av-Y"}},", ",{"score":{"name":"*","objective":"av-Z"}}]}
tellraw @a[scores={av-deathcheck=1..},nbt={Dimension:-1}] {"color":"gray","text":"","extra":["☠ Nether ",{"score":{"name":"*","objective":"av-X"}},", ",{"score":{"name":"*","objective":"av-Y"}},", ",{"score":{"name":"*","objective":"av-Z"}}]}
tellraw @a[scores={av-deathcheck=1..},nbt={Dimension:1}] {"color":"gray","text":"","extra":["☠ End ",{"score":{"name":"*","objective":"av-X"}},", ",{"score":{"name":"*","objective":"av-Y"}},", ",{"score":{"name":"*","objective":"av-Z"}}]}

# reset score
scoreboard players set @a[scores={av-deathcheck=1..}] av-deathcheck 0