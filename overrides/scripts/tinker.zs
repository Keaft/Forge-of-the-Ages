#Name: tinker.zs
#Author: Keaft

print("Initializing 'tinker'...");

// --- Tinkers Construct ---
//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);

// - Melting
//Silver from Ice and Fire
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 288, <iceandfire:silver_ore>);

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

// - Alloy
//Pig Iron
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 144,[<liquid:iron> * 576,<liquid:blood> * 200,<liquid:diamond> * 666]);
print("Initialized 'tinker'");