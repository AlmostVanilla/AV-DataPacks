# @s = player who died

# reset scoreboard
scoreboard players set @s av-deathcheck 0

# determine name of dimension to show
# start with the raw nbt value
data modify storage av-deathlocation:dim Dimension set from entity @s Dimension

# 1.15 and earlier dimensions are numbers
execute as @s[nbt={Dimension:0}] run data modify storage av-deathlocation:dim Dimension set value "Overworld"
execute as @s[nbt={Dimension:-1}] run data modify storage av-deathlocation:dim Dimension set value "Nether"
execute as @s[nbt={Dimension:1}] run data modify storage av-deathlocation:dim Dimension set value "End"

# 1.16 and later dimensions are namespaced ids
execute as @s[nbt={Dimension:"minecraft:overworld"}] run data modify storage av-deathlocation:dim Dimension set value "Overworld"
execute as @s[nbt={Dimension:"minecraft:the_nether"}] run data modify storage av-deathlocation:dim Dimension set value "Nether"
execute as @s[nbt={Dimension:"minecraft:the_end"}] run data modify storage av-deathlocation:dim Dimension set value "End"
# some custom names for AV dimensions
execute as @s[nbt={Dimension:"av:proving_grounds"}] run data modify storage av-deathlocation:dim Dimension set value "Proving Grounds"

# tell the player their death location
tellraw @s {"color":"gray","text":"","extra":["☠ ",{"nbt":"Dimension","storage":"av-deathlocation:dim"}," ",{"score":{"name":"*","objective":"av-X"}},", ",{"score":{"name":"*","objective":"av-Y"}},", ",{"score":{"name":"*","objective":"av-Z"}}]}