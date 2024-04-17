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
mods.tconstruct.Melting.addRecipe(<liquid:diamond> * 1332, <contenttweaker:diamond_plate>, 1500);

// Unobtanium
mods.tconstruct.Melting.addRecipe(<liquid:molten_unobtanium> * 144, <contenttweaker:unobtanium_ingot>, 1500);

// Certus Quartz
mods.tconstruct.Melting.addRecipe(<liquid:molten_certus_quartz> * 72, <appliedenergistics2:material:10>, 600);
mods.tconstruct.Melting.addRecipe(<liquid:molten_certus_quartz> * 144, <appliedenergistics2:material>, 600);
mods.tconstruct.Melting.addRecipe(<liquid:molten_certus_quartz> * 576, <appliedenergistics2:quartz_block>, 600);

// Fluix
mods.tconstruct.Melting.addRecipe(<liquid:molten_fluix> * 72, <appliedenergistics2:material:12>, 600);
mods.tconstruct.Melting.addRecipe(<liquid:molten_fluix> * 144, <appliedenergistics2:material:7>, 600);
mods.tconstruct.Melting.addRecipe(<liquid:molten_fluix> * 576, <appliedenergistics2:fluix_block>, 600);

// Glowstone Block
// mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>, <minecraft:glowstone>);

// Honey
mods.tconstruct.Melting.addRecipe(<liquid:honey> * 250, <harvestcraft:honeycombitem>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:honey> * 1000, <futuremc:honey_block>, 400);

//Silver from Ice and Fire
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 288, <iceandfire:silver_ore>);

//Resonant Clathrate
mods.tconstruct.Melting.addRecipe(<liquid:ender> * 250, <thermalfoundation:material:895>);

//Steel from Steel Crystal Shell
mods.tconstruct.Melting.addRecipe(<liquid:steel> * 288, <contenttweaker:steel_crystal_shell>);

//Iron from Solid Crystal Blank
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 432, <contenttweaker:solid_crystal_blank>);

// - Alloy
//Pig Iron
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.addRecipe(<liquid:pigiron> * 144,[<liquid:iron> * 576,<liquid:blood> * 200,<liquid:diamond> * 666]);

//Unobtanium
mods.tconstruct.Alloy.addRecipe(<liquid:molten_unobtanium> * 144,[<liquid:diamond> * 666,<liquid:emerald> * 666,<liquid:ender> * 250]);

//Hard Carbon
mods.tconstruct.Alloy.removeRecipe(<liquid:hard_carbon>);
mods.tconstruct.Alloy.addRecipe(<liquid:hard_carbon> * 144, [<liquid:coal> * 100, <liquid:diamond> * 333]);

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
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 288, <thermalfoundation:material:32>);
//Gold
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:33>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:33>, <tconstruct:cast_custom:3>, <liquid:gold>, 288);
mods.tconstruct.Melting.removeRecipe(<liquid:gold> * 144, <thermalfoundation:material:33>);
mods.tconstruct.Melting.addRecipe(<liquid:gold> * 288, <thermalfoundation:material:33>);
//Copper
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:320>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:320>, <tconstruct:cast_custom:3>, <liquid:copper>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:copper> * 288, <thermalfoundation:material:320>);
//Tin
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:321>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:321>, <tconstruct:cast_custom:3>, <liquid:tin>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:tin> * 288, <thermalfoundation:material:321>);
//Silver
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:322>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:322>, <tconstruct:cast_custom:3>, <liquid:silver>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 288, <thermalfoundation:material:322>);
//Lead
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:323>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:323>, <tconstruct:cast_custom:3>, <liquid:lead>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:lead> * 288, <thermalfoundation:material:323>);
//Aluminum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:324>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:324>, <tconstruct:cast_custom:3>, <liquid:aluminum>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 288, <thermalfoundation:material:324>);
//Nickel
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:325>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:325>, <tconstruct:cast_custom:3>, <liquid:nickel>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:nickel> * 288, <thermalfoundation:material:325>);
//Platinum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:326>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:326>, <tconstruct:cast_custom:3>, <liquid:platinum>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 288, <thermalfoundation:material:326>);
//Iridium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:327>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:327>, <tconstruct:cast_custom:3>, <liquid:iridium>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:iridium> * 288, <thermalfoundation:material:327>);
//Mana Infused
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:328>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:328>, <tconstruct:cast_custom:3>, <liquid:mithril>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:mithril> * 288, <thermalfoundation:material:328>);
//Steel
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:352>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:352>, <tconstruct:cast_custom:3>, <liquid:steel>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:steel> * 288, <thermalfoundation:material:352>);
//Electrum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:353>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:353>, <tconstruct:cast_custom:3>, <liquid:electrum>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:electrum> * 288, <thermalfoundation:material:353>);
//Invar
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:354>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:354>, <tconstruct:cast_custom:3>, <liquid:invar>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:invar> * 288, <thermalfoundation:material:354>);
//Bronze
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:355>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:355>, <tconstruct:cast_custom:3>, <liquid:bronze>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:bronze> * 288, <thermalfoundation:material:355>);
//Constantan
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:356>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:356>, <tconstruct:cast_custom:3>, <liquid:constantan>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:constantan> * 288, <thermalfoundation:material:356>);
//Signalum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:357>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:357>, <tconstruct:cast_custom:3>, <liquid:signalum>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:signalum> * 288, <thermalfoundation:material:357>);
//Lumium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:358>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:358>, <tconstruct:cast_custom:3>, <liquid:lumium>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:lumium> * 288, <thermalfoundation:material:358>);
//Enderium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:359>);
mods.tconstruct.Casting.addTableRecipe(<thermalfoundation:material:359>, <tconstruct:cast_custom:3>, <liquid:enderium>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:enderium> * 288, <thermalfoundation:material:359>);

//Diamond
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:diamond_plate>, <tconstruct:cast_custom:3>, <liquid:diamond>, 1332);

//Unobtanium
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:unobtanium_ingot>, <tconstruct:cast_custom>, <liquid:molten_unobtanium>, 144);

// Certus Quartz
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material>, <tconstruct:cast_custom:2>, <liquid:molten_certus_quartz>, 144);
mods.tconstruct.Casting.addBasinRecipe(<appliedenergistics2:quartz_block>, null, <liquid:molten_certus_quartz>, 576);
//Plate
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:certus_quartz_plate>, <tconstruct:cast_custom:3>, <liquid:molten_certus_quartz>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:molten_certus_quartz> * 288, <contenttweaker:certus_quartz_plate>, 600);

// Fluix
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:7>, <tconstruct:cast_custom:2>, <liquid:molten_fluix>, 144);
mods.tconstruct.Casting.addBasinRecipe(<appliedenergistics2:fluix_block>, null, <liquid:molten_fluix>, 576);
//Plate
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:fluix_plate>, <tconstruct:cast_custom:3>, <liquid:molten_fluix>, 288);
mods.tconstruct.Melting.addRecipe(<liquid:molten_fluix> * 288, <contenttweaker:fluix_plate>, 600);

// Honey Block
mods.tconstruct.Casting.addBasinRecipe(<futuremc:honey_block>, null, <liquid:honey>, 1000);

// Honey Bottle
mods.tconstruct.Casting.addTableRecipe(<futuremc:honey_bottle>, <minecraft:glass_bottle>, <liquid:honey>, 250, true);

// Gem Cast
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <appliedenergistics2:material>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <appliedenergistics2:material>, <liquid:brass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <appliedenergistics2:material:7>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:2>, <appliedenergistics2:material:7>, <liquid:brass>, 144, true);

// Plate Cast
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <contenttweaker:porcelain_plate>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <contenttweaker:porcelain_plate>, <liquid:brass>, 144, true);

// Crystal Cast
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:crystal_cast>, <contenttweaker:porcelain_crystal>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:crystal_cast>, <contenttweaker:porcelain_crystal>, <liquid:brass>, 144, true);

// Solid Crystal Blank
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:solid_crystal_blank>, <contenttweaker:crystal_cast>, <liquid:iron>, 432);


// - Part removal
mods.tconstruct.Casting.removeTableRecipe(<tcomplement:chisel_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:pick_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:axe_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:broad_axe_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:sword_blade>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:large_sword_blade>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:hammer_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:excavator_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:kama_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:scythe_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:pan_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:sign_head>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:tool_rod>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:large_plate>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:sharpening_kit>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:shard>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<conarm:polishing_kit>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<conarm:helmet_core>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<conarm:armor_trim>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<conarm:armor_plate>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<conarm:chest_core>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<conarm:leggings_core>.withTag({Material: "unobtanium_mat"}));
mods.tconstruct.Casting.removeTableRecipe(<conarm:boots_core>.withTag({Material: "unobtanium_mat"}));


print("Initialized 'tinker'");