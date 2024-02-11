#Name: remove.zs
#Author: Keaft
#priority 2
// Feel free to use this in your pack! Functions are established at the beginning and then called down near the bottom.

import crafttweaker.item.IIngredient;

// true for client, false for server
global runAsClient as bool = true;

print("Initializing 'remove'...");

function itemRecipeRemove(recipeList as IIngredient[]) {
    for ingredient in recipeList {
        if (runAsClient) {
            mods.jei.JEI.removeAndHide(ingredient);
        } else {
            recipes.remove(ingredient, true);
        }
    }
}

function nameRecipeRemove(recipeNameList as string[]) {
    for ingredient in recipeNameList {
            recipes.removeByRecipeName(ingredient);
    }
}

function furnaceRecipeRemove(furnaceList as IIngredient[]) {
    for output in furnaceList {
        furnace.remove(output);
    }
}

val recipesItems as IIngredient[] = [
    // --- Applied Energistics 2 ---
    // - Gear
    <appliedenergistics2:material:40>,
    // --- Apotheosis ---
    // - Hellshelf
    <apotheosis:hellshelf>,
    // --- CoFH Core ---
    // - Smelting Enchantment
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 52 as int}]}),
    // - Soulbound I Enchantment
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 53 as int}]}),
    // - Soulbound II Enchantment
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 53 as int}]}),
    // - Soulbound III Enchantment
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 53 as int}]}),
    // --- Corail Tombstone ---
    // - Tombstone Soulbound Enchantment
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 28 as int}]}),
    // --- Draconic Evolution ---
    // - Dislocator Pedastal
    <draconicevolution:dislocator_pedestal>,
    // --- EnderIO ---
    // - Powered Spawner, in favor of mob farming through Woot.
    <enderio:block_powered_spawner>,
    // - Glider and wings
    <enderio:item_material:7>,
    <enderio:item_material:6>,
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu" as string: "enderio:glide" as string}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu" as string: "enderio:glide" as string, "enderio:enabled": 1 as byte}),
    // --- Ex Compressum ---
    <excompressum:compressed_block:1>,
    <excompressum:compressed_block:2>,
    <excompressum:compressed_block:3>,
    <excompressum:compressed_block:4>,
    <excompressum:compressed_block:9>,
    <excompressum:auto_sieve>,
    // --- Ex Nihilo: Creatio ---
    <exnihilocreatio:item_seed_cactus>,
    <exnihilocreatio:item_seed_sugarcane>,
    <exnihilocreatio:item_seed_carrot>,
    <exnihilocreatio:item_seed_potato>,
    // --- Extra Utilities 2 ---
    // - Deep Dark Portal
    <extrautils2:teleporter:1>,
    // --- Macaw's various mods ---
    // - Ceiling Lights
    <mcwlights:white_ceiling_light>,
    <mcwlights:orange_ceiling_light>,
    <mcwlights:magenta_ceiling_light>,
    <mcwlights:light_blue_ceiling_light>,
    <mcwlights:yellow_ceiling_light>,
    <mcwlights:lime_ceiling_light>,
    <mcwlights:pink_ceiling_light>,
    <mcwlights:gray_ceiling_light>,
    <mcwlights:light_gray_ceiling_light>,
    <mcwlights:cyan_ceiling_light>,
    <mcwlights:purple_ceiling_light>,
    <mcwlights:blue_ceiling_light>,
    <mcwlights:brown_ceiling_light>,
    <mcwlights:green_ceiling_light>,
    <mcwlights:red_ceiling_light>,
    <mcwlights:black_ceiling_light>,
    // - Extra Trap Doors
    <mcwtrpdoors:dark_oak_four_panel_trapdoor>,
    <mcwtrpdoors:spruce_cottage_trapdoor>,
    <mcwtrpdoors:birch_paper_trapdoor>,
    <mcwtrpdoors:jungle_beach_trapdoor>,
    <mcwtrpdoors:acacia_tropical_trapdoor>,
    // - Wired Fences
    <mcwfences:oak_wired_fence>,
    <mcwfences:spruce_wired_fence>,
    <mcwfences:birch_wired_fence>,
    <mcwfences:jungle_wired_fence>,
    <mcwfences:acacia_wired_fence>,
    <mcwfences:dark_oak_wired_fence>,
    // --- Metallurgy 4 Reforged ---
    // - Metal Detector
    <metallurgy:ore_detector>,
    // --- Minecraft ---
    // - Oak Trap door, handled by Macaw's Trap Doors
    <minecraft:trapdoor>,
    // --- Open Blocks ---
    // - Glider Wing
    <openblocks:generic>,
    // --- MoarSigns ---
    // - Blutonium sign for being errored out
    <moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/blutonium_sign"}),
    // - Cyanite sign for being errored out
    <moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/cyanite_sign"}),
    // - Graphite sign for being errored out
    <moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/graphite_sign"}),
    // - Ludicrite sign for being errored out
    <moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/ludicrite_sign"}),
    // - Yellorium sign for being errored out
    <moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/yellorium_sign"}),
    // - Steel sign for being errored out
    <moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/steel_sign"}),
    // --- Pam's Harvestcraft ---
    // - Garlic Steak
    <harvestcraft:garlicsteakitem>,
    // - Pork Rinds
    <harvestcraft:porkrindsitem>,
    // - Cracklins
    <harvestcraft:cracklinsitem>,
    // - BBQ jackfruit
    <harvestcraft:bbqjackfruititem>,
    // - Lychee tea
    <harvestcraft:lycheeteaitem>,
    // --- ProjectE
    <projecte:dm_pedestal>,
    <projecte:interdiction_torch>,
    <projecte:nova_catalyst>,
    <projecte:nova_cataclysm>,
    <projecte:item.pe_alchemical_bag>,
    <projecte:item.pe_alchemical_bag:1>,
    <projecte:item.pe_alchemical_bag:2>,
    <projecte:item.pe_alchemical_bag:3>,
    <projecte:item.pe_alchemical_bag:4>,
    <projecte:item.pe_alchemical_bag:5>,
    <projecte:item.pe_alchemical_bag:6>,
    <projecte:item.pe_alchemical_bag:7>,
    <projecte:item.pe_alchemical_bag:8>,
    <projecte:item.pe_alchemical_bag:9>,
    <projecte:item.pe_alchemical_bag:10>,
    <projecte:item.pe_alchemical_bag:11>,
    <projecte:item.pe_alchemical_bag:12>,
    <projecte:item.pe_alchemical_bag:13>,
    <projecte:item.pe_alchemical_bag:14>,
    <projecte:item.pe_alchemical_bag:15>,
    <projecte:item.pe_repair_talisman>,
    <projecte:item.pe_dm_pick>,
    <projecte:item.pe_dm_axe>,
    <projecte:item.pe_dm_shovel>,
    <projecte:item.pe_dm_sword>,
    <projecte:item.pe_dm_hoe>,
    <projecte:item.pe_dm_shears>,
    <projecte:item.pe_dm_hammer>,
    <projecte:item.pe_rm_pick>,
    <projecte:item.pe_rm_axe>,
    <projecte:item.pe_rm_shovel>,
    <projecte:item.pe_rm_sword>,
    <projecte:item.pe_rm_hoe>,
    <projecte:item.pe_rm_shears>,
    <projecte:item.pe_rm_hammer>,
    <projecte:item.pe_rm_katar>,
    <projecte:item.pe_rm_morning_star>,
    <projecte:item.pe_dm_armor_3>,
    <projecte:item.pe_dm_armor_2>,
    <projecte:item.pe_dm_armor_1>,
    <projecte:item.pe_dm_armor_0>,
    <projecte:item.pe_rm_armor_3>,
    <projecte:item.pe_rm_armor_2>,
    <projecte:item.pe_rm_armor_1>,
    <projecte:item.pe_rm_armor_0>,
    <projecte:item.pe_gem_armor_3>,
    <projecte:item.pe_gem_armor_2>,
    <projecte:item.pe_gem_armor_1>,
    <projecte:item.pe_gem_armor_0>,
    <projecte:item.pe_ring_iron_band>,
    <projecte:item.pe_black_hole>,
    <projecte:item.pe_archangel_smite>,
    <projecte:item.pe_harvest_god>,
    <projecte:item.pe_ignition>,
    <projecte:item.pe_zero_ring>,
    <projecte:item.pe_swrg>,
    <projecte:item.pe_time_watch>,
    <projecte:item.pe_gem_density>,
    <projecte:item.pe_divining_rod_1>,
    <projecte:item.pe_divining_rod_2>,
    <projecte:item.pe_divining_rod_3>,
    <projecte:item.pe_mercurial_eye>,
    <projecte:item.pe_void_ring>,
    <projecte:item.pe_arcana_ring>,
    <projecte:item.pe_body_stone>,
    <projecte:item.pe_soul_stone>,
    <projecte:item.pe_mind_stone>,
    <projecte:item.pe_life_stone>,
    <projecte:item.pe_evertide_amulet>,
    <projecte:item.pe_volcanite_amulet>,
    <projecte:item.pe_destruction_catalyst>,
    <projecte:item.pe_hyperkinetic_lens>,
    <projecte:item.pe_catalitic_lens>,
    <projecte:item.pe_tome>,
    <projecte:item.pe_manual>,
    <projecte:item.pe_water_orb>,
    <projecte:item.pe_lava_orb>,
    <projecte:item.pe_randomizer>,
    <projecte:item.pe_lens_explosive>,
    <projecte:item.pe_fire_projectile>,
    <projecte:item.pe_wind_projectile>,
    // --- Quark ---
    // - Walls, handled by FutureMC
    <quark:stonebrick_wall>,
    <quark:stonebrick_mossy_wall>,
    <quark:sandstone_wall>,
    <quark:red_sandstone_wall>,
    <quark:brick_wall>,
    <quark:stone_granite_wall>,
    <quark:stone_andesite_wall>,
    <quark:stone_diorite_wall>,
    <quark:prismarine_bricks_wall>,
    // - Trap doors, handled by FutureMC and Macaw's
    <quark:birch_trapdoor>,
    <quark:jungle_trapdoor>,
    <quark:acacia_trapdoor>,
    <quark:dark_oak_trapdoor>,
    // --- Scaling Health ---
    // - Heart Container
    <scalinghealth:heartcontainer>,
    // --- Thermal Expansion ---
    // - Morbs
    <thermalexpansion:morb>,
    // --- Tinkers Construct ---
    // - Unobtanium
    <tcomplement:chisel_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:pick_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:axe_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:broad_axe_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:sword_blade>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:large_sword_blade>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:hammer_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:excavator_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:kama_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:scythe_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:pan_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:sign_head>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:tool_rod>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:large_plate>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:sharpening_kit>.withTag({Material: "unobtanium_mat" as string}),
    <tconstruct:shard>.withTag({Material: "unobtanium_mat" as string}),
    <conarm:polishing_kit>.withTag({Material: "unobtanium_mat" as string}),
    <conarm:helmet_core>.withTag({Material: "unobtanium_mat" as string}),
    <conarm:armor_trim>.withTag({Material: "unobtanium_mat" as string}),
    <conarm:armor_plate>.withTag({Material: "unobtanium_mat" as string}),
    <conarm:chest_core>.withTag({Material: "unobtanium_mat" as string}),
    <conarm:leggings_core>.withTag({Material: "unobtanium_mat" as string}),
    <conarm:boots_core>.withTag({Material: "unobtanium_mat" as string}),
    //Uhhhh
    <conarm:helmet>.withTag({StatsOriginal: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, Stats: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, ConArmEquipmentSlot: 5 as int, TinkerData: {Materials: ["unobtanium_mat" as string, "unobtanium_mat" as string, "unobtanium_mat" as string], Modifiers: ["leveling_armor" as string]}, Modifiers: [{identifier: "leveling_armor" as string, color: 16777215 as int, level: 1 as int}], Traits: ["leveling_armor" as string]}),
    <conarm:chestplate>.withTag({StatsOriginal: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, Stats: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, ConArmEquipmentSlot: 4, TinkerData: {Materials: ["unobtanium_mat" as string, "unobtanium_mat" as string, "unobtanium_mat" as string], Modifiers: ["leveling_armor" as string]}, Modifiers: [{identifier: "leveling_armor" as string, color: 16777215 as int, level: 1 as int}], Traits: ["leveling_armor" as string]}),
    <conarm:leggings>.withTag({StatsOriginal: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, Stats: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, ConArmEquipmentSlot: 3 as int, TinkerData: {Materials: ["unobtanium_mat" as string, "unobtanium_mat" as string, "unobtanium_mat" as string], Modifiers: ["leveling_armor" as string]}, Modifiers: [{identifier: "leveling_armor" as string, color: 16777215 as int, level: 1 as int}], Traits: ["leveling_armor" as string]}),
    <conarm:boots>.withTag({StatsOriginal: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, Stats: {Toughness: 0.0 as float, FreeModifiers: 3 as int, Durability: 1 as int, Defense: 15.210001 as float}, ConArmEquipmentSlot: 2, TinkerData: {Materials: ["unobtanium_mat" as string as string, "unobtanium_mat" as string as string, "unobtanium_mat" as string as string], Modifiers: ["leveling_armor" as string]}, Modifiers: [{identifier: "leveling_armor" as string, color: 16777215 as int, level: 1 as int}], Traits: ["leveling_armor" as string]}),
    <tconstruct:bolt>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 4.5 as float, FreeModifiers: 3 as int, Durability: 164 as int, HarvestLevel: 2 as int, Attack: 3.38 as float}, Unbreakable: 1 as byte, Stats: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 4.5 as float, FreeModifiers: 3 as int, Durability: 164 as int, HarvestLevel: 2 as int, Attack: 3.38 as float}, Special: {Categories: ["tool" as string, "no_melee" as string, "projectile" as string]}, TinkerData: {Materials: ["wood" as string, "unobtanium_mat" as string, "feather" as string], Modifiers: ["toolleveling" as string]}, Modifiers: [{identifier: "ecological" as string, color: -7444965 as int, level: 1 as int}, {identifier: "tconevo.infinitum" as string, color: -13806218 as int, level: 1 as int}, {identifier: "toolleveling" as string, color: 16777215 as int, level: 1 as int}], Traits: ["ecological" as string, "tconevo.infinitum" as string, "toolleveling" as string]})
    //So anyways...
];

val recipeNames as string [] = [
    // --- Aquaculture ---
    // - Saddle
    "aquaculture:leather_from_boots",
    // --- Biomes O' Plenty ---
    // - Honeycomb Blocks
    "biomesoplenty:honeycomb_block",
    "biomesoplenty:filled_honeycomb_block",
    // --- Dank Null ---
    // - MK II
    "danknull:dank_null_1",
    "danknull:dank_null_2",
    "danknull:dank_null_3",
    "danknull:dank_null_4",
    "danknull:dank_null_5",
    // --- Ender IO ---
    // - Enhanced Alloy Smelter
    "enderio:enhanced_alloy_smelter",
    // --- Extra Utilities 2 ---
    // - Angel Ring, such that the base one is craftable, and the customizable ones use the base.
    "extrautils2:angel_ring_1",
    "extrautils2:angel_ring_2",
    "extrautils2:angel_ring_3",
    "extrautils2:angel_ring_4",
    "extrautils2:angel_ring_5",
    // --- Future MC ---
    "futuremc:else/stick_from_bamboo",
    // --- Harvestcraft ---
    "harvestcraft:freshwateritem_listallwater",
    // --- MoarSigns ---
    // - Blutonium sign for being errored out
    "moarsigns:sign_bigreactors_blutonium",
    // - Cyanite sign for being errored out
    "moarsigns:sign_bigreactors_cyanite",
    // - Graphite sign for being errored out
    "moarsigns:sign_bigreactors_graphite",
    // - Ludicrite sign for being errored out
    "moarsigns:sign_bigreactors_ludicrite",
    // - Yellorium sign for being errored out
    "moarsigns:sign_bigreactors_yellorium",
    // - Steel sign for being errored out
    "moarsigns:sign_bigreactors_steel",
    // --- Natura ---
    // - Extraneous string
    "natura:common/string",
    // --- Scaling Health ---
    // - Heart Container
    "scalinghealth:heart_container",
    // --- Seasons ---
    "sereneseasons:greenhouse_glass",
    // --- Tinkers Construct ---
    // Slime Sling
    "tconstruct:gadgets/slimesling/fallback"
];

val furnaceRecipes as IIngredient[] = [
    <tconstruct:materials:9>,
    <tconstruct:materials:10>,
    <tconstruct:materials:11>,
    <tconevo:material:1>
];

itemRecipeRemove(recipesItems);
nameRecipeRemove(recipeNames);
furnaceRecipeRemove(furnaceRecipes);

//--------------------------------------------------------------------------------------
// Special Cases
// --- Tinker I/O ---
// - Base Upgrade with aluminum
recipes.removeShaped(<tinker_io:upg>, [[<minecraft:dye:4>,<minecraft:dye:4>,<minecraft:dye:4>], [<ore:ingotAluminum>,<minecraft:paper>,<ore:ingotAluminum>], [<minecraft:dye:4>,<minecraft:dye:4>,<minecraft:dye:4>]]);

print("Initialized 'remove'");