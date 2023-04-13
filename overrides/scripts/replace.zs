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

//--------------------------------------------------------------------------------------

// --- Aether Legacy ---
// - Iron Ring
//recipes.removeByRecipeName("aether_legacy:iron_ring");
//recipes.addShaped("aether_legacy_iron_ring", <aether_legacy:iron_ring>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>], [<minecraft:iron_ingot>,null,<minecraft:iron_ingot>], [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Applied Energistics ---
// - Energy Acceptor
recipes.removeByRecipeName("appliedenergistics2:network/blocks/energy_energy_acceptor");
recipes.addShaped("appliedenergistics2_network/blocks/energy_energy_acceptor", <appliedenergistics2:energy_acceptor>, [[<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>], [<minecraft:redstone>, <ore:crystalFluix> | <appliedenergistics2:material:12>, <minecraft:redstone>], [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>]]);

// - Illuminated Panel
recipes.removeByRecipeName("appliedenergistics2:network/parts/panels_semi_dark_monitor");
recipes.addShaped("appliedenergistics2_network/parts/panels_semi_dark_monitor", <appliedenergistics2:part:180> * 3, [[null, <ore:ingotGold>, <appliedenergistics2:quartz_glass>], [<ore:ingotIron>, <ore:dustRedstone>, <appliedenergistics2:quartz_glass>], [null, <ore:ingotGold>, <appliedenergistics2:quartz_glass>]]);

// - ME Fluid Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
recipes.addShaped("appliedenergistics2_network/blocks/fluid_interfaces_interface", <appliedenergistics2:fluid_interface>, [[<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>], [<minecraft:redstone>, null, <minecraft:redstone>], [<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>]]);

// - ME Glass Cable
recipes.removeByRecipeName("appliedenergistics2:network/cables/glass_fluix");
recipes.addShapeless("appliedenergistics2_network/cables/glass_fluix", <appliedenergistics2:part:16> * 4, [<appliedenergistics2:part:140>, <ore:crystalFluix> | <appliedenergistics2:material:12>]);

// - ME Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.addShaped("appliedenergistics2_network/blocks/interfaces_interface", <appliedenergistics2:interface>, [[<ore:ingotIron>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:ingotIron>], [<minecraft:redstone>, null, <minecraft:redstone>], [<ore:ingotIron>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:ingotIron>]]);

// - ME Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminals");
recipes.addShapeless("appliedenergistics2_network/parts/terminals", <appliedenergistics2:part:380>, [<minecraft:diamond>, <ore:itemIlluminatedPanel>, <storagedrawers:controller>, <minecraft:diamond>]);

// - ME Quantum Ring
recipes.removeByRecipeName("appliedenergistics2:network/blocks/quantum_ring");
recipes.addShaped("appliedenergistics2_network/blocks/quantum_ring", <appliedenergistics2:quantum_ring>, [[<ore:ingotIron>,<appliedenergistics2:material:22>,<ore:ingotIron>], [<appliedenergistics2:material:24>,<appliedenergistics2:energy_cell>,<enderio:item_material:16>], [<ore:ingotIron>,<appliedenergistics2:material:22>,<ore:ingotIron>]]);

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
recipes.removeByRecipeName("bountifulbaubles:trinketblackdragonscale");
recipes.addShaped("bountifulbaubles_black_dragon_scale", <bountifulbaubles:trinketblackdragonscale>, [[<ore:boneWithered>,<minecraft:skull:1>,<ore:boneWithered>], [<ore:boneWithered>,<bountifulbaubles:enderdragonscale>,<ore:boneWithered>], [<biomesoplenty:jar_filled:1>,<bountifulbaubles:brokenblackdragonscale>,<biomesoplenty:jar_filled:1>]]);

// - Iron Ring
recipes.removeByRecipeName("bountifulbaubles:ringiron");
recipes.addShaped("bountifulbaubles_ringiron", <bountifulbaubles:ringiron>, [[<minecraft:iron_nugget>,<minecraft:iron_ingot>,<minecraft:iron_nugget>], [<minecraft:iron_ingot>,null,<minecraft:iron_ingot>], [<minecraft:iron_nugget>,<minecraft:iron_ingot>,<minecraft:iron_nugget>]]);
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
recipes.removeByRecipeName("eplus:upgrade");
recipes.addShaped("eplus_upgrade", <eplus:table_upgrade>, [[<ore:ingotGold>, <atum:heart_of_ra>, <ore:ingotGold>], [<contenttweaker:enchanted_tome_of_knowledge>, <minecraft:enchanting_table:*>, <contenttweaker:enchanted_tome_of_knowledge>], [<ore:ingotGold>, <minecraft:end_crystal>, <ore:ingotGold>]]);
recipes.removeByRecipeName("eplus:table");
recipes.addShaped("eplus_table", <eplus:advanced_table>, [[<ore:ingotGold>, <atum:heart_of_ra>, <ore:ingotGold>], [<contenttweaker:enchanted_tome_of_knowledge>, <minecraft:enchanting_table:*>, <contenttweaker:enchanted_tome_of_knowledge>], [<ore:ingotGold>, <minecraft:end_crystal>, <ore:ingotGold>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Ender IO ---
// - Alloy Smelter
recipes.removeByRecipeName("enderio:alloy_smelter");
recipes.removeByRecipeName("enderio:alloy_smelter_upgrade");
recipes.addShaped("enderio_alloy_smelter", <enderio:block_alloy_smelter>, [[<ore:ingotSilver>,<minecraft:furnace>,<ore:ingotSilver>], [<enderio:block_simple_alloy_smelter>,<enderio:item_material:1>,<enderio:block_simple_furnace>], [<enderio:item_material:11>,<minecraft:cauldron>,<enderio:item_material:11>]]);


recipes.removeByRecipeName("enderio:s_a_g_mill");
recipes.removeByRecipeName("enderio:s_a_g_mill_upgrade");
recipes.addShaped("enderio_s_a_g_mill", <enderio:block_sag_mill>, [[<minecraft:flint>,<minecraft:flint>,<minecraft:flint>], [<enderio:item_alloy_ingot:6>,<enderio:item_material:1>,<enderio:item_alloy_ingot:6>], [<enderio:item_material:73>,<enderio:block_simple_sag_mill>,<enderio:item_material:73>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extra Utilities 2 ---
// - Ring of the flying squid
recipes.removeByRecipeName("extrautils2:squid_ring");
recipes.addShaped("extrautils2_squid_ring", <extrautils2:chickenring:1>, [[<minecraft:elytra>, null, <minecraft:elytra>], [<ore:gemDiamond>, <extrautils2:chickenring>, <ore:gemDiamond>], [<minecraft:elytra>, <aquaculture:fish:15>, <minecraft:elytra>]]);

// - Snow Globe
recipes.removeByRecipeName("extrautils2:snow_globe");
recipes.addShapeless("extrautils2_snow_globe", <extrautils2:snowglobe>, [<ore:blockGlass>, <ore:treeSapling>, <minecraft:snowball:*>, <ore:doorWood>, <ore:logWood>, <ore:grass>, <minecraft:ender_pearl:*>, <ore:netherStar>, <oresabovediamonds:black_opal_block>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Improvable Skills 3 ---
recipes.removeByRecipeName("improvableskills:skills_book");
recipes.addShapeless("improvableskills_skills_book", <improvableskills:skills_book>, [<minecraft:book>,<minecraft:wooden_sword>.anyDamage(),<minecraft:wooden_shovel>.anyDamage(),<minecraft:wooden_pickaxe>.anyDamage(),<minecraft:wooden_axe>.anyDamage()]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Inspirations ---
recipes.removeByRecipeName("inspirations:tools/redstone_charger");
recipes.addShapeless("inspirations_tools/redstone_charger", <inspirations:redstone_charger>, [<ore:ingotGold>, <minecraft:flint_and_steel>, <ore:dustRedstone>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Natura ---
//Natura Bookshelves
recipes.removeByRecipeName("natura:decorative/nether/bookshelf/ghostwood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/ghostwood_bookshelf", <natura:nether_bookshelves>, [[<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>], [<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>], [<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>]]);

recipes.removeByRecipeName("natura:decorative/nether/bookshelf/bloodwood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/bloodwood_bookshelf", <natura:nether_bookshelves:1>, [[<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>], [<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>], [<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>]]);

recipes.removeByRecipeName("natura:decorative/nether/bookshelf/darkwood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/darkwood_bookshelf", <natura:nether_bookshelves:2>, [[<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>], [<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>], [<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>]]);

recipes.removeByRecipeName("natura:decorative/nether/bookshelf/fusewood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/fusewood_bookshelf", <natura:nether_bookshelves:3>, [[<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>], [<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>], [<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>]]);

//Cactus Juice
recipes.removeByRecipeName("natura:common/cactus_juice");
recipes.addShapeless("natura_common/cactus_juice", <natura:edibles:11>, [<minecraft:cactus>,<harvestcraft:juiceritem>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Nature's Compass ---
//Nature's Compass
recipes.removeByRecipeName("naturescompass:natures_compass");
recipes.addShaped("naturescompass_natures_compass", <naturescompass:naturescompass>, [[<ore:treeSapling>,<ore:gemEmerald>,<ore:treeSapling>], [<ore:logWood>,<minecraft:compass>,<ore:logWood>], [<ore:treeSapling>,<ore:gemEmerald>,<ore:treeSapling>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Scaling Health ---
//Heart Dust
recipes.removeByRecipeName("scalinghealth:heart_dust");
recipes.addShapeless("scalinghealth_heart_dust", <scalinghealth:heartdust>, [hammer.transformDamage(), <scalinghealth:crystalshard>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Serene Seasons ---
//Greenhouse Glass
recipes.removeByRecipeName("sereneseasons:greenhous_glass");
recipes.addShaped("sereneseasons_greenhouse_glass", <sereneseasons:greenhouse_glass> * 4, [[<ore:dyeCyan>, <ore:blockGlass>, <ore:dyeCyan>], [<ore:blockGlass>, <ore:plankWood>, <ore:blockGlass>], [<ore:dyeCyan>, <ore:blockGlass>, <ore:dyeCyan>]]);

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
recipes.removeByRecipeName("storagedrawers:controller_slave");
recipes.addShaped("storagedrawers_controller_slave", <storagedrawers:controllerslave>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:redstone_torch>, <ore:drawerBasic>, <minecraft:redstone_torch>], [<minecraft:stone>, <ore:ingotGold>, <minecraft:stone>]]);

//Drawer Controller
recipes.removeByRecipeName("storagedrawers:controller");
recipes.addShaped("storagedrawers_controller", <storagedrawers:controller>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:redstone_torch>, <ore:drawerBasic>, <minecraft:redstone_torch>], [<minecraft:stone>, <ore:gemDiamond>, <minecraft:stone>]]);

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
recipes.removeByRecipeName("tesseract:tesseract");
recipes.addShaped("tesseract_tesseract", <tesseract:tesseract>, [[<ore:obsidian> | <minecraft:obsidian>, <enderstorage:ender_storage:1>, <ore:obsidian> | <minecraft:obsidian>], [<ore:enderpearl>, <enderio:block_cap_bank:2>, <ore:enderpearl>], [<ore:obsidian> | <minecraft:obsidian>, <enderstorage:ender_storage>, <ore:obsidian> | <minecraft:obsidian>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Tinkers Construct
//Green Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/green");
recipes.addShaped("tconstruct_gadgets/slimesling/green", <tconstruct:slimesling>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_green>, null], [null, <ore:slimeballGreen>, null]]);

//Blue Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/blue");
recipes.addShaped("tconstruct_gadgets/slimesling/blue", <tconstruct:slimesling:1>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_blue>, null], [null, <ore:slimeballBlue>, null]]);

//Purple Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/purple");
recipes.addShaped("tconstruct_gadgets/slimesling/purple", <tconstruct:slimesling:2>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_purple>, null], [null, <ore:slimeballPurple>, null]]);

//Orange Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/magma");
recipes.addShaped("tconstruct_gadgets/slimesling/magma", <tconstruct:slimesling:4>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_orange>, null], [null, <ore:slimeballMagma>, null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Tinker I/O --
//Slot Upgrade I
recipes.removeByRecipeName("tinker_io:slotupg1");
recipes.addShaped("tinker_io_slotupg1", <tinker_io:upg:1>, [[null,<minecraft:chest>,null], [<minecraft:chest>,<tinker_io:upg>,<minecraft:chest>], [null,<minecraft:chest>,null]]);

//Slot Upgrade II
recipes.removeByRecipeName("tinker_io:slotupg2");
recipes.addShaped("tinker_io_slotupg2", <tinker_io:upg:2>, [[null,<minecraft:iron_ingot>,null], [<minecraft:iron_ingot>,<tinker_io:upg:1>,<minecraft:iron_ingot>], [null,<minecraft:iron_ingot>,null]]);

//Slot Upgrade III
recipes.removeByRecipeName("tinker_io:slotupg3");
recipes.addShaped("tinker_io_slotupg3", <tinker_io:upg:3>, [[null,<ore:ingotGold>,null], [<ore:ingotGold>,<tinker_io:upg:2>,<ore:ingotGold>], [null,<ore:ingotGold>,null]]);

//Slot Upgrade IV
recipes.removeByRecipeName("tinker_io:slotupg4");
recipes.addShaped("tinker_io_slotupg4", <tinker_io:upg:4>, [[null,<ore:gemDiamond>,null], [<ore:gemDiamond>,<tinker_io:upg:3>,<ore:gemDiamond>], [null,<ore:gemDiamond>,null]]);

//--------------------------------------------------------------------------------------


print("Initialized 'replacerecipe'");