#Name: add.zs
#Author: Keaft
#priority 1

print("Initializing 'add'...");
//--------------------------------------------------------------------------------------
//Adding recipes
//recipes.addShaped(name,output,inputs,function,action);
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Bountiful Baubles ---
// - Bezoar
recipes.addShapeless("bountifulbaubles_bezoar", <bountifulbaubles:trinketbezoar>, [<minecraft:fermented_spider_eye>,<mysticalagriculture:charm:4>]);

// - Broken Heart
recipes.addShapeless("bountifulbaubles_broken_heart", <bountifulbaubles:trinketbrokenheart>, [<draconicevolution:dragon_heart>,<mysticalagriculture:charm:6>,<minecraft:totem_of_undying>]);

// - Forbidden Fruit
recipes.addShaped("bountifulbaubles_forbidden_fruit", <bountifulbaubles:trinketapple>, [[<minecraft:emerald_block>,<minecraft:emerald_block>,<minecraft:emerald_block>], [<mysticalagradditions:insanium:2>,<minecraft:golden_apple>,<mysticalagradditions:insanium:2>], [<minecraft:gold_block>,<minecraft:gold_block>,<minecraft:gold_block>]]);

// - Ring of Overclocking
recipes.addShaped("bountifulbaubles_ring_of_overclocking", <bountifulbaubles:ringoverclocking>, [[<mysticalagriculture:crafting:3>,<mysticalagriculture:charm:9>,<mysticalagriculture:crafting:3>], [<mysticalagriculture:crafting:3>,<atum:loot_silver_ring>,<mysticalagriculture:crafting:3>], [<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>,<mysticalagriculture:crafting:3>]]);

// - Vitamins
recipes.addShaped("bountifulbaubles_vitamins", <bountifulbaubles:trinketvitamins>, [[null,<minecraft:prismarine_crystals> * 4,null], [null,<enderio:item_soul_vial>,null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- The Beneath ---
// - Beneath Teleporter
recipes.addShaped("beneath_teleporter", <beneath:teleporterbeneath>, [[<extrautils2:compressedcobblestone:2>,<extrautils2:compressedcobblestone:2>,<extrautils2:compressedcobblestone:2>], [<extrautils2:compressedcobblestone:2>,<extrautils2:compressedcobblestone:3>,<extrautils2:compressedcobblestone:2>], [<extrautils2:compressedcobblestone:2>,<extrautils2:compressedcobblestone:2>,<extrautils2:compressedcobblestone:2>]]);

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

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Draconic Evolution ---
// - Tiny Chaos Shard
recipes.addShaped("draconicevolution_tiny_chaos_shard", <draconicevolution:chaos_shard:3>, [[null,<mysticalagradditions:insanium:2>,null], [<mysticalagradditions:insanium:2>,<oresabovediamonds:black_opal>,<mysticalagradditions:insanium:2>], [null,<mysticalagradditions:insanium:2>,null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extra Utilities 2 ---
//recipes.addShaped("extrautils2_transfer_node_fluids", <extrautils2:grocket:2> * 4, [[<ore:dustRedstone>, <extrautils2:pipe>, <ore:dustRedstone>], [<ore:stone>, <minecraft:bucket:*>, <ore:stone>]]);

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

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Vanilla Furnace ---
furnace.addRecipe(<iceandfire:silver_ingot>, <iceandfire:silver_ore>);
//furnace.addRecipe(<fluxnetworks:flux>, <minecraft:redstone>);
furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>);
furnace.addRecipe(<tconstruct:ingots:0>, <contenttweaker:cobalt_ore_stone>, 1.0);
furnace.addRecipe(<tconstruct:ingots:1>, <contenttweaker:ardite_ore_stone>, 1.0);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Xnet ---
// Controller
recipes.addShapeless("xnet_controller_reset", <xnet:controller>, [<xnet:controller>]);

// Router
recipes.addShapeless("xnet_router_reset", <xnet:router>, [<xnet:router>]);

// Wireless Router
recipes.addShapeless("xnet_wireless_router_reset", <xnet:wireless_router>, [<xnet:wireless_router>]);

//--------------------------------------------------------------------------------------

print("Initialized 'add'");