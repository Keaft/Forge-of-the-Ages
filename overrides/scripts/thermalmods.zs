#Name: thermalmods.zs
#Author: Keaft

import mods.thermalexpansion.Enchanter;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Compactor;

print("Initializing 'thermalmods'...");

// Arcane Ensorcellator
//mods.thermalexpansion.Enchanter.addRecipe(IItemStack output, IItemStack input, IItemStack secondInput, int energy, int experience, boolean empowered);
//mods.thermalexpansion.Enchanter.removeRecipe(IItemStack input, IItemStack secondInput);

mods.thermalexpansion.Enchanter.removeRecipe(<minecraft:book>, <minecraft:soul_sand>);
mods.thermalexpansion.Enchanter.removeRecipe(<minecraft:book>, <thermalfoundation:material:1024>);

// Centrifugal Seperator
//mods.thermalexpansion.Centrifuge.addRecipe(WeightedItemStack[] outputs, IItemStack input, ILiquidStack fluid, int energy);
// - mods.thermalexpansion.Centrifuge.addRecipe([(<minecraft:gold_ingot> * 5) % 10, <minecraft:iron_ingot> % 50], <minecraft:gold_ore>, <liquid:lava>, 2000);
//mods.thermalexpansion.Centrifuge.removeRecipe(IItemStack input);

mods.thermalexpansion.Centrifuge.removeRecipe(<harvestcraft:honeycombitem>);
mods.thermalexpansion.Centrifuge.addRecipe([<harvestcraft:honeyitem>,<harvestcraft:beeswaxitem>], <harvestcraft:honeycombitem>, <liquid:honey> * 250, 750);
mods.thermalexpansion.Centrifuge.addRecipe([<harvestcraft:beeswaxitem>], <harvestcraft:honeyitem>, <liquid:honey> * 50, 250);

// Fluid Transposer
//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);
//mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:leaves:1>, <minecraft:leaves:0>, <liquid:water> * 200, 20);
mods.thermalexpansion.Transposer.addFillRecipe(<futuremc:honey_bottle>, <minecraft:glass_bottle>, <liquid:honey> * 250, 200);

// Compactor
// Mint
//mods.thermalexpansion.Compactor.removeMintRecipe(IItemStack input);

mods.thermalexpansion.Compactor.removeMintRecipe(<minecraft:iron_ingot>);
mods.thermalexpansion.Compactor.removeMintRecipe(<minecraft:gold_ingot>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:128>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:129>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:130>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:131>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:132>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:133>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:134>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:135>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:136>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:160>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:161>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:162>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:163>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:164>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:165>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:166>);
mods.thermalexpansion.Compactor.removeMintRecipe(<thermalfoundation:material:167>);

// Storage
//mods.thermalexpansion.Compactor.addStorageRecipe(IItemStack output, IItemStack input, int energy);
//mods.thermalexpansion.Compactor.removeStorageRecipe(IItemStack input);

mods.thermalexpansion.Compactor.removeStorageRecipe(<minecraft:iron_ingot>);
mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:32>, <minecraft:iron_ingot> * 2, 4000);

print("Initialized 'thermalmods'");