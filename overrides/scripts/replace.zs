#Name: replacerecipe.zs
#Author: Keaft
#priority 3


import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;
import crafttweaker.data.IData;
import crafttweaker.recipes.ICraftingInventory;
import crafttweaker.item.IItemStack;

print("Initializing 'replacerecipe'...");

var hammer as IIngredient = null;
for ore in <ore:toolHammer>.items {
  val newHammer = ore.anyDamage().reuse();
  if (isNull(hammer)) {
    hammer = newHammer;
  } else {
    hammer = hammer | newHammer;
  }
}

function replaceRecipeShaped(name as string, output as IItemStack, recipe as IIngredient[][]) {
    recipes.removeByRecipeName(name);
    recipes.addShaped(name.replace(":","_"), output, recipe);
}

function replaceRecipeShapeless(name as string, output as IItemStack, recipe as IIngredient[]) {
    recipes.removeByRecipeName(name);
    recipes.addShapeless(name.replace(":","_"), output, recipe);
}

//--------------------------------------------------------------------------------------

// --- Applied Energistics ---
// - Crystal Growth Accellerator
replaceRecipeShaped("appliedenergistics2:network/blocks/crystal_processing_quartz_growth_accelerator", <appliedenergistics2:quartz_growth_accelerator>, [[<contenttweaker:steel_crystal_shell>, <appliedenergistics2:part:16>, <contenttweaker:steel_crystal_shell>], [<appliedenergistics2:quartz_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_glass>], [<ore:ingotSteel>, <appliedenergistics2:part:16>, <ore:ingotSteel>]]);

// - Advanced Inscriber
replaceRecipeShaped("ae2stuff:recipe3", <ae2stuff:inscriber>, [[<ore:ingotSteel>, <minecraft:hopper:*>, <ore:ingotSteel>], [<appliedenergistics2:material:24>, <appliedenergistics2:inscriber:*>, <appliedenergistics2:material:24>], [<ore:ingotSteel>, <minecraft:hopper:*>, <ore:ingotSteel>]]);

// - Energy Acceptor
replaceRecipeShaped("appliedenergistics2:network/blocks/energy_energy_acceptor", <appliedenergistics2:energy_acceptor>, [[<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>], [<minecraft:redstone>, <appliedenergistics2:fluix_block>, <minecraft:redstone>], [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>]]);

// - Energy Cell
replaceRecipeShaped("appliedenergistics2:network/blocks/energy_energy_cell", <appliedenergistics2:energy_cell>.withTag({}), [[<contenttweaker:certus_quartz_plate>, <ore:dustFluix>, <contenttweaker:certus_quartz_plate>], [<ore:dustFluix>, <appliedenergistics2:quartz_glass>, <ore:dustFluix>], [<contenttweaker:certus_quartz_plate>, <ore:dustFluix>, <contenttweaker:certus_quartz_plate>]]);

// - Charger
replaceRecipeShaped("appliedenergistics2:network/blocks/crystal_processing_charger", <appliedenergistics2:charger>, [[<ore:ingotIron>, <contenttweaker:fluix_plate>, <ore:ingotIron>], [<contenttweaker:certus_quartz_plate>, null, null], [<ore:ingotIron>, <contenttweaker:fluix_plate>, <ore:ingotIron>]]);

// - Illuminated Panel
replaceRecipeShaped("appliedenergistics2:network/parts/panels_semi_dark_monitor", <appliedenergistics2:part:180>, [[null, <ore:ingotGold>, <appliedenergistics2:quartz_glass>], [<contenttweaker:certus_quartz_plate>, <ore:dustRedstone>, <appliedenergistics2:quartz_glass>], [null, <ore:ingotGold>, <appliedenergistics2:quartz_glass>]]);

// - ME Fluid Interface
replaceRecipeShaped("appliedenergistics2:network/blocks/fluid_interfaces_interface", <appliedenergistics2:fluid_interface>, [[<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>], [<minecraft:redstone>, <contenttweaker:certus_quartz_plate>, <minecraft:redstone>], [<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>]]);

// - ME Glass Cable
replaceRecipeShapeless("appliedenergistics2:network/cables/glass_fluix", <appliedenergistics2:part:16> * 4, [<appliedenergistics2:part:140>, <ore:crystalFluix> | <appliedenergistics2:material:12>]);

// - ME Interface
replaceRecipeShaped("appliedenergistics2:network/blocks/interfaces_interface", <appliedenergistics2:interface>, [[<ore:ingotIron>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:ingotIron>], [<minecraft:redstone>, <contenttweaker:certus_quartz_plate>, <minecraft:redstone>], [<ore:ingotIron>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:ingotIron>]]);

// - ME Terminal
replaceRecipeShapeless("appliedenergistics2:network/parts/terminals", <appliedenergistics2:part:380>, [<minecraft:diamond>, <ore:itemIlluminatedPanel>, <storagedrawers:controller>, <minecraft:diamond>]);

// - ME Quantum Ring
replaceRecipeShaped("appliedenergistics2:network/blocks/quantum_ring", <appliedenergistics2:quantum_ring>, [[<contenttweaker:steel_crystal_shell>,<appliedenergistics2:material:22>,<contenttweaker:steel_crystal_shell>], [<appliedenergistics2:material:24>,<appliedenergistics2:energy_cell>,<enderio:item_material:16>], [<contenttweaker:steel_crystal_shell>,<appliedenergistics2:material:22>,<contenttweaker:steel_crystal_shell>]]);

// - Pattern
replaceRecipeShaped("appliedenergistics2:network/crafting/patterns_blank", <appliedenergistics2:material:52>, [[null,<appliedenergistics2:quartz_glass>,null], [<minecraft:glowstone_dust>,<appliedenergistics2:material:23>,<minecraft:glowstone_dust>], [<contenttweaker:certus_quartz_plate>,<contenttweaker:steel_crystal_shell>,<contenttweaker:certus_quartz_plate>]]);

// - Molecular Assembler
replaceRecipeShaped("appliedenergistics2:network/crafting/molecular_assembler", <appliedenergistics2:molecular_assembler>, [[<contenttweaker:certus_quartz_plate>, <appliedenergistics2:quartz_glass>, <contenttweaker:certus_quartz_plate>], [<appliedenergistics2:material:44>, <ore:workbench>, <appliedenergistics2:material:43>], [<contenttweaker:certus_quartz_plate>, <ore:blockSteel>, <contenttweaker:certus_quartz_plate>]]);


// - Crafting Storage

// recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_storage_4k");
// recipes.addShaped("appliedenergistics2_network/crafting/cpu_crafting_storage_4k", <appliedenergistics2:crafting_storage_4k>, [[<minecraft:redstone>,<appliedenergistics2:material:23>,<minecraft:redstone>],[<appliedenergistics2:material:35>,<appliedenergistics2:crafting_storage_1k>,<appliedenergistics2:material:35>],[<minecraft:redstone>,<appliedenergistics2:material:35>,<minecraft:redstone>]], null,
// function(out, cInfo, player){
// print(cInfo.inventory.getStack(4).displayName);
// cInfo.inventory.setStack(4,null);
// });

// recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_storage_16k");
// recipes.addShaped("appliedenergistics2_network/crafting/cpu_crafting_storage_16k", <appliedenergistics2:crafting_storage_16k>, [[<minecraft:glowstone_dust>,<appliedenergistics2:material:23>,<minecraft:glowstone_dust>],[<appliedenergistics2:material:36>,<appliedenergistics2:crafting_storage_4k>,<appliedenergistics2:material:36>],[<minecraft:glowstone_dust>,<appliedenergistics2:material:36>,<minecraft:glowstone_dust>]], null,
// function(out, cInfo, player){
// print(cInfo.inventory.getStack(4).displayName);
// cInfo.inventory.setStack(4,null);
// });

// recipes.removeByRecipeName("appliedenergistics2:network/crafting/cpu_crafting_storage_64k");
// recipes.addShaped("appliedenergistics2_network/crafting/cpu_crafting_storage_64k", <appliedenergistics2:crafting_storage_64k>, [[<minecraft:glowstone_dust>,<appliedenergistics2:material:23>,<minecraft:glowstone_dust>],[<appliedenergistics2:material:37>,<appliedenergistics2:crafting_storage_16k>,<appliedenergistics2:material:37>],[<minecraft:glowstone_dust>,<appliedenergistics2:material:37>,<minecraft:glowstone_dust>]], null,
// function(out, cInfo, player){
// print(cInfo.inventory.getStack(4).displayName);
// cInfo.inventory.setStack(4,null);
// });

// - Item Storage Cell
// These recipes have a special function designed to auto craft from within the input grid itself. I do this because AE2 doesn't seem to notice the CraftTweaker recipe functions. I think it's in part because AE2 drives and crafting cpus have their own function of being crafted back down to it's constituent parts. Thus this script is born. It will take the drives and their existing data and upgrade them to the next tier up. I use ContentTweaker to make "fake" or "prop" items so that you can still see the recipe in JEI. I've also added JEI description pages to those prop items giving instructions on how to use this unique crafting style.

recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k");
recipes.addShaped("appliedenergistics2_network_storage_cell_4k_fake", <appliedenergistics2:storage_cell_4k>, [[<minecraft:redstone>,<appliedenergistics2:material:23>,<minecraft:redstone>],[<appliedenergistics2:material:35>,<contenttweaker:onek_item>,<appliedenergistics2:material:35>],[<minecraft:redstone>,<appliedenergistics2:material:35>,<minecraft:redstone>]]);
recipes.addShaped("appliedenergistics2_network_cells_storage_cell_4k", null, [[<minecraft:redstone>,<appliedenergistics2:material:23>,<minecraft:redstone>],[<appliedenergistics2:material:35>,<appliedenergistics2:storage_cell_1k>.marked('onekitemcell'),<appliedenergistics2:material:35>],[<minecraft:redstone>,<appliedenergistics2:material:35>,<minecraft:redstone>]], function(out, ins, cInfo) {
// This function occurs when the items are finished making what would be the script. Notice the output above is null.
    // Grab the nbt data of the input item marked above.
    var inTag = ins.onekitemcell.tag;
    // Grab the crafting inventory and write it to "inv"
    var inv = cInfo.inventory;
    // Write the output item with the nbt "inTag" from above.
    cInfo.inventory.setStack(4,<appliedenergistics2:storage_cell_4k>.withTag(inTag));
    // Loop through all the items in the crafting inventory and decrement by 1 until empty.
    for i in 0 to 9 {
        var totali = 0 as int;
        if (i != 4) {
            var itemcheck as IItemStack = inv.getStack(i);
            // print(itemcheck.name);
            if !isNull(itemcheck) {
                totali = itemcheck.amount;
            }
            // print(totali);
            if (totali <= 1) {
                inv.setStack(i,null);
            } else {
                totali -= 1;
                // print(totali);
                var newtotalitem as IItemStack = itemcheck * totali;
                inv.setStack(i,newtotalitem);
            }
        }
    }
    return null;
}, null);

recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k");
recipes.addShaped("appliedenergistics2_network_cells_storage_cell_16k_fake", <appliedenergistics2:storage_cell_16k>, [[<minecraft:glowstone_dust>,<appliedenergistics2:material:23>,<minecraft:glowstone_dust>],[<appliedenergistics2:material:36>,<contenttweaker:fourk_item>,<appliedenergistics2:material:36>],[<minecraft:glowstone_dust>,<appliedenergistics2:material:36>,<minecraft:glowstone_dust>]]);
recipes.addShaped("appliedenergistics2_network_cells_storage_cell_16k", null, [[<minecraft:glowstone_dust>,<appliedenergistics2:material:23>,<minecraft:glowstone_dust>],[<appliedenergistics2:material:36>,<appliedenergistics2:storage_cell_4k>.marked('fourkitemcell'),<appliedenergistics2:material:36>],[<minecraft:glowstone_dust>,<appliedenergistics2:material:36>,<minecraft:glowstone_dust>]], function(out, ins, cInfo) {
    var inTag = ins.fourkitemcell.tag;
    var inv = cInfo.inventory;
    cInfo.inventory.setStack(4,<appliedenergistics2:storage_cell_16k>.withTag(inTag));
    for i in 0 to 9 {
        var totali = 0 as int;
        if (i != 4) {
            var itemcheck as IItemStack = inv.getStack(i);
            // print(itemcheck.name);
            if !isNull(itemcheck) {
                totali = itemcheck.amount;
            }
            // print(totali);
            if (totali <= 1) {
                inv.setStack(i,null);
            } else {
                totali -= 1;
                // print(totali);
                var newtotalitem as IItemStack = itemcheck * totali;
                inv.setStack(i,newtotalitem);
            }
        }
    }
    return null;
}, null);

recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k");
recipes.addShaped("appliedenergistics2_network_cells_storage_cell_64k_fake", <appliedenergistics2:storage_cell_64k>, [[<minecraft:glowstone_dust>,<appliedenergistics2:material:23>,<minecraft:glowstone_dust>],[<appliedenergistics2:material:37>,<contenttweaker:sixteenk_item>,<appliedenergistics2:material:37>],[<minecraft:glowstone_dust>,<appliedenergistics2:material:37>,<minecraft:glowstone_dust>]]);
recipes.addShaped("appliedenergistics2_network_cells_storage_cell_64k", null, [[<minecraft:glowstone_dust>,<appliedenergistics2:material:23>,<minecraft:glowstone_dust>],[<appliedenergistics2:material:37>,<appliedenergistics2:storage_cell_16k>.marked('sixteenkitemcell'),<appliedenergistics2:material:37>],[<minecraft:glowstone_dust>,<appliedenergistics2:material:37>,<minecraft:glowstone_dust>]], function(out, ins, cInfo) {
    var inTag = ins.sixteenkitemcell.tag;
    var inv = cInfo.inventory;
    cInfo.inventory.setStack(4,<appliedenergistics2:storage_cell_64k>.withTag(inTag));
    for i in 0 to 9 {
        var totali = 0 as int;
        if (i != 4) {
            var itemcheck as IItemStack = inv.getStack(i);
            // print(itemcheck.name);
            if !isNull(itemcheck) {
                totali = itemcheck.amount;
            }
            // print(totali);
            if (totali <= 1) {
                inv.setStack(i,null);
            } else {
                totali -= 1;
                // print(totali);
                var newtotalitem as IItemStack = itemcheck * totali;
                inv.setStack(i,newtotalitem);
            }
        }
    }
    return null;
}, null);

// - Fluid Storage Cell

recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k");
recipes.addShaped("appliedenergistics2_network_cells_fluid_storage_cell_4k_fake", <appliedenergistics2:fluid_storage_cell_4k>, [[<minecraft:dye:4>,<appliedenergistics2:material:23>,<minecraft:dye:4>],[<appliedenergistics2:material:54>,<contenttweaker:onek_fluid>,<appliedenergistics2:material:54>],[<minecraft:dye:4>,<appliedenergistics2:material:54>,<minecraft:dye:4>]]);
recipes.addShaped("appliedenergistics2_network_cells_fluid_storage_cell_4k", null, [[<minecraft:dye:4>,<appliedenergistics2:material:23>,<minecraft:dye:4>],[<appliedenergistics2:material:54>,<appliedenergistics2:fluid_storage_cell_1k>.marked("onekfluidcell"),<appliedenergistics2:material:54>],[<minecraft:dye:4>,<appliedenergistics2:material:54>,<minecraft:dye:4>]], function(out, ins, cInfo) {
    var inTag = ins.onekfluidcell.tag;
    var inv = cInfo.inventory;
    cInfo.inventory.setStack(4,<appliedenergistics2:fluid_storage_cell_4k>.withTag(inTag));
    for i in 0 to 9 {
        var totali = 0 as int;
        if (i != 4) {
            var itemcheck as IItemStack = inv.getStack(i);
            // print(itemcheck.name);
            if !isNull(itemcheck) {
                totali = itemcheck.amount;
            }
            // print(totali);
            if (totali <= 1) {
                inv.setStack(i,null);
            } else {
                totali -= 1;
                // print(totali);
                var newtotalitem as IItemStack = itemcheck * totali;
                inv.setStack(i,newtotalitem);
            }
        }
    }
    return null;
}, null);

recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k_storage");
recipes.addShaped("appliedenergistics2_network_cells_fluid_storage_cell_16k_storage_fake", <appliedenergistics2:fluid_storage_cell_16k>, [[<minecraft:dye:4>,<appliedenergistics2:material:23>,<minecraft:dye:4>],[<appliedenergistics2:material:55>,<contenttweaker:fourk_fluid>,<appliedenergistics2:material:55>],[<minecraft:dye:4>,<appliedenergistics2:material:55>,<minecraft:dye:4>]]);
recipes.addShaped("appliedenergistics2_network_cells_fluid_storage_cell_16k_storage", null, [[<minecraft:dye:4>,<appliedenergistics2:material:23>,<minecraft:dye:4>],[<appliedenergistics2:material:55>,<appliedenergistics2:fluid_storage_cell_4k>.marked("fourkfluidcell"),<appliedenergistics2:material:55>],[<minecraft:dye:4>,<appliedenergistics2:material:55>,<minecraft:dye:4>]], function(out, ins, cInfo) {
    var inTag = ins.fourkfluidcell.tag;
    var inv = cInfo.inventory;
    cInfo.inventory.setStack(4,<appliedenergistics2:fluid_storage_cell_16k>.withTag(inTag));
    for i in 0 to 9 {
        var totali = 0 as int;
        if (i != 4) {
            var itemcheck as IItemStack = inv.getStack(i);
            // print(itemcheck.name);
            if !isNull(itemcheck) {
                totali = itemcheck.amount;
            }
            // print(totali);
            if (totali <= 1) {
                inv.setStack(i,null);
            } else {
                totali -= 1;
                // print(totali);
                var newtotalitem as IItemStack = itemcheck * totali;
                inv.setStack(i,newtotalitem);
            }
        }
    }
    return null;
}, null);

recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k");
recipes.addShaped("appliedenergistics2_network_cells_fluid_storage_cell_64k_fake", <appliedenergistics2:fluid_storage_cell_64k>, [[<minecraft:dye:4>,<appliedenergistics2:material:23>,<minecraft:dye:4>],[<appliedenergistics2:material:56>,<contenttweaker:sixteenk_fluid>,<appliedenergistics2:material:56>],[<minecraft:dye:4>,<appliedenergistics2:material:56>,<minecraft:dye:4>]]);
recipes.addShaped("appliedenergistics2_network_cells_fluid_storage_cell_64k", null, [[<minecraft:dye:4>,<appliedenergistics2:material:23>,<minecraft:dye:4>],[<appliedenergistics2:material:56>,<appliedenergistics2:fluid_storage_cell_16k>.marked("sixteenkfluidcell"),<appliedenergistics2:material:56>],[<minecraft:dye:4>,<appliedenergistics2:material:56>,<minecraft:dye:4>]], function(out, ins, cInfo) {
    var inTag = ins.sixteenkfluidcell.tag;
    var inv = cInfo.inventory;
    cInfo.inventory.setStack(4,<appliedenergistics2:fluid_storage_cell_64k>.withTag(inTag));
    for i in 0 to 9 {
        var totali = 0 as int;
        if (i != 4) {
            var itemcheck as IItemStack = inv.getStack(i);
            // print(itemcheck.name);
            if !isNull(itemcheck) {
                totali = itemcheck.amount;
            }
            // print(totali);
            if (totali <= 1) {
                inv.setStack(i,null);
            } else {
                totali -= 1;
                // print(totali);
                var newtotalitem as IItemStack = itemcheck * totali;
                inv.setStack(i,newtotalitem);
            }
        }
    }
    return null;
}, null);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- BountifulBaubles ---
// - Black Dragon Scale
replaceRecipeShaped("bountifulbaubles:black_dragon_scale", <bountifulbaubles:trinketblackdragonscale>, [[<ore:boneWithered>,<minecraft:skull:1>,<ore:boneWithered>], [<ore:boneWithered>,<bountifulbaubles:enderdragonscale>,<ore:boneWithered>], [<biomesoplenty:jar_filled:1>,<bountifulbaubles:brokenblackdragonscale>,<biomesoplenty:jar_filled:1>]]);

// - Iron Ring
replaceRecipeShaped("bountifulbaubles:ringiron", <bountifulbaubles:ringiron>, [[<minecraft:iron_nugget>,<minecraft:iron_ingot>,<minecraft:iron_nugget>], [<minecraft:iron_ingot>,null,<minecraft:iron_ingot>], [<minecraft:iron_nugget>,<minecraft:iron_ingot>,<minecraft:iron_nugget>]]);
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Corail's Tombstone ---
// - Enchanted Grave Key - to be slightly more difficult and to stretch my creative legs.
recipes.removeByRecipeName("tombstone:enchanted_grave_key");
recipes.addShapeless("tombstone_enchanted_grave_key", <tombstone:grave_key>.withTag({enchant : 1 as byte}), [<minecraft:ender_eye>, <tombstone:grave_key>.marked("gravekey")], function(out, ins, cinfo) {
var inTag = ins.gravekey.tag;
// print("Current Tag: " + inTag);
val addTag = {
    enchant : 1 as byte
} as IData;
// print("Finalize Change to: " + (inTag + addTag).asString());
return out.withTag(inTag + addTag);
}, null);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Enchanting Plus ---
// - Advanced Enchanting Table
replaceRecipeShaped("eplus:upgrade", <eplus:table_upgrade>, [[<ore:ingotGold>, <atum:heart_of_ra>, <ore:ingotGold>], [<contenttweaker:enchanted_tome_of_knowledge>, <minecraft:enchanting_table:*>, <contenttweaker:enchanted_tome_of_knowledge>], [<ore:ingotGold>, <minecraft:end_crystal>, <ore:ingotGold>]]);
replaceRecipeShaped("eplus:table", <eplus:advanced_table>, [[<ore:ingotGold>, <atum:heart_of_ra>, <ore:ingotGold>], [<contenttweaker:enchanted_tome_of_knowledge>, <minecraft:enchanting_table:*>, <contenttweaker:enchanted_tome_of_knowledge>], [<ore:ingotGold>, <minecraft:end_crystal>, <ore:ingotGold>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Ender IO ---
// - Alloy Smelter
recipes.removeByRecipeName("enderio:alloy_smelter_upgrade");
replaceRecipeShaped("enderio:alloy_smelter", <enderio:block_alloy_smelter>, [[<ore:ingotSilver>,<minecraft:furnace>,<ore:ingotSilver>], [<enderio:block_simple_alloy_smelter>,<enderio:item_material:1>,<enderio:block_simple_furnace>], [<enderio:item_material:11>,<minecraft:cauldron>,<enderio:item_material:11>]]);

// - Sag Mill
recipes.removeByRecipeName("enderio:s_a_g_mill_upgrade");
replaceRecipeShaped("enderio:s_a_g_mill", <enderio:block_sag_mill>, [[<minecraft:flint>,<minecraft:flint>,<minecraft:flint>], [<enderio:item_alloy_ingot:6>,<enderio:item_material:1>,<enderio:item_alloy_ingot:6>], [<enderio:item_material:73>,<enderio:block_simple_sag_mill>,<enderio:item_material:73>]]);

// - Basic Capacitor
replaceRecipeShaped("enderio:capacitor_bank_simple", <enderio:block_cap_bank:1>, [[<ore:ingotConstructionAlloy> | <ore:ingotSteel>, <enderio:item_basic_capacitor>, <ore:ingotConstructionAlloy> | <ore:ingotSteel>], [<enderio:item_basic_capacitor>, <minecraft:redstone_block>, <enderio:item_basic_capacitor>], [<ore:ingotConstructionAlloy> | <ore:ingotSteel>, <enderio:item_basic_capacitor>, <ore:ingotConstructionAlloy> | <ore:ingotSteel>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extra Utilities 2 ---
// - Ring of the flying squid
replaceRecipeShaped("extrautils2:squid_ring", <extrautils2:chickenring:1>, [[<minecraft:elytra>, null, <minecraft:elytra>], [<ore:gemDiamond>, <extrautils2:chickenring>, <ore:gemDiamond>], [<minecraft:elytra>, <aquaculture:fish:15>, <minecraft:elytra>]]);

// - Snow Globe
replaceRecipeShapeless("extrautils2:snow_globe", <extrautils2:snowglobe>, [<ore:blockGlass>, <ore:treeSapling>, <minecraft:snowball:*>, <ore:doorWood>, <ore:logWood>, <ore:grass>, <minecraft:ender_pearl:*>, <ore:netherStar>, <oresabovediamonds:black_opal_block>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extreme Reactors ---
// - Reactor Casing
replaceRecipeShaped("bigreactors:reactorcasing", <bigreactors:reactorcasing> * 4, [[<ore:ingotSteel>, <nuclearcraft:ingot:8>, <ore:ingotSteel>], [<nuclearcraft:ingot:8>, <bigreactors:reactorcasingcores>, <nuclearcraft:ingot:8>], [<ore:ingotSteel>, <nuclearcraft:ingot:8>, <ore:ingotSteel>]]);

// - Reactor Fuel Rod
replaceRecipeShaped("bigreactors:reactorfuelrod_vanillaglass", <bigreactors:reactorfuelrod>, [[<ore:ingotSteel>, <nuclearcraft:ingot:8>, <ore:ingotSteel>], [<ore:blockGlass>, <nuclearcraft:ingot:4>, <ore:blockGlass>], [<ore:ingotSteel>, <nuclearcraft:ingot:8>, <ore:ingotSteel>]]);

// - Reactor Casing Core
replaceRecipeShaped("bigreactors:reactorcasingcores", <bigreactors:reactorcasingcores>, [[<ore:ingotSteel>, <nuclearcraft:ingot:8>, <ore:ingotSteel>], [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>], [<ore:ingotSteel>, <nuclearcraft:ingot:8>, <ore:ingotSteel>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Improvable Skills 3 ---
replaceRecipeShapeless("improvableskills:skills_book", <improvableskills:skills_book>, [<minecraft:book>,<minecraft:wooden_sword>.anyDamage(),<minecraft:wooden_shovel>.anyDamage(),<minecraft:wooden_pickaxe>.anyDamage(),<minecraft:wooden_axe>.anyDamage()]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Inspirations ---
replaceRecipeShapeless("inspirations:tools/redstone_charger", <inspirations:redstone_charger>, [<ore:ingotGold>, <minecraft:flint_and_steel>, <ore:dustRedstone>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Macaw's Various Mods ---
replaceRecipeShaped("mcwtrpdoors:print_cottage", <mcwtrpdoors:print_cottage> * 4, [[null, <minecraft:paper>, null], [<minecraft:paper>, <futuremc:spruce_trapdoor>, <minecraft:paper>], [null, <minecraft:paper>, null]]);
replaceRecipeShaped("mcwtrpdoors:print_paper", <mcwtrpdoors:print_paper> * 4, [[null, <minecraft:paper>, null], [<minecraft:paper>, <futuremc:birch_trapdoor>, <minecraft:paper>], [null, <minecraft:paper>, null]]);
replaceRecipeShaped("mcwtrpdoors:print_beach", <mcwtrpdoors:print_beach> * 4, [[null, <minecraft:paper>, null], [<minecraft:paper>, <futuremc:jungle_trapdoor>, <minecraft:paper>], [null, <minecraft:paper>, null]]);
replaceRecipeShaped("mcwtrpdoors:print_tropical", <mcwtrpdoors:print_tropical> * 4, [[null, <minecraft:paper>, null], [<minecraft:paper>, <futuremc:acacia_trapdoor>, <minecraft:paper>], [null, <minecraft:paper>, null]]);
replaceRecipeShaped("mcwtrpdoors:print_four_panel", <mcwtrpdoors:print_four_panel> * 4, [[null, <minecraft:paper>, null], [<minecraft:paper>, <futuremc:dark_oak_trapdoor>, <minecraft:paper>], [null, <minecraft:paper>, null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Natura ---
//Natura Bookshelves
replaceRecipeShaped("natura:decorative/nether/bookshelf/ghostwood_bookshelf", <natura:nether_bookshelves>, [[<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>], [<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>], [<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>]]);

replaceRecipeShaped("natura:decorative/nether/bookshelf/bloodwood_bookshelf", <natura:nether_bookshelves:1>, [[<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>], [<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>], [<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>]]);

replaceRecipeShaped("natura:decorative/nether/bookshelf/darkwood_bookshelf", <natura:nether_bookshelves:2>, [[<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>], [<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>], [<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>]]);

replaceRecipeShaped("natura:decorative/nether/bookshelf/fusewood_bookshelf", <natura:nether_bookshelves:3>, [[<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>], [<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>], [<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>]]);

//Cactus Juice
replaceRecipeShapeless("natura:common/cactus_juice", <natura:edibles:11>, [<minecraft:cactus>,<harvestcraft:juiceritem>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Nature's Compass ---
//Nature's Compass
replaceRecipeShaped("naturescompass:natures_compass", <naturescompass:naturescompass>, [[<ore:treeSapling>,<ore:gemEmerald>,<ore:treeSapling>], [<ore:logWood>,<minecraft:compass>,<ore:logWood>], [<ore:treeSapling>,<ore:gemEmerald>,<ore:treeSapling>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- NuclearCraft ---

//Dimensional Blend
replaceRecipeShapeless("nuclearcraft:item.nuclearcraft.compound.dimensional_blend", <nuclearcraft:compound:8>, [<ore:dustObsidian>, <ore:dustEndstone>, <ore:dustObsidian>, <ore:dustEndstone>, <enderio:item_material:20>, <ore:dustEndstone>, <ore:dustObsidian>, <ore:dustEndstone>, <ore:dustObsidian>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Packaged Auto ---

replaceRecipeShaped("packagedauto:packager", <packagedauto:packager>, [[<ore:ingotSteel>, <packagedauto:me_package_component>, <ore:ingotSteel>], [<ore:dustRedstone>, <minecraft:crafting_table>, <ore:dustRedstone>], [<ore:ingotSteel>, <minecraft:piston>, <ore:ingotSteel>]]);

replaceRecipeShaped("packagedauto:encoder", <packagedauto:encoder>, [[<ore:ingotSteel>, <packagedauto:package_component>, <ore:ingotSteel>], [<minecraft:crafting_table>, <ore:glowstone>, <minecraft:crafting_table>], [<ore:ingotSteel>, <minecraft:comparator>, <ore:ingotSteel>]]);

replaceRecipeShaped("packagedauto:unpackager", <packagedauto:unpackager>, [[<ore:ingotSteel>, <packagedauto:me_package_component>, <ore:ingotSteel>], [<ore:dustRedstone>, <ore:chestWood>, <ore:dustRedstone>], [<ore:ingotSteel>, <minecraft:hopper>, <ore:ingotSteel>]]);

replaceRecipeShaped("packagedauto:packager_extension", <packagedauto:packager_extension>, [[<ore:ingotSteel>, <packagedauto:me_package_component>, <ore:ingotSteel>], [<ore:dustGlowstone>, <minecraft:crafting_table>, <ore:dustGlowstone>], [<ore:ingotSteel>, <minecraft:piston>, <ore:ingotSteel>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Quark ---
// - Trap door
replaceRecipeShaped("quark:spruce_trapdoor", <quark:spruce_trapdoor> * 6, [[<minecraft:planks:1>, <minecraft:iron_nugget>, <minecraft:planks:1>], [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Scaling Health ---
//Heart Dust
replaceRecipeShapeless("scalinghealth:heart_dust", <scalinghealth:heartdust>, [hammer.transformDamage(), <scalinghealth:crystalshard>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Serene Seasons ---
//Greenhouse Glass
replaceRecipeShaped("sereneseasons:greenhouse_glass", <sereneseasons:greenhouse_glass> * 4, [[<ore:dyeCyan>, <ore:blockGlass>, <ore:dyeCyan>], [<ore:blockGlass>, <ore:plankWood>, <ore:blockGlass>], [<ore:dyeCyan>, <ore:blockGlass>, <ore:dyeCyan>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------
// TURNS OUT: Editing the recipe for simply backpacks can mess with the upgrade function retaining items in the backpack. So this was an attempt at fixing the problem that I caused in the unification.zs script. Silly Gold and Diamond Blocks... grumble grumble...
// --- Simply Backpacks ---
//Uncommon
/* recipes.removeByRecipeName("simplybackpacks:uncommon");
recipes.addShaped("simplybackpacks_uncommon", <simplybackpacks:uncommonbackpack>, [[<minecraft:gold_ingot>, null ,<minecraft:gold_ingot>], [<ore:dyeYellow>, <simplybackpacks:commonbackpack>.marked('commonpack'), <ore:dyeYellow>], [<ore:chest>, <minecraft:gold_block>, <ore:chest>]], function(out, ins, cinfo) {
var inTag = ins.commonpack.tag;
print("Backpack Current Size: " + inTag.inv.Size.asString());
val outTag = {
inv:
    {
        Size : 33,
        Items : inTag.inv.Items
    },
filter:
    {
        Size : 16,
        Items : inTag.filter.Items
    }
} as IData;
print("Finalize Change to: " + outTag.asString());
return out.withTag(outTag);
}, null);

//Rare
recipes.removeByRecipeName("simplybackpacks:rare");
recipes.addShaped("simplybackpacks_rare", <simplybackpacks:rarebackpack>, [[<minecraft:diamond>, null ,<minecraft:diamond>], [<ore:dyeBlue>, <simplybackpacks:uncommonbackpack>.marked('uncommonpack'), <ore:dyeBlue>], [<ore:chest>, <minecraft:diamond_block>, <ore:chest>]], function(out, ins, cinfo) {var inTag = ins.uncommonpack.tag; return out.withTag(inTag);}, null);

//Epic
recipes.removeByRecipeName("simplybackpacks:epic");
recipes.addShaped("simplybackpacks_epic", <simplybackpacks:epicbackpack>, [[<ore:dyeMagenta>, null ,<ore:dyeMagenta>], [<minecraft:iron_bars>, <simplybackpacks:rarebackpack>.marked('rarepack'), <minecraft:iron_bars>], [<ore:chest>, <minecraft:nether_star>, <ore:chest>]], function(out, ins, cinfo) {var inTag = ins.rarepack.tag; return out.withTag(inTag);}, null); */
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Storage Drawers ---
//Controller Slave
replaceRecipeShaped("storagedrawers:controller_slave", <storagedrawers:controllerslave>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:redstone_torch>, <ore:drawerBasic>, <minecraft:redstone_torch>], [<minecraft:stone>, <ore:ingotGold>, <minecraft:stone>]]);

//Drawer Controller
replaceRecipeShaped("storagedrawers:controller", <storagedrawers:controller>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:redstone_torch>, <ore:drawerBasic>, <minecraft:redstone_torch>], [<minecraft:stone>, <ore:gemDiamond>, <minecraft:stone>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Telepad -- CURRENTLY UNUSED MAY REVISIT LATER
//Telepad
//recipes.removeByRecipeName("telepads:telepad");
//recipes.addShaped("telepads_telepad", <telepads:telepad>, [[<extrautils2:ineffableglass:3>,<extrautils2:ineffableglass:3>,<extrautils2:ineffableglass:3>], [<minecraft:ender_pearl>,<minecraft:ender_pearl>,<minecraft:ender_pearl>], [<minecraft:iron_block>,<naturescompass:naturescompass>,<minecraft:iron_block>]]);

//Transmitter
//recipes.removeByRecipeName("telepads:transmitter");
//recipes.addShaped("telepads_transmitter", <telepads:transmitter>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>], [<minecraft:redstone>,<enderio:item_material:16>,<minecraft:redstone>], [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Tesseract
replaceRecipeShaped("tesseract:tesseract", <tesseract:tesseract>, [[<ore:obsidian> | <minecraft:obsidian>, <enderstorage:ender_storage:1>, <ore:obsidian> | <minecraft:obsidian>], [<ore:enderpearl>, <enderio:block_cap_bank:2>, <ore:enderpearl>], [<ore:obsidian> | <minecraft:obsidian>, <enderstorage:ender_storage>, <ore:obsidian> | <minecraft:obsidian>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Tinkers Construct
//Green Slime Sling
replaceRecipeShaped("tconstruct:gadgets/slimesling/green", <tconstruct:slimesling>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_green>, null], [null, <ore:slimeballGreen>, null]]);

//Blue Slime Sling
replaceRecipeShaped("tconstruct:gadgets/slimesling/blue", <tconstruct:slimesling:1>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_blue>, null], [null, <ore:slimeballBlue>, null]]);

//Purple Slime Sling
replaceRecipeShaped("tconstruct:gadgets/slimesling/purple", <tconstruct:slimesling:2>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_purple>, null], [null, <ore:slimeballPurple>, null]]);

//Orange Slime Sling
replaceRecipeShaped("tconstruct:gadgets/slimesling/magma", <tconstruct:slimesling:4>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_orange>, null], [null, <ore:slimeballMagma>, null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Tinker I/O --
//Slot Upgrade I
replaceRecipeShaped("tinker:io_slotupg1", <tinker_io:upg:1>, [[null,<minecraft:chest>,null], [<minecraft:chest>,<tinker_io:upg>,<minecraft:chest>], [null,<minecraft:chest>,null]]);

//Slot Upgrade II
replaceRecipeShaped("tinker:io_slotupg2", <tinker_io:upg:2>, [[null,<minecraft:iron_ingot>,null], [<minecraft:iron_ingot>,<tinker_io:upg:1>,<minecraft:iron_ingot>], [null,<minecraft:iron_ingot>,null]]);

//Slot Upgrade III
replaceRecipeShaped("tinker:io_slotupg3", <tinker_io:upg:3>, [[null,<ore:ingotGold>,null], [<ore:ingotGold>,<tinker_io:upg:2>,<ore:ingotGold>], [null,<ore:ingotGold>,null]]);

//Slot Upgrade IV
replaceRecipeShaped("tinker:io_slotupg4", <tinker_io:upg:4>, [[null,<ore:gemDiamond>,null], [<ore:gemDiamond>,<tinker_io:upg:3>,<ore:gemDiamond>], [null,<ore:gemDiamond>,null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Waystones --
//Warp Stone
replaceRecipeShaped("waystones:warp_stone", <waystones:warp_stone>, [[<ore:dyePurple>, <ore:enderpearl>, <ore:dyePurple>], [<ore:enderpearl>, <tconstruct:materials:9>, <ore:enderpearl>], [<ore:dyePurple>, <ore:enderpearl>, <ore:dyePurple>]]);

//--------------------------------------------------------------------------------------

print("Initialized 'replacerecipe'");