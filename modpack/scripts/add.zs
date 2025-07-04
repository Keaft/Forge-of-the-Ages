#Name: add.zs
#Author: Keaft
#priority 1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;

print("Initializing 'add'...");

//--------------------------------------------------------------------------------------
//Adding recipes
//recipes.addShaped(name,output,inputs,function,action);
//--------------------------------------------------------------------------------------


//--------------------------------------------------------------------------------------

// --- Biomes O' Plenty ---
// - Brown Dye from reeds
recipes.addShapeless("biome_brown_dye_from_reed", <biomesoplenty:brown_dye> * 2, [<biomesoplenty:plant_1:8>]);
// - Crystal Shard
recipes.addShapeless(<biomesoplenty:crystal_shard> * 2,
[<minecraft:quartz>, <minecraft:glowstone_dust>, <biomesoplenty:gem>]);
recipes.addShapeless(<biomesoplenty:crystal_shard> * 4,
[<biomesoplenty:crystal>]);
// - Mud Ball
recipes.addShapeless(<biomesoplenty:mudball> * 4,
[<biomesoplenty:mud>]);
// - Flesh Chunk
recipes.addShapeless(<biomesoplenty:fleshchunk> * 4,
[<biomesoplenty:flesh>]);
recipes.addShapeless(<biomesoplenty:grass:1> * 4,
[<minecraft:stone:0>,<minecraft:stone:0>,<minecraft:stone:0>,<minecraft:stone:0>,<minecraft:wheat_seeds>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Bountiful Baubles ---
// - Bezoar
recipes.addShapeless("bountifulbaubles_bezoar", <bountifulbaubles:trinketbezoar>, [<minecraft:fermented_spider_eye>,<mowziesmobs:foliaath_seed>,<minecraft:ender_eye>]);

// - Broken Heart
recipes.addShapeless("bountifulbaubles_broken_heart", <bountifulbaubles:trinketbrokenheart>, [<draconicevolution:dragon_heart>,<thebetweenlands:items_misc:24>,<minecraft:totem_of_undying>]);

// - Forbidden Fruit
recipes.addShaped("bountifulbaubles_forbidden_fruit", <bountifulbaubles:trinketapple>, [[<minecraft:emerald_block>,<minecraft:emerald_block>,<minecraft:emerald_block>], [null,<minecraft:golden_apple:1>,null], [<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>]]);

// - Ring of Overclocking
recipes.addShaped("bountifulbaubles_ring_of_overclocking", <bountifulbaubles:ringoverclocking>, [[null,<thermalfoundation:material:1024>,null], [<thermalfoundation:material:1024>,<atum:loot_silver_ring>,<thermalfoundation:material:1024>], [null,<thermalfoundation:material:1024>,null]]);

// - Vitamins
recipes.addShapeless("bountifulbaubles_vitamins", <bountifulbaubles:trinketvitamins>, [<minecraft:prismarine_crystals>,<minecraft:prismarine_crystals>,<minecraft:prismarine_crystals>,<minecraft:prismarine_crystals>,<enderio:item_soul_vial>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Chocolate Quest ---
recipes.addShaped("oak_table", <cqrepoured:table_oak> * 2, [[<minecraft:wooden_slab>],[<minecraft:fence>]]);
recipes.addShaped("spruce_table", <cqrepoured:table_spruce> * 2, [[<minecraft:wooden_slab:1>],[<minecraft:spruce_fence>]]);
recipes.addShaped("birch_table", <cqrepoured:table_birch> * 2, [[<minecraft:wooden_slab:2>],[<minecraft:birch_fence>]]);
recipes.addShaped("jungle_table", <cqrepoured:table_jungle> * 2, [[<minecraft:wooden_slab:3>],[<minecraft:jungle_fence>]]);
recipes.addShaped("acacia_table", <cqrepoured:table_acacia> * 2, [[<minecraft:wooden_slab:4>],[<minecraft:acacia_fence>]]);
recipes.addShaped("dark_oak_table", <cqrepoured:table_dark> * 2, [[<minecraft:wooden_slab:5>],[<minecraft:dark_oak_fence>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- ContentTweaker ---
// - Elytra Wing
recipes.addShaped("contenttweaker_elytra_wing", <contenttweaker:elytra_wing>, [[null, <minecraft:feather>, <minecraft:end_rod>],[<minecraft:feather>, <harvestcraft:wovencottonitem>, <minecraft:end_rod>],[<minecraft:feather>, <harvestcraft:wovencottonitem>, <minecraft:end_rod>]]);

// - Enchanted Tome of Knowledge
recipes.addShapeless("contenttweaker_enchanted_tome_of_knowledge", <contenttweaker:enchanted_tome_of_knowledge>, [<minecraft:enchanted_book>, <minecraft:enchanted_book>]);

// - Green Slime Handle
recipes.addShaped("contenttweaker_green_slime_handle", <contenttweaker:slime_handle_green>, [[<ore:slimeballGreen>, null, <ore:slimeballGreen>],[null, <tconstruct:slime_congealed>, null],[null, <minecraft:ender_eye>, null]]);

// - Blue Slime Handle
recipes.addShaped("contenttweaker_blue_slime_handle", <contenttweaker:slime_handle_blue>, [[<ore:slimeballBlue>, null, <ore:slimeballBlue>],[null, <tconstruct:slime_congealed:1>, null],[null, <minecraft:ender_eye>, null]]);

// - Purple Slime Handle
recipes.addShaped("contenttweaker_purple_slime_handle", <contenttweaker:slime_handle_purple>, [[<ore:slimeballPurple>, null, <ore:slimeballPurple>],[null, <tconstruct:slime_congealed:2>, null],[null, <minecraft:ender_eye>, null]]);

// - Orange Slime Handle
recipes.addShaped("contenttweaker_orange_slime_handle", <contenttweaker:slime_handle_orange>, [[<ore:slimeballMagma>, null, <ore:slimeballMagma>],[null, <tconstruct:slime_congealed:4>, null],[null, <minecraft:ender_eye>, null]]);

// - Red Slime Handle
recipes.addShaped("contenttweaker_red_slime_handle", <contenttweaker:slime_handle_red>, [[<ore:slimeballBlood>, null, <ore:slimeballBlood>],[null, <tconstruct:slime_congealed:3>, null],[null, <minecraft:ender_eye>, null]]);

// - Compressed Obsidian Gravel
recipes.addShapeless("contenttweaker_compressed_obsidian_gravel", <contenttweaker:compressed_obsidian_gravel>, [<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>,<contenttweaker:obsidian_gravel>]);

// - Obsidian gravel from pulverized obsidian and vice versa
recipes.addShapeless("contenttweaker_obsidian_gravel_from_pulverized_obsidian", <contenttweaker:obsidian_gravel>, [<thermalfoundation:material:770>,<thermalfoundation:material:770>,<thermalfoundation:material:770>,<thermalfoundation:material:770>]);
recipes.addShapeless("contenttweaker_obsidian_gravel_to_pulverized_obsidian", <thermalfoundation:material:770> * 4, [<contenttweaker:obsidian_gravel>]);

// - Compressed Obsidian
recipes.addShapeless("contenttweaker_compressed_obsidian", <contenttweaker:compressed_obsidian>, [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]);

// - Unfired Porcelain Plate
recipes.addShaped("contenttweaker_unfired_porcelain_plate", <contenttweaker:unfired_porcelain_plate>, [[<exnihilocreatio:item_material:1>,<exnihilocreatio:item_material:1>],[<exnihilocreatio:item_material:1>,<exnihilocreatio:item_material:1>]]);

// - Unfired Porcelain Crystal
recipes.addShaped("contenttweaker_unfired_porcelain_crystal", <contenttweaker:unfired_porcelain_crystal>, [[null, <exnihilocreatio:item_material:1>, null],[<exnihilocreatio:item_material:1>, <exnihilocreatio:item_material:1>, <exnihilocreatio:item_material:1>],[null, <exnihilocreatio:item_material:1>, null]]);


// - Stagnant Slime Crystals
recipes.addShapeless("contenttweaker_stagnant_green_slime_crystal", <contenttweaker:stagnant_green_slime_crystal>, [<contenttweaker:steel_crystal_shell>, <minecraft:slime_ball>]);
recipes.addShapeless("contenttweaker_stagnant_blue_slime_crystal", <contenttweaker:stagnant_blue_slime_crystal>, [<contenttweaker:stagnant_green_slime_crystal>, <minecraft:diamond>]);

// - Durt Clicker Items
recipes.addShapeless("contenttweaker_clips_from_clop", <contenttweaker:clip> * 9, [<contenttweaker:clop>]);
recipes.addShapeless("contenttweaker_clop_from_clips", <contenttweaker:clop>, [<contenttweaker:clip>,<contenttweaker:clip>,<contenttweaker:clip>,<contenttweaker:clip>,<contenttweaker:clip>,<contenttweaker:clip>,<contenttweaker:clip>,<contenttweaker:clip>,<contenttweaker:clip>]);
recipes.addShapeless("contenttweaker_clops_from_clorp", <contenttweaker:clop> * 9, [<contenttweaker:clorp>]);
recipes.addShapeless("contenttweaker_clorp_from_clops", <contenttweaker:clorp>, [<contenttweaker:clop>,<contenttweaker:clop>,<contenttweaker:clop>,<contenttweaker:clop>,<contenttweaker:clop>,<contenttweaker:clop>,<contenttweaker:clop>,<contenttweaker:clop>,<contenttweaker:clop>]);
recipes.addShapeless("contenttweaker_clorps_from_clod", <contenttweaker:clorp> * 9, [<contenttweaker:clod>]);
recipes.addShapeless("contenttweaker_clod_from_clorps", <contenttweaker:clod>, [<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>]);
recipes.addShapeless("contenttweaker_clods_from_basic_durt", <contenttweaker:clod> * 9, [<contenttweaker:basic_durt>]);
recipes.addShapeless("contenttweaker_basic_durt_from_clods", <contenttweaker:basic_durt>, [<contenttweaker:clod>,<contenttweaker:clod>,<contenttweaker:clod>,<contenttweaker:clod>,<contenttweaker:clod>,<contenttweaker:clod>,<contenttweaker:clod>,<contenttweaker:clod>,<contenttweaker:clod>]);
recipes.addShaped("contenttweaker_dirt_claw", <contenttweaker:dirt_claw>, [[<exnihilocreatio:item_pebble>,null,<exnihilocreatio:item_pebble>],[null,<exnihilocreatio:item_pebble>,<exnihilocreatio:item_pebble>],[<exnihilocreatio:item_pebble>,<exnihilocreatio:item_pebble>,<exnihilocreatio:item_pebble>]]);
recipes.addShaped("contenttweaker_dirty_claw", <contenttweaker:dirty_claw>, [[<contenttweaker:clip>,null,<contenttweaker:clip>], [null,<contenttweaker:clop>,<contenttweaker:clop>], [<contenttweaker:clip>,<contenttweaker:clop>,<contenttweaker:dirt_claw>]]);
recipes.addShaped("contenttweaker_durt_claw_core", <contenttweaker:durt_claw_core>, [[<contenttweaker:clorp>,<contenttweaker:clorp>],[<contenttweaker:clorp>,<contenttweaker:clorp>]]);
recipes.addShapeless("contenttweaker_durt_claw", <contenttweaker:durt_claw>, [<contenttweaker:dirty_claw>,<contenttweaker:durt_claw_core>]);
recipes.addShaped("contenttweaker_basic_durt_casing", <contenttweaker:basic_durt_casing>, [[<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>],[<contenttweaker:clorp>,null,<contenttweaker:clorp>],[<contenttweaker:clorp>,<contenttweaker:clorp>,<contenttweaker:clorp>]]);

// - Summoning Items
recipes.addShaped("contenttweaker_summon_tier_1_empty", <contenttweaker:summon_tier_1_empty>, [[null,<botania:managlass>,null],[<botania:managlass>,<minecraft:redstone_block>,<botania:managlass>],[null,<botania:managlass>,null]]);
recipes.addShaped("contenttweaker_summon_tier_2_empty", <contenttweaker:summon_tier_2_empty>, [[<appliedenergistics2:quartz_block>,<botania:manaresource:2>,<appliedenergistics2:quartz_block>],[<botania:manaresource:2>,<contenttweaker:summon_tier_1_empty> | <contenttweaker:summon_tier_1>,<botania:manaresource:2>],[<appliedenergistics2:quartz_block>,<botania:manaresource:2>,<appliedenergistics2:quartz_block>]]);
recipes.addShaped("contenttweaker_summon_tier_3_empty", <contenttweaker:summon_tier_3_empty>, [[null,<botania:storage>,null],[<botania:storage>,<contenttweaker:summon_tier_2_empty> | <contenttweaker:summon_tier_2>,<botania:storage>],[null,<botania:storage>,null]]);
recipes.addShaped("contenttweaker_summon_tier_4_empty", <contenttweaker:summon_tier_4_empty>, [[<botania:manaresource:9>,<botania:elfglass>,<botania:manaresource:9>],[<botania:elfglass>,<contenttweaker:summon_tier_3_empty> | <contenttweaker:summon_tier_3>,<botania:elfglass>],[<botania:manaresource:9>,<botania:elfglass>,<botania:manaresource:9>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Draconic Evolution ---
// - Tiny Chaos Shard
recipes.addShapeless("draconicevolution_tiny_chaos_shard", <draconicevolution:chaos_shard:3>, [<oresabovediamonds:black_opal>, <draconicevolution:awakened_core>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Ex Nihilo Creatio ---
recipes.addShapeless("crushed_endstone_from_endstone_dust", <exnihilocreatio:block_endstone_crushed>, [<nuclearcraft:gem_dust:11>,<nuclearcraft:gem_dust:11>,<nuclearcraft:gem_dust:11>,<nuclearcraft:gem_dust:11>]);
recipes.addShapeless("crushed_endstone_to_endstone_dust", <nuclearcraft:gem_dust:11> * 4, [<exnihilocreatio:block_endstone_crushed>]);
recipes.addShapeless("pebbles_from_cobble", <exnihilocreatio:item_pebble> * 4, [<minecraft:cobblestone>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Future MC ---
// - Bamboo swap
recipes.addShapeless("biomes_bamboo_to_futuremc", <futuremc:bamboo>, [<biomesoplenty:bamboo>]);
recipes.addShapeless("futuremc_bamboo_to_biomes", <biomesoplenty:bamboo>, [<futuremc:bamboo>]);

// - Honey Bottle
recipes.addShapeless("honey_bottle", <futuremc:honey_bottle>, [<minecraft:glass_bottle>,<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>,<harvestcraft:honeycombitem>]);

// - Berries into red Dye
recipes.addShapeless("berries_to_red_dye", <thermalfoundation:dye:1>, [<futuremc:sweet_berries>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- General ---
// - Elytra
recipes.addShaped("minecraft_elytra", <minecraft:elytra>, [[<contenttweaker:elytra_wing>, <minecraft:ender_pearl>, <contenttweaker:elytra_wing>]]);

// - Ice
recipes.addShaped("minecraft_ice", <minecraft:ice>, [[<minecraft:snowball>,<minecraft:water_bucket>.transformReplace(<minecraft:bucket>),<minecraft:snowball>], [<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>]]);

// - Minecraft Sign to MoarSign and back
recipes.addShapeless("moar_sign_to_minecraft_sign", <minecraft:sign>, [<moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"})]);
recipes.addShapeless("minecraft_sign_to_moar_sign", <moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"}), [<minecraft:sign>]);

// - Saddle
recipes.addShaped("minecraft_saddle", <minecraft:saddle>, [[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>], [<ore:string>,<minecraft:leather>,<ore:string>], [<minecraft:leather>,null,<minecraft:leather>]]);

// - Firework Rockets
recipes.addShapeless("minecraft_firework_rocket_1", <minecraft:fireworks>.withTag({Fireworks: {Flight: 1 as byte}}), [<minecraft:paper>,<minecraft:gunpowder>]);
recipes.addShapeless("minecraft_firework_rocket_2", <minecraft:fireworks>.withTag({Fireworks: {Flight: 2 as byte}}), [<minecraft:paper>,<minecraft:gunpowder>,<minecraft:gunpowder>]);
recipes.addShapeless("minecraft_firework_rocket_3", <minecraft:fireworks>.withTag({Fireworks: {Flight: 3 as byte}}), [<minecraft:paper>,<minecraft:gunpowder>,<minecraft:gunpowder>,<minecraft:gunpowder>]);

// - Torch
recipes.addShaped("minecraft_torch_biomes_river_cane", <minecraft:torch> * 4, [[<minecraft:coal>],[<biomesoplenty:plant_1:5>]]);
recipes.addShaped("minecraft_torch_biomes_bamboo", <minecraft:torch> * 4, [[<minecraft:coal>],[<biomesoplenty:bamboo>]]);
recipes.addShaped("minecraft_torch_futuremc_bamboo", <minecraft:torch> * 4, [[<minecraft:coal>],[<futuremc:bamboo>]]);

// - Ice and Fire and Metallurgy Silver Armor back and forth
recipes.addShapeless("ice_silver_helmet_to_metallurgy_silver_helmet", <metallurgy:silver_helmet>, [<iceandfire:armor_silver_metal_helmet>]);
recipes.addShapeless("ice_silver_chestplate_to_metallurgy_silver_chestplate", <metallurgy:silver_chestplate>, [<iceandfire:armor_silver_metal_chestplate>]);
recipes.addShapeless("ice_silver_leggings_to_metallurgy_silver_leggings", <metallurgy:silver_leggings>, [<iceandfire:armor_silver_metal_leggings>]);
recipes.addShapeless("ice_silver_boots_to_metallurgy_silver_boots", <metallurgy:silver_boots>, [<iceandfire:armor_silver_metal_boots>]);
recipes.addShapeless("metallurgy_silver_helmet_to_ice_silver_helmet", <iceandfire:armor_silver_metal_helmet>, [<metallurgy:silver_helmet>]);
recipes.addShapeless("metallurgy_silver_chestplate_to_ice_silver_chestplate", <iceandfire:armor_silver_metal_chestplate>, [<metallurgy:silver_chestplate>]);
recipes.addShapeless("metallurgy_silver_leggings_to_ice_silver_leggings", <iceandfire:armor_silver_metal_leggings>, [<metallurgy:silver_leggings>]);
recipes.addShapeless("metallurgy_silver_boots_to_ice_silver_boots", <iceandfire:armor_silver_metal_boots>, [<metallurgy:silver_boots>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Magic Feather ---
recipes.addShaped("magic_feather_elytra_bauble", <magicfeather:magicfeather>, [[<minecraft:gold_ingot>,<minecraft:feather>,<minecraft:gold_ingot>],[<minecraft:gold_ingot>,<colytra:elytra_bauble>,<minecraft:gold_ingot>],[<minecraft:gold_ingot>,<minecraft:feather>,<minecraft:gold_ingot>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Pam's Harvestcraft ---
// - Wax Comb
recipes.addShapeless("pams_wax_comb", (<harvestcraft:beeswaxitem> * 3), [<harvestcraft:waxcombitem>]);
recipes.addShapeless("pams_royal_jelly", <harvestcraft:royaljellyitem>, [<minecraft:gold_nugget>, <futuremc:honey_bottle>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Scaling health ---
// - Cursed Heart
recipes.addShapeless("scalinghealth_cursed_heart", <scalinghealth:difficultychanger:1>, [<scalinghealth:difficultychanger>]);
recipes.addShaped("scalinghealth_cursed_heart_with_shards", <scalinghealth:difficultychanger:1>, [[null, <scalinghealth:crystalshard>, null],[<scalinghealth:crystalshard>, null, <scalinghealth:crystalshard>],[<scalinghealth:crystalshard>, null, <scalinghealth:crystalshard>]]);

// - Enchanted Heart
recipes.addShapeless("scalinghealth_enchanted_heart", <scalinghealth:difficultychanger>, [<scalinghealth:difficultychanger:1>]);
recipes.addShaped("scalinghealth_enchanted_heart_with_shards", <scalinghealth:difficultychanger>, [[<scalinghealth:crystalshard>, null, <scalinghealth:crystalshard>],[<scalinghealth:crystalshard>, null, <scalinghealth:crystalshard>],[null, <scalinghealth:crystalshard>, null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Vanilla Furnace ---
//furnace.addRecipe(IItemStack output, IIngredient input);
furnace.addRecipe(<iceandfire:silver_ingot>, <iceandfire:silver_ore>);
//furnace.addRecipe(<fluxnetworks:flux>, <minecraft:redstone>);
furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>);
furnace.addRecipe(<tconstruct:ingots:0>, <contenttweaker:cobalt_ore_stone>, 1.0);
furnace.addRecipe(<tconstruct:ingots:1>, <contenttweaker:ardite_ore_stone>, 1.0);

// - Compressed Cobblestone into Stone
furnace.addRecipe(<minecraft:stone>*9, <extrautils2:compressedcobblestone>, 0.9);
furnace.addRecipe(<minecraft:stone>*64, <extrautils2:compressedcobblestone:1>, 2.4);
furnace.addRecipe(<minecraft:stonebrick>*64, <extrautils2:compressedcobblestone:2>, 5.0);

// - Compressed Sand into Glass
furnace.addRecipe(<minecraft:glass>*9, <extrautils2:compressedsand>, 1.5);
furnace.addRecipe(<minecraft:glass>*64, <extrautils2:compressedsand:1>, 4.0);

// - Compressed Netherrack into Nether Bricks
furnace.addRecipe(<minecraft:netherbrick>*9, <extrautils2:compressednetherrack>, 0.75);
furnace.addRecipe(<minecraft:netherbrick>*64, <extrautils2:compressednetherrack:1>, 1.5);
furnace.addRecipe(<minecraft:nether_brick>*64, <extrautils2:compressednetherrack:2>, 4.0);

// - Porcelain plate from unfired porcelain plate
furnace.addRecipe(<contenttweaker:porcelain_plate>, <contenttweaker:unfired_porcelain_plate>);

// - Porcelain Crystal from unfired porcelain crystal
furnace.addRecipe(<contenttweaker:porcelain_crystal>, <contenttweaker:unfired_porcelain_crystal>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Vanilla Recipes ---
// - Leather armor into Leather
recipes.addShapeless("leather_helmet_to_leather", <minecraft:leather> * 5, [<minecraft:leather_helmet>, <ore:toolShears>.transformDamage(3)]);
recipes.addShapeless("leather_chestplate_to_leather", <minecraft:leather> * 8, [<minecraft:leather_chestplate>, <ore:toolShears>.transformDamage(3)]);
recipes.addShapeless("leather_pants_to_leather", <minecraft:leather> * 7, [<minecraft:leather_leggings>, <ore:toolShears>.transformDamage(3)]);
recipes.addShapeless("leather_boots_to_leather", <minecraft:leather> * 4, [<minecraft:leather_boots>, <ore:toolShears>.transformDamage(3)]);


//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Xnet ---
// Controller
recipes.addShapeless("xnet_controller_reset", <xnet:controller>, [<xnet:controller>]);

// Router
recipes.addShapeless("xnet_router_reset", <xnet:router>, [<xnet:router>]);

// Wireless Router
recipes.addShapeless("xnet_wireless_router_reset", <xnet:wireless_router>, [<xnet:wireless_router>]);

// Connector
recipes.addShapeless("xnet_connector_reset0", <xnet:connector:0>, [<xnet:connector:0>]);
recipes.addShapeless("xnet_connector_reset2", <xnet:connector:1>, [<xnet:connector:1>]);
recipes.addShapeless("xnet_connector_reset3", <xnet:connector:2>, [<xnet:connector:2>]);
recipes.addShapeless("xnet_connector_reset4", <xnet:connector:3>, [<xnet:connector:3>]);
recipes.addShapeless("xnet_connector_reset5", <xnet:connector:4>, [<xnet:connector:4>]);

// Advanced Connector
recipes.addShapeless("xnet_advanced_connector_reset0", <xnet:advanced_connector:0>, [<xnet:advanced_connector:0>]);
recipes.addShapeless("xnet_advanced_connector_reset1", <xnet:advanced_connector:1>, [<xnet:advanced_connector:1>]);
recipes.addShapeless("xnet_advanced_connector_reset2", <xnet:advanced_connector:2>, [<xnet:advanced_connector:2>]);
recipes.addShapeless("xnet_advanced_connector_reset3", <xnet:advanced_connector:3>, [<xnet:advanced_connector:3>]);

//--------------------------------------------------------------------------------------

print("Initialized 'add'");