#Name: botania.zs
#Author: Keaft

import mods.botania.Brew;

print("Initializing 'botania'...");

//PureDaisy recipe addition
//mods.botania.PureDaisy.addRecipe(IIngredient blockInput, IItemStack blockOutput, @Optional int time);

// Elven Trading through Alfheim Portal
//mods.botania.ElvenTrade.addRecipe(IIngredient[] outputs, IIngredient[] input);

mods.botania.ElvenTrade.addRecipe([<draconicevolution:draconium_dust>], [<nuclearcraft:compound:8>,<nuclearcraft:compound:8>]);

print("Initialized 'botania'");