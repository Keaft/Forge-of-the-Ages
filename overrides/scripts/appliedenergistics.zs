#Name: appliedenergistics.zs
#Author: Keaft

import mods.appliedenergistics2.Grinder;

print("Initializing 'appliedenergistics'...");

//Applied Energistics 2
//Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);
Grinder.addRecipe(<enderio:item_material:32>, <minecraft:dye:4> , 4);
Grinder.addRecipe((<enderio:item_material:46> * 12), <minecraft:cactus> , 3);

print("Initialized 'appliedenergistics'");