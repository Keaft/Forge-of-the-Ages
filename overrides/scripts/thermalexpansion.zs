#Name: thermalexpansion.zs
#Author: Keaft

import mods.thermalexpansion.Enchanter;

print("Initializing 'thermalexpansion'...");

//Arcane Ensorcellator
//mods.thermalexpansion.Enchanter.addRecipe(IItemStack output, IItemStack input, IItemStack secondInput, int energy, int experience, boolean empowered);
//mods.thermalexpansion.Enchanter.removeRecipe(IItemStack input, IItemStack secondInput);

mods.thermalexpansion.Enchanter.removeRecipe(<minecraft:book>, <minecraft:soul_sand>);
mods.thermalexpansion.Enchanter.removeRecipe(<minecraft:book>, <thermalfoundation:material:1024>);

print("Initialized 'thermalexpansion'");