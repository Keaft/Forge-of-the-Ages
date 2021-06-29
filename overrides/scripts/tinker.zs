#Name: tinker.zs
#Author: Keaft

print("Initializing 'tinker'...");

// --- Tinkers Construct ---
//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);

// - Melting
//Silver from Ice and Fire
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 288, <iceandfire:silver_ore>);

// - Alloy
//Pig Iron
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 144,[<liquid:iron> * 576,<liquid:blood> * 200,<liquid:diamond> * 180]);
print("Initialized 'tinker'");