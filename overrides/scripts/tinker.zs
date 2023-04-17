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

//Resonant Clathrate
mods.tconstruct.Melting.addRecipe(<liquid:ender> * 250, <thermalfoundation:material:895>);

// - Alloy
//Pig Iron
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 144,[<liquid:iron> * 576,<liquid:blood> * 200,<liquid:diamond> * 666]);

// - Casting
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//mods.tconstruct.Casting.removeBasinRecipe(IItemStack output);
//mods.tconstruct.Casting.removeBasinRecipe(IItemStack output, ILiquidStack input);
//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
//mods.tconstruct.Casting.removeTableRecipe(IItemStack output);
//mods.tconstruct.Casting.removeTableRecipe(IItemStack output, ILiquidStack input);

// - Plates
//Iron
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:32>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:32>, <tconstruct:cast_custom:3>, <liquid:iron>, 288);
//Gold
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:33>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:33>, <tconstruct:cast_custom:3>, <liquid:gold>, 288);
//Copper
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:320>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:320>, <tconstruct:cast_custom:3>, <liquid:copper>, 288);
//Tin
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:321>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:321>, <tconstruct:cast_custom:3>, <liquid:tin>, 288);
//Silver
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:322>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:322>, <tconstruct:cast_custom:3>, <liquid:silver>, 288);
//Lead
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:323>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:323>, <tconstruct:cast_custom:3>, <liquid:lead>, 288);
//Aluminum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:324>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:324>, <tconstruct:cast_custom:3>, <liquid:aluminum>, 288);
//Nickel
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:325>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:325>, <tconstruct:cast_custom:3>, <liquid:nickel>, 288);
//Platinum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:326>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:326>, <tconstruct:cast_custom:3>, <liquid:platinum>, 288);
//Iridium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:327>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:327>, <tconstruct:cast_custom:3>, <liquid:iridium>, 288);
//Mana Infused
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:328>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:328>, <tconstruct:cast_custom:3>, <liquid:mithril>, 288);
//Steel
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:352>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:352>, <tconstruct:cast_custom:3>, <liquid:steel>, 288);
//Electrum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:353>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:353>, <tconstruct:cast_custom:3>, <liquid:electrum>, 288);
//Invar
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:354>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:354>, <tconstruct:cast_custom:3>, <liquid:invar>, 288);
//Bronze
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:355>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:355>, <tconstruct:cast_custom:3>, <liquid:bronze>, 288);
//Constantan
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:356>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:356>, <tconstruct:cast_custom:3>, <liquid:constantan>, 288);
//Signalum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:357>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:357>, <tconstruct:cast_custom:3>, <liquid:signalum>, 288);
//Lumium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:358>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:358>, <tconstruct:cast_custom:3>, <liquid:lumium>, 288);
//Enderium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:359>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:359>, <tconstruct:cast_custom:3>, <liquid:enderium>, 288);

// Honey Block
mods.tconstruct.Casting.addBasinRecipe(<futuremc:honey_block>, null, <liquid:honey>, 1000);

// Honey Bottle
mods.tconstruct.Casting.addTableRecipe(<futuremc:honey_bottle>, <minecraft:glass_bottle>, <liquid:honey>, 250, true);

// Plate mould
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <contenttweaker:cooked_porcelain_plate>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <contenttweaker:cooked_porcelain_plate>, <liquid:alubrass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <contenttweaker:cooked_porcelain_plate>, <liquid:brass>, 144, true);



print("Initialized 'tinker'");