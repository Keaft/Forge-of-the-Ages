#loader contenttweaker
#Name: contenttweakeritems.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

static localizeItems as string[] = [];
static verbose as bool = true;

print("Initializing 'contenttweakeritems'...");
//itemConstructor(unlocalizedNameParam, stackSizeParam, rarityParam, glowingParam, durabilityParam);
function itemConstructor(unlocalizedNameParam as string, localizedNameParam as string, stackSizeParam as int = 64, rarityParam as string = "COMMON", glowingParam as bool = false, durabilityParam as int = -1) {
    var itemToMake = VanillaFactory.createItem(unlocalizedNameParam);
    itemToMake.unlocalizedName = unlocalizedNameParam;
    itemToMake.setLocalizedNameSupplier(function(itemStack) {return localizedNameParam;});
    itemToMake.maxStackSize = stackSizeParam;
    itemToMake.rarity = rarityParam;
    itemToMake.glowing = glowingParam;
    if (durabilityParam != -1){
        itemToMake.maxDamage = durabilityParam;
    }
    itemToMake.register();
    if (verbose) {
        localizeItems += unlocalizedNameParam;
    }
}

// - Enchanted Tome of Knowledge
itemConstructor("enchanted_tome_of_knowledge", "Enchanted Tome of Knowledge", 64, "rare", true);

// - Slime Sling Handles
itemConstructor("slime_handle_green", "Green Slime Handle", 1);
itemConstructor("slime_handle_blue", "Blue Slime Handle", 1);
itemConstructor("slime_handle_purple", "Purple Slime Handle", 1);
itemConstructor("slime_handle_orange", "Orange Slime Handle", 1);
itemConstructor("slime_handle_orange", "Congealed Blood Handle", 1);
// -------------------------------------

// - Fake Applied Energistics Cells
itemConstructor("onek_item", "1k ME Storage Cell TO UPGRADE", 1);
itemConstructor("fourk_item", "4k ME Storage Cell TO UPGRADE", 1);
itemConstructor("sixteenk_item", "16k ME Storage Cell TO UPGRADE", 1);
itemConstructor("onek_fluid", "1k ME Fluid Storage Cell TO UPGRADE", 1);
itemConstructor("fourk_fluid", "4k ME Fluid Storage Cell TO UPGRADE", 1);
itemConstructor("sixteenk_fluid", "16k ME Fluid Storage Cell TO UPGRADE", 1);
// -------------------------------------

itemConstructor("elytra_wing", "Elytra Wing");
itemConstructor("neptunium_ingot", "Neptunium Ingot");
itemConstructor("unfired_porcelain_plate", "Unfired Porcelain Plate");
itemConstructor("porcelain_plate", "Porcelain Plate");
itemConstructor("certus_quartz_plate", "Certus Quartz Plate");
itemConstructor("diamond_plate", "Diamond Plate");
itemConstructor("fluix_plate", "Fluix Plate");
itemConstructor("demon_will_crystal_perfected", "Demon Will Crystal Perfected");
itemConstructor("unobtanium_ingot", "Unobtanium Ingot");
itemConstructor("unfired_porcelain_crystal", "Unfired Porcelain Crystal");
itemConstructor("porcelain_crystal", "Porcelain Crystal");
itemConstructor("crystal_cast", "Crystal Cast", 1);
itemConstructor("inscriber_crystal_press", "Inscriber Crystal Press");
itemConstructor("solid_crystal_blank", "Solid Crystal Blank");
itemConstructor("steel_crystal_shell", "Steel Crystal Shell");
itemConstructor("stagnant_green_slime_crystal", "Stagnant Green Slime Crystal");
itemConstructor("stagnant_blue_slime_crystal", "Stagnant Blue Slime Crystal");
itemConstructor("stagnant_magma_slime_crystal", "Stagnant Magma Slime Crystal");

// - Durt Idle Game items
itemConstructor("clip", "Clip");
itemConstructor("clop", "Clop");
itemConstructor("clorp", "Clorp");
itemConstructor("clod", "Clod");
itemConstructor("dirt_claw", "Dirt Claw", 1);
itemConstructor("dirty_claw", "Dirty Claw", 1);
itemConstructor("durt_claw_core", "Durt Claw Core", 1);
itemConstructor("durt_claw", "Durt Claw", 1);

// - Catalyst Items for boss spawning

itemConstructor("summon_tier_1", "Petty Summon Essence", 8, "COMMON", true);
itemConstructor("summon_tier_2", "Lesser Summon Essence", 8, "UNCOMMON", true);
itemConstructor("summon_tier_3", "Great Summon Essence", 8, "RARE", true);
itemConstructor("summon_tier_4", "Greater Summon Essence", 8, "EPIC", true);

itemConstructor("summon_tier_1_empty", "Empty Petty Summon Essence", 8, "COMMON");
itemConstructor("summon_tier_2_empty", "Empty Lesser Summon Essence", 8, "UNCOMMON");
itemConstructor("summon_tier_3_empty", "Empty Great Summon Essence", 8, "RARE");
itemConstructor("summon_tier_4_empty", "Empty Greater Summon Essence", 8, "EPIC");

if (verbose) {
    print("The following can be copy pasted for use in lang files:");
    for i in localizeItems {
        print("item.contenttweaker."~i~".name=");
    }
}
print("Initialized 'contenttweakeritems'");