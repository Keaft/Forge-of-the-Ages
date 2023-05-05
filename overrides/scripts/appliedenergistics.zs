#Name: appliedenergistics.zs
#Author: Keaft

import mods.appliedenergistics2.Grinder;
import mods.appliedenergistics2.Inscriber;

print("Initializing 'appliedenergistics'...");

//Applied Energistics 2
//Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);
Grinder.addRecipe(<enderio:item_material:32>, <minecraft:dye:4> , 4);
Grinder.addRecipe((<enderio:item_material:46> * 12), <minecraft:cactus> , 3);

//Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput);
//Inscriber.removeRecipe(IItemStack output);

// Remove and replace circuits
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.addRecipe(<appliedenergistics2:material:16>, <contenttweaker:certus_quartz_plate>, true, <appliedenergistics2:material:13>);
Inscriber.addRecipe(<appliedenergistics2:material:17>, <contenttweaker:diamond_plate>, true, <appliedenergistics2:material:14>);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <thermalfoundation:material:33>, true, <appliedenergistics2:material:15>);

// Inscriber Crystal Press
Inscriber.addRecipe(<contenttweaker:inscriber_crystal_press>, <contenttweaker:solid_crystal_blank>, false, <ore:blockIron>);
Inscriber.addRecipe(<contenttweaker:inscriber_crystal_press>, <ore:blockIron>, true, <contenttweaker:inscriber_crystal_press>, <contenttweaker:inscriber_crystal_press>);

// Steel Crystal Shell
Inscriber.addRecipe(<contenttweaker:steel_crystal_shell>, <thermalfoundation:material:352>, true, <contenttweaker:inscriber_crystal_press>, <contenttweaker:inscriber_crystal_press>);

print("Initialized 'appliedenergistics'");