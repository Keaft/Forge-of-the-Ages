#loader contenttweaker
#Name: contenttweakeritems.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;

print("Initializing 'contenttweakeritems'...");
//itemConstructor(name, stackSize, rarity, glowing);
function itemConstructor(name as string, stackSize as int = 64, rarity as string = "common", glowing as bool = false) {
    var itemToMake = VanillaFactory.createItem(name);
    itemToMake.maxStackSize = stackSize;
    itemToMake.register();
}

// - Enchanted Tome of Knowledge
itemConstructor("enchanted_tome_of_knowledge", 64, "rare", true);

// - Slime Sling Handles
itemConstructor("slime_handle_green", 1);
itemConstructor("slime_handle_blue", 1);
itemConstructor("slime_handle_purple", 1);
itemConstructor("slime_handle_orange", 1);
// -------------------------------------

// - Fake Applied Energistics Cells
itemConstructor("onek_item", 1);
itemConstructor("fourk_item", 1);
itemConstructor("sixteenk_item", 1);
itemConstructor("onek_fluid", 1);
itemConstructor("fourk_fluid", 1);
itemConstructor("sixteenk_fluid", 1);
// -------------------------------------

itemConstructor("elytra_wing");
itemConstructor("neptunium_ingot");
itemConstructor("unfired_porcelain_plate");
itemConstructor("porcelain_plate");
itemConstructor("certus_quartz_plate");
itemConstructor("diamond_plate");
itemConstructor("fluix_plate");
itemConstructor("demon_will_crystal_perfected");
itemConstructor("unobtanium_ingot");
itemConstructor("unfired_porcelain_crystal");
itemConstructor("porcelain_crystal");
itemConstructor("crystal_cast", 1);
itemConstructor("inscriber_crystal_press");
itemConstructor("solid_crystal_blank");
itemConstructor("steel_crystal_shell");
itemConstructor("stagnant_green_slime_crystal");
itemConstructor("stagnant_blue_slime_crystal");
itemConstructor("stagnant_magma_slime_crystal");

print("Initialized 'contenttweakeritems'");