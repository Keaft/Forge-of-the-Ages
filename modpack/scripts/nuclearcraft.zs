#Name: nuclearcraft.zs
#Author: Keaft

import mods.nuclearcraft.pressurizer;

print("Initializing 'nuclearcraft'...");

// --- Alloy Furnace ---
//mods.nuclearcraft.alloy_furnace.addRecipe([itemInput1, itemInput2, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
//mods.nuclearcraft.alloy_furnace.removeRecipeWithInput([itemInput1, itemInput2]);
//mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput([itemOutput1]);
//mods.nuclearcraft.alloy_furnace.removeAllRecipes();

mods.nuclearcraft.alloy_furnace.removeRecipeWithInput([<enderio:item_alloy_endergy_ingot:2>, <minecraft:nether_star>]);
mods.nuclearcraft.alloy_furnace.addRecipe([<enderio:item_alloy_ingot:8> * 2, <minecraft:nether_star>, <enderio:item_alloy_endergy_ingot:3> * 4]);

// --- Pressurizer ---
//mods.nuclearcraft.pressurizer.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);
//mods.nuclearcraft.pressurizer.removeRecipeWithOutput([itemOutput]);

// - Plates
//Iron
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:32>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotIron> * 2, <thermalfoundation:material:32>]);
//Gold
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:33>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotGold> * 2, <thermalfoundation:material:33>]);
//Copper
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:320>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotCopper> * 2, <thermalfoundation:material:320>]);
//Tin
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:321>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotTin> * 2, <thermalfoundation:material:321>]);
//Silver
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:322>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotSilver> * 2, <thermalfoundation:material:322>]);
//Lead
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:323>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotLead> * 2, <thermalfoundation:material:323>]);
//Aluminum
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:324>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotAluminum> * 2, <thermalfoundation:material:324>]);
//Nickel
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:325>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotNickel> * 2, <thermalfoundation:material:325>]);
//Platinum
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:326>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotPlatinum> * 2, <thermalfoundation:material:326>]);
//Iridium
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:327>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotIridium> * 2, <thermalfoundation:material:327>]);
//Mana Infused
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:328>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotMithril> * 2, <thermalfoundation:material:328>]);
//Steel
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:352>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotSteel> * 2, <thermalfoundation:material:352>]);
//Electrum
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:353>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotElectrum> * 2, <thermalfoundation:material:353>]);
//Invar
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:354>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotInvar> * 2, <thermalfoundation:material:354>]);
//Bronze
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:355>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotBronze> * 2, <thermalfoundation:material:355>]);
//Constantan
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:356>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotConstantan> * 2, <thermalfoundation:material:356>]);
//Signalum
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:357>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotSignalum> * 2, <thermalfoundation:material:357>]);
//Lumium
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:358>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotLumium> * 2, <thermalfoundation:material:358>]);
//Enderium
mods.nuclearcraft.pressurizer.removeRecipeWithOutput([<thermalfoundation:material:359>]);
mods.nuclearcraft.pressurizer.addRecipe([<ore:ingotEnderium> * 2, <thermalfoundation:material:359>]);
//Certus Quartz
mods.nuclearcraft.pressurizer.addRecipe([<appliedenergistics2:material> * 2, <contenttweaker:certus_quartz_plate>]);
//Fluix
mods.nuclearcraft.pressurizer.addRecipe([<appliedenergistics2:material:7> * 2, <contenttweaker:fluix_plate>]);
//Diamond
mods.nuclearcraft.pressurizer.addRecipe([<minecraft:diamond> * 2, <contenttweaker:diamond_plate>]);

// --- Infuser ---
// mods.nuclearcraft.infuser.removeRecipeWithOutput([itemOutput]);
// mods.nuclearcraft.infuser.addRecipe([itemInput, fluidInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);

// End Stone
mods.nuclearcraft.infuser.removeRecipeWithOutput([<minecraft:end_stone>]);

// Nether Rack
mods.nuclearcraft.infuser.addRecipe(<minecraft:redstone>, <liquid:lava> * 1000, <minecraft:netherrack>);

// Soul Sand
mods.nuclearcraft.infuser.addRecipe(<minecraft:sand>, <liquid:witchwater> * 1000, <minecraft:soul_sand>);

// Spore End Stone
mods.nuclearcraft.infuser.addRecipe(<minecraft:mycelium>, <liquid:etheric_dew> * 1000, <contenttweaker:spore_endstone>);

// Stagnant Magma Slime Crystal
mods.nuclearcraft.infuser.addRecipe(<contenttweaker:stagnant_blue_slime_crystal>, <liquid:lava> * 1000, <contenttweaker:stagnant_magma_slime_crystal>);

// --- Manufactory ---
// mods.nuclearcraft.manufactory.removeRecipeWithInput([itemInput]);
// mods.nuclearcraft.manufactory.removeRecipeWithOutput([itemOutput]);
// mods.nuclearcraft.manufactory.addRecipe([itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation]);

mods.nuclearcraft.manufactory.removeRecipeWithOutput(<nuclearcraft:gem_dust:11>);
mods.nuclearcraft.manufactory.addRecipe(<minecraft:end_stone>, <nuclearcraft:gem_dust:11> * 4);

print("Initialized 'nuclearcraft'");