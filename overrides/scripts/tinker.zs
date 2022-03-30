#Name: tinker.zs
#Author: Keaft

import mods.tconstruct.Fuel;
import mods.tconstruct.Melting;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;

print("Initializing 'tinker'...");

// --- Tinkers Construct ---

// - Smeltery Fuel -
//mods.tconstruct.Fuel.registerFuel(ILiquidStack fuel, int duration);
mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 2, 300);

// - Melting
//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
// Diamond stuff
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 3330, <minecraft:diamond_helmet>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 5328, <minecraft:diamond_chestplate>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 4662, <minecraft:diamond_leggings>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 2664, <minecraft:diamond_boots>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 1332, <minecraft:diamond_sword>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 666, <minecraft:diamond_shovel>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 1998, <minecraft:diamond_pickaxe>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 1998, <minecraft:diamond_axe>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 1332, <minecraft:diamond_hoe>, 1500);

// Glowstone Block
// mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>, <minecraft:glowstone>);

// Honey
mods.tconstruct.Melting.addRecipe(<liquid:honey> * 250, <harvestcraft:honeycombitem>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:honey> * 1000, <futuremc:honey_block>, 400);

//Silver from Ice and Fire
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 288, <iceandfire:silver_ore>);

// - Alloy
//Pig Iron
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 144,[<liquid:iron> * 576,<liquid:blood> * 200,<liquid:diamond> * 666]);

// - Casting
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);

// Honey Block
mods.tconstruct.Casting.addBasinRecipe(<futuremc:honey_block>, null, <liquid:honey>, 1000);

// Honey Bottle
mods.tconstruct.Casting.addTableRecipe(<futuremc:honey_bottle>, <minecraft:glass_bottle>, <liquid:honey>, 250, true);


print("Initialized 'tinker'");