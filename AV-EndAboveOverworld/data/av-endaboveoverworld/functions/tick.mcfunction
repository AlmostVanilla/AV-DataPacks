
# if a player is above 2000 blocks high in the overworld, teleport to the end
# if they are below 25 blocks in the end, teleport to the overworld

# use dimension numbers for versions up to 1.15
execute as @a[scores={av-Y=2000..},nbt={Dimension:0}] at @s in minecraft:the_end run tp ~ -2 ~
execute as @a[scores={av-Y=..-25},nbt={Dimension:1}] at @s in minecraft:overworld run tp ~ 1950 ~

# use dimension names for versions 1.16+
execute as @a[scores={av-Y=2000..},nbt={Dimension:"minecraft:overworld"}] at @s in minecraft:the_end run tp ~ -2 ~
execute as @a[scores={av-Y=..-25},nbt={Dimension:"minecraft:the_end"}] at @s in minecraft:overworld run tp ~ 1950 ~
