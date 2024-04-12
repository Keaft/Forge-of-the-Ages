#loader contenttweaker
#Name: contenttweakeritems.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

static localizeItems as string[] = [];
static verbose as bool = true;

print("Initializing 'contenttweakeritems'...");
//itemConstructor(nameParam, stackSizeParam, rarityParam, glowingParam, durabilityParam);
function itemConstructor(nameParam as string, stackSizeParam as int = 64, rarityParam as string = "COMMON", glowingParam as bool = false, durabilityParam as int = -1) {
    var itemToMake = VanillaFactory.createItem(nameParam);
    itemToMake.maxStackSize = stackSizeParam;
    itemToMake.rarity = rarityParam;
    itemToMake.glowing = glowingParam;
    if (durabilityParam != -1){
        itemToMake.maxDamage = durabilityParam;
    }
    itemToMake.register();
    if (verbose) {
        localizeItems += nameParam;
    }
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

// - Durt Idle Game items
itemConstructor("clip");
itemConstructor("clop");
itemConstructor("clorp");
itemConstructor("clod");
itemConstructor("dirt_claw", 1);
itemConstructor("dirty_claw", 1);
itemConstructor("durt_claw_core", 1);
itemConstructor("durt_claw", 1);

// - Catalyst Items for boss spawning

itemConstructor("summon_tier_1", 8, "COMMON", true);
itemConstructor("summon_tier_2", 8, "UNCOMMON", true);
itemConstructor("summon_tier_3", 8, "RARE", true);
itemConstructor("summon_tier_4", 8, "EPIC", true);

if (verbose) {
    print("The following can be copy pasted for use in lang files:");
    for i in localizeItems {
        print("item.contenttweaker."~i~".name=");
    }
}
print("Initialized 'contenttweakeritems'");