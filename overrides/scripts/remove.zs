#Name: remove.zs
#Author: Keaft
#priority 2
print("Initializing 'remove'...");

//***********************************************************************************************************
//Client specific removal, good for making things removed and hidden from jei
//***********************************************************************************************************

//--------------------------------------------------------------------------------------

// --- Applied Energistics 2 ---
// - Gear
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Apotheosis ---
// - Hellshelf
mods.jei.JEI.removeAndHide(<apotheosis:hellshelf>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- CoFH Core ---
// - Smelting
mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 52}]}));

// - Soulbound I
mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 53}]}));

// - Soulbound II
mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 53}]}));

// - Soulbound III
mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 53}]}));

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Corail Tombstone ---
// - Tombstone Soulbound Enchanted Book
mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 28}]}));

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Draconic Evolution ---
mods.jei.JEI.removeAndHide(<draconicevolution:dislocator_pedestal>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- EnderIO ---
// - Powered spawner in favor of mob farming through Woot.
mods.jei.JEI.removeAndHide(<enderio:block_powered_spawner>);

// - Glider and wings
mods.jei.JEI.removeAndHide(<enderio:item_material:7>);
mods.jei.JEI.removeAndHide(<enderio:item_material:6>);
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}));
mods.jei.JEI.removeAndHide(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide", "enderio:enabled": 1 as byte}));

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Ex Nihilo: Creatio & Ex Compressum
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:1>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:2>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:3>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:4>);
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:9>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_seed_cactus>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_seed_sugarcane>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_seed_carrot>);
mods.jei.JEI.removeAndHide(<exnihilocreatio:item_seed_potato>);
mods.jei.JEI.removeAndHide(<excompressum:auto_sieve>);
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extra Utilities 2 ---
// - Deep Dark portal in favor of using the beneath.
mods.jei.JEI.removeAndHide(<extrautils2:teleporter:1>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Metallurgy 4 Reforged ---
// - Metal Detector
mods.jei.JEI.removeAndHide(<metallurgy:ore_detector>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Mekanism ---
// - Item transport done through other mods
// mods.jei.JEI.removeAndHide(<mekanism:transmitter:3>);
// - Jetpack
// mods.jei.JEI.removeAndHide(<mekanism:jetpack>);
// mods.jei.JEI.removeAndHide(<mekanism:armoredjetpack>);
// - Reactor
// mods.jei.JEI.removeAndHide(<mekanismgenerators:reactorglass>);
// mods.jei.JEI.removeAndHide(<mekanismgenerators:reactor>);
// mods.jei.JEI.removeAndHide(<mekanismgenerators:reactor:1>);
// mods.jei.JEI.removeAndHide(<mekanismgenerators:reactor:2>);
// mods.jei.JEI.removeAndHide(<mekanismgenerators:reactor:3>);
// - Flame Thrower
// mods.jei.JEI.removeAndHide(<mekanism:flamethrower>);
// - Teleporter
// mods.jei.JEI.removeAndHide(<mekanism:portableteleporter>);
// mods.jei.JEI.removeAndHide(<mekanism:basicblock:7>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Open Blocks ---
// - Glider wing
mods.jei.JEI.removeAndHide(<openblocks:generic>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Pam's Harvestcraft ---
// - Garlic Steak
mods.jei.JEI.removeAndHide(<harvestcraft:garlicsteakitem>);

// - Pork Rinds
mods.jei.JEI.removeAndHide(<harvestcraft:porkrindsitem>);

// - Cracklins
mods.jei.JEI.removeAndHide(<harvestcraft:cracklinsitem>);

// - BBQ jackfruit
mods.jei.JEI.removeAndHide(<harvestcraft:bbqjackfruititem>);
// - Lychee tea
mods.jei.JEI.removeAndHide(<harvestcraft:lycheeteaitem>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Scaling Health ---
// - Heart Container
mods.jei.JEI.removeAndHide(<scalinghealth:heartcontainer>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Thermal Expansion ---
// - Morbs
mods.jei.JEI.removeAndHide(<thermalexpansion:morb>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Tinkers Construct ---
// - Unobtanium
mods.jei.JEI.removeAndHide(<tcomplement:chisel_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:pick_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:axe_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:broad_axe_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:sword_blade>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:large_sword_blade>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:hammer_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:excavator_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:kama_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:scythe_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:pan_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:sign_head>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:tool_rod>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:large_plate>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:sharpening_kit>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<tconstruct:shard>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<conarm:polishing_kit>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<conarm:helmet_core>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<conarm:armor_trim>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<conarm:armor_plate>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<conarm:chest_core>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<conarm:leggings_core>.withTag({Material: "unobtanium_mat"}));
mods.jei.JEI.removeAndHide(<conarm:boots_core>.withTag({Material: "unobtanium_mat"}));
//--------------------------------------------------------------------------------------

//***********************************************************************************************************
//Server specific removal 
//***********************************************************************************************************

//--------------------------------------------------------------------------------------

// --- Applied Energistics 2 ---
// - Gear
// recipes.remove(<appliedenergistics2:material:40>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Apotheosis ---
// - Hellshelf
//recipes.remove(<apotheosis:hellshelf>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Draconic Evolution ---
// recipes.remove(<draconicevolution:dislocator_pedestal>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- EnderIO ---
// - Powered spawner in favor of mob farming through Woot.
//recipes.remove(<enderio:block_powered_spawner>);

// - Glider and wings
//recipes.remove(<enderio:item_material:7>);
//recipes.remove(<enderio:item_material:6>);
//recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}));
//recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide", "enderio:enabled": 1 as byte}));

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extra Utilities 2 ---
// - Deep Dark portal in favor of using the beneath.
//recipes.remove(<extrautils2:teleporter:1>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Ex Nihilo: Creatio & Ex Compressum
//recipes.remove(<excompressum:compressed_block:1>);
//recipes.remove(<excompressum:compressed_block:2>);
//recipes.remove(<excompressum:compressed_block:3>);
//recipes.remove(<excompressum:compressed_block:4>);
//recipes.remove(<excompressum:compressed_block:9>);
//recipes.remove(<exnihilocreatio:item_seed_cactus>);
//recipes.remove(<exnihilocreatio:item_seed_sugarcane>);
//recipes.remove(<exnihilocreatio:item_seed_carrot>);
//recipes.remove(<exnihilocreatio:item_seed_potato>);
//recipes.remove(<excompressum:auto_sieve>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Metallurgy 4 Reforged ---
// - Metal Detector
// recipes.remove(<metallurgy:ore_detector>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Mekanism ---
// - Item transport done through other mods
//recipes.remove(<mekanism:transmitter:3>);
// - Jetpack
// recipes.remove(<mekanism:jetpack>);
// recipes.remove(<mekanism:armoredjetpack>);
// - Reactor
// recipes.remove(<mekanismgenerators:reactorglass>);
// recipes.remove(<mekanismgenerators:reactor>);
// recipes.remove(<mekanismgenerators:reactor:1>);
// recipes.remove(<mekanismgenerators:reactor:2>);
// recipes.remove(<mekanismgenerators:reactor:3>);
// - Flame Thrower
// recipes.remove(<mekanism:flamethrower>);
// - Teleporter
// recipes.remove(<mekanism:portableteleporter>);
// recipes.remove(<mekanism:basicblock:7>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Mystical Agriculture ---
// - All Paxels except SUpremium for progression purposes
//recipes.remove(<mysticalagradditions:inferium_paxel>);
//recipes.remove(<mysticalagradditions:prudentium_paxel>);
//recipes.remove(<mysticalagradditions:intermedium_paxel>);
//recipes.remove(<mysticalagradditions:superium_paxel>);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Open Blocks ---
// - Glider wing
//recipes.remove(<openblocks:generic>);

//--------------------------------------------------------------------------------------

//***********************************************************************************************************
//Both Client and Server recipe removal 
//***********************************************************************************************************

//--------------------------------------------------------------------------------------

// --- Aquaculture ---
// - Saddle
recipes.removeByRecipeName("aquaculture:leather_from_boots");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Biomes O' Plenty ---
// - Honeycomb Blocks
recipes.removeByRecipeName("biomesoplenty:honeycomb_block");
recipes.removeByRecipeName("biomesoplenty:filled_honeycomb_block");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Dank Null ---
// - MK II
recipes.removeByRecipeName("danknull:dank_null_1");
recipes.removeByRecipeName("danknull:dank_null_2");
recipes.removeByRecipeName("danknull:dank_null_3");
recipes.removeByRecipeName("danknull:dank_null_4");
recipes.removeByRecipeName("danknull:dank_null_5");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Ender IO ---
// - Enhanced Alloy Smelter
recipes.removeByRecipeName("enderio:enhanced_alloy_smelter");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extra Utilities 2 ---

// - Angel Ring, such that the base one is craftable, and the customizable ones use the base.
recipes.removeByRecipeName("extrautils2:angel_ring_1");
recipes.removeByRecipeName("extrautils2:angel_ring_2");
recipes.removeByRecipeName("extrautils2:angel_ring_3");
recipes.removeByRecipeName("extrautils2:angel_ring_4");
recipes.removeByRecipeName("extrautils2:angel_ring_5");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Future MC ---
recipes.removeByRecipeName("futuremc:else/stick_from_bamboo");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Harvestcraft ---
recipes.removeByRecipeName("harvestcraft:freshwateritem_listallwater");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- MoarSigns ---
// - Blutonium sign for being errored out
recipes.removeByRecipeName("moarsigns:sign_bigreactors_blutonium");
recipes.remove(<moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/blutonium_sign"}));

// - Cyanite sign for being errored out
recipes.removeByRecipeName("moarsigns:sign_bigreactors_cyanite");
recipes.remove(<moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/cyanite_sign"}));

// - Graphite sign for being errored out
recipes.removeByRecipeName("moarsigns:sign_bigreactors_graphite");
recipes.remove(<moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/graphite_sign"}));

// - Ludicrite sign for being errored out
recipes.removeByRecipeName("moarsigns:sign_bigreactors_ludicrite");
recipes.remove(<moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/ludicrite_sign"}));

// - Yellorium sign for being errored out
recipes.removeByRecipeName("moarsigns:sign_bigreactors_yellorium");
recipes.remove(<moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/yellorium_sign"}));

// - Steel sign for being errored out
recipes.removeByRecipeName("moarsigns:sign_bigreactors_steel");
recipes.remove(<moarsigns:moar_sign:1>.withTag({SignTexture: "bigreactors/steel_sign"}));

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Natura ---
// - Extraneous string
recipes.removeByRecipeName("natura:common/string");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Scaling Health ---
// - Heart Container
recipes.removeByRecipeName("scalinghealth:heart_container");
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Seasons ---
recipes.removeByRecipeName("sereneseasons:greenhouse_glass");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Tinkers Construct ---
// Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/fallback");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Tinker I/O ---
// - Base Upgrade with aluminum
recipes.removeShaped(<tinker_io:upg>, [[<minecraft:dye:4>,<minecraft:dye:4>,<minecraft:dye:4>], [<ore:ingotAluminum>,<minecraft:paper>,<ore:ingotAluminum>], [<minecraft:dye:4>,<minecraft:dye:4>,<minecraft:dye:4>]]);

//--------------------------------------------------------------------------------------

// --- Vanilla Furnace ---
// furnace.remove(IIngredient output)
//Slime Crystals, handled through contenttweaker and 
furnace.remove(<tconstruct:materials:9>);
furnace.remove(<tconstruct:materials:10>);
furnace.remove(<tconstruct:materials:11>);
furnace.remove(<tconevo:material:1>);

print("Initialized 'remove'");