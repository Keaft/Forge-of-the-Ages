#Name: botania.zs
#Author: Keaft

import mods.botania.ElvenTrade;
import mods.botania.Brew;
import mods.botania.ManaInfusion;

print("Initializing 'botania'...");

// - PureDaisy recipe addition
//mods.botania.PureDaisy.addRecipe(IIngredient blockInput, IItemStack blockOutput, @Optional int time);

// - Elven Trading through Alfheim Portal
//mods.botania.ElvenTrade.addRecipe(IIngredient[] outputs, IIngredient[] input);

// Draconium Dust
mods.botania.ElvenTrade.addRecipe([<draconicevolution:draconium_dust>], [<nuclearcraft:compound:8>,<nuclearcraft:compound:8>]);

// Ender Corrupter
mods.botania.ElvenTrade.addRecipe([<contenttweaker:ender_corrupter>], [<bountifulbaubles:enderdragonscale>]);

// - Mana Infusion Alchemy
//mods.botania.ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana);

// Green Slime Crystal
mods.botania.ManaInfusion.addAlchemy(<tconstruct:materials:9>, <contenttweaker:stagnant_green_slime_crystal>, 25000);

// Blue Slime Crystal
mods.botania.ManaInfusion.addAlchemy(<tconstruct:materials:10>, <contenttweaker:stagnant_blue_slime_crystal>, 50000);

// Green Slime Crystal
mods.botania.ManaInfusion.addAlchemy(<tconstruct:materials:11>, <contenttweaker:stagnant_magma_slime_crystal>, 100000);

// Copper
mods.botania.ManaInfusion.addAlchemy(<metallurgy:copper_ingot>, <metallurgy:tin_ingot>, 2000);

print("Initialized 'botania'");