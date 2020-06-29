# load confirmation
execute if score #av-mcversion av-mcversion matches ..115 run tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," ",{"text":"SmithingRecipes requires MC 1.16+","color":"red"}]
execute if score #av-mcversion av-mcversion matches 116.. run tellraw @a ["",{"text":"[AlmostVanilla]","color":"green"}," Loaded ",{"text":"SmithingRecipes","color":"yellow"}]