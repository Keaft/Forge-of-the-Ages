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

// - Plates
//Iron
mods.thermalexpansion.Compactor.removeStorageRecipe(<minecraft:iron_ingot>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:32>, <minecraft:iron_ingot> * 2, 4000);
//Gold
mods.thermalexpansion.Compactor.removeStorageRecipe(<minecraft:gold_ingot>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:33>, <minecraft:gold_ingot> * 2, 4000);
//Copper
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:128>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:320>, <metallurgy:copper_ingot> * 2, 4000);
//Tin
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:129>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:321>, <metallurgy:tin_ingot> * 2, 4000);
//Silver
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:130>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:322>, <metallurgy:silver_ingot> * 2, 4000);
//Lead
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:131>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:323>, <thermalfoundation:material:131> * 2, 4000);
//Aluminum
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:132>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:324>, <thermalfoundation:material:132> * 2, 4000);
//Nickel
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:133>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:325>, <thermalfoundation:material:133> * 2, 4000);
//Platinum
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:134>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:326>, <metallurgy:platinum_ingot> * 2, 4000);
//Iridium
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:135>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:327>, <thermalfoundation:material:135> * 2, 4000);
//Mana Infused
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:136>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:328>, <metallurgy:mithril_ingot> * 2, 4000);
//Steel
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:160>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:352>, <metallurgy:steel_ingot> * 2, 4000);
//Electrum
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:161>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:353>, <metallurgy:electrum_ingot> * 2, 4000);
//Invar
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:162>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:354>, <thermalfoundation:material:162> * 2, 4000);
//Bronze
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:163>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:355>, <metallurgy:bronze_ingot> * 2, 4000);
//Constantan
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:164>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:356>, <thermalfoundation:material:164> * 2, 4000);
//Signalum
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:165>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:357>, <thermalfoundation:material:165> * 2, 4000);
//Lumium
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:166>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:358>, <thermalfoundation:material:166> * 2, 4000);
//Enderium
mods.thermalexpansion.Compactor.removeStorageRecipe(<thermalfoundation:material:167>);
// mods.thermalexpansion.Compactor.addStorageRecipe(<thermalfoundation:material:359>, <thermalfoundation:material:167> * 2, 4000);

print("Initialized 'thermalmods'");