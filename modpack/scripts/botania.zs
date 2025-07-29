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
mods.botania.ElvenTrade.addRecipe([<contenttweaker:ender_corrupter>], [<minecraft:dragon_egg>]);

// Certus Quartz
mods.botania.ElvenTrade.addRecipe([<appliedenergistics2:material:10>], [<appliedenergistics2:material:11>]);

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
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:23>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <appliedenergistics2:material:2>, 500);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <minecraft:glowstone_dust>, 500);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <minecraft:redstone>, 2000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <minecraft:gunpowder>, 2000);

//Quark rune color stripping
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:1>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:2>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:3>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:4>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:5>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:6>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:7>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:8>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:9>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:10>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:11>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:12>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:13>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:14>, 500);
mods.botania.ManaInfusion.addInfusion(<quark:rune:0>, <quark:rune:15>, 500);
print("Initialized 'botania'");