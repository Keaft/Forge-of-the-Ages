#Name: exnihilocreatio.zs
#Author: Keaft

import mods.exnihilocreatio.Hammer;

print("Initializing 'exnihilocreatio.zs'...");

// Hammer
// mods.exnihilocreatio.Hammer.addRecipe(IIngredient, IItemStack, Int, Float, Float);
mods.exnihilocreatio.Hammer.addRecipe(<minecraft:obsidian>, <contenttweaker:obsidian_gravel>, 2, 1, 1);


print("Initialized 'exnihilocreatio'");