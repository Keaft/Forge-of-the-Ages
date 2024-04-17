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

// Certus Quartz
mods.botania.ElvenTrade.addRecipe([<appliedenergistics2:crystal_seed>.withTag({progress: 0})], [<appliedenergistics2:crystal_seed:600>.withTag({progress: 600})]);

// - Mana Infusion Alchemy
//mods.botania.ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana);

// Green Slime Crystal
mods.botania.ManaInfusion.addAlchemy(<tconstruct:materials:9>, <contenttweaker:stagnant_green_slime_crystal>, 12500);

// Blue Slime Crystal
mods.botania.ManaInfusion.addAlchemy(<tconstruct:materials:10>, <contenttweaker:stagnant_blue_slime_crystal>, 25000);

// Green Slime Crystal
mods.botania.ManaInfusion.addAlchemy(<tconstruct:materials:11>, <contenttweaker:stagnant_magma_slime_crystal>, 50000);

// Copper
mods.botania.ManaInfusion.addAlchemy(<metallurgy:copper_ingot>, <metallurgy:tin_ingot>, 2000);

// Tin
mods.botania.ManaInfusion.addAlchemy(<metallurgy:tin_ingot>, <metallurgy:copper_ingot>, 2000);

// - Mana Infusion regular
//mods.botania.ManaInfusion.addInfusion(IItemStack output, IIngredient input, int mana);
mods.botania.ManaInfusion.addInfusion(<minecraft:clay_ball>, <appliedenergistics2:material:2>, 200);

print("Initialized 'botania'");