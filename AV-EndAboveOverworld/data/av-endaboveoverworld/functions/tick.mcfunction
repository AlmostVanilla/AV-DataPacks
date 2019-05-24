
# if a player is above 2000 blocks high in the overworld, teleport to the end
execute as @a[scores={av-Y=2000..},nbt={Dimension:0}] at @s in minecraft:the_end run tp ~ -2 ~

# if a player is below 10 blocks in the end, teleport to the overworld
execute as @a[scores={av-Y=..-25},nbt={Dimension:1}] at @s in minecraft:overworld run tp ~ 1950 ~