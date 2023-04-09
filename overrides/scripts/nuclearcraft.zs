#Name: nuclearcraft.zs
#Author: Keaft

import mods.nuclearcraft.pressurizer;

print("Initializing 'nuclearcraft'...");

// Pressurizer
//mods.nuclearcraft.pressurizer.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
//mods.nuclearcraft.pressurizer.removeRecipeWithOutput([itemOutput]);

mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:32>]);
mods.nuclearcraft.pressurizer.addRecipe([<minecraft:iron_ingot> * 2, <thermalfoundation:material:32>]);


print("Initialized 'nuclearcraft'");