#Name: mismatch.zs
#Author: Keaft

// Hello fellow modpack maker! What a mess this is... ore dicionary is super awesome right up until it isn't. Heck this work may not even be worth it. :D Update: You know what it was by and large not as worth it. I installed UniDict and washed my hands of it. What remains is the few things not handled by UniDict.

print("Initializing 'mismatch'...");

//--------------------------------------------------------------------------------------
//--------- General fixes in regards to Ore Dictionary and mismatching recipes ---------
//--------------------------------------------------------------------------------------

//----------------------------------- Variable Setup -----------------------------------
// NOTES: Setup as follows
// val {mod acronym}_{nugget as nug, ingot as ing, block as blk, ore as ore}_{material} = {item to replace}
//--------------------------------------------------------------------------------------

// -------- Biomes O' Plenty --------
// - Amethyst
val bop_gem_amethyst = <biomesoplenty:gem>;
val bop_blk_amethyst = <biomesoplenty:gem_block>;
// - Sapphire
val bop_gem_sapphire = <biomesoplenty:gem:6>;
val bop_blk_sapphire = <biomesoplenty:gem_block:6>;

// -------- Extreme Reactors --------
// - Yellorium
val exr_ing_yellorium = <bigreactors:ingotyellorium>;
val exr_ore_yellorite = <bigreactors:oreyellorite>;

// ---------- Ice and Fire ----------
// - Sapphire
val ice_gem_sapphire = <iceandfire:sapphire_gem>;
val ice_blk_sapphire = <iceandfire:sapphire_block>;

// ---------- NetherEx ----------
// - Amethyst
val nex_gem_amethyst = <netherex:amethyst_crystal>;
val nex_blk_amethyst = <netherex:amethyst_block>;

// ---------- Nuclearcraft ----------
// - Uranium
val nuc_ing_uranium = <nuclearcraft:ingot:4>;
//--------------------------------------------------------------------------------------


//---------------------------------- Amethyst changes ----------------------------------
// NOTES: 
//--------------------------------------------------------------------------------------

// -------- Biomes O' Plenty --------
// - Gems to Block
recipes.removeByRecipeName("biomesoplenty:amethyst_block");
recipes.addShaped("biomesoplenty_amethyst_block", bop_blk_amethyst, [[bop_gem_amethyst, bop_gem_amethyst, bop_gem_amethyst], [bop_gem_amethyst, bop_gem_amethyst, bop_gem_amethyst], [bop_gem_amethyst, bop_gem_amethyst, bop_gem_amethyst]]);
// - Block to Gems
recipes.removeByRecipeName("biomesoplenty:amethyst");
recipes.addShapeless("biomesoplenty_amethyst", bop_gem_amethyst * 9, [bop_blk_amethyst]);

// ------------ NetherEx ------------
// - Gems to Block
recipes.removeByRecipeName("netherex:amethyst_block");
recipes.addShaped("netherex_amethyst_block", nex_blk_amethyst, [[nex_gem_amethyst, nex_gem_amethyst, nex_gem_amethyst], [nex_gem_amethyst, nex_gem_amethyst, nex_gem_amethyst], [nex_gem_amethyst, nex_gem_amethyst, nex_gem_amethyst]]);
// - Blocks to Gems
recipes.removeByRecipeName("netherex:amethyst_crystal");
recipes.addShapeless("netherex_amethyst_crystal", nex_gem_amethyst * 9, [nex_blk_amethyst]);

//--------------------------------------------------------------------------------------

//---------------------------------- Sapphire changes ----------------------------------
// NOTES: 
//--------------------------------------------------------------------------------------

// -------- Biomes O' Plenty --------
// - Gems to Block
recipes.removeByRecipeName("biomesoplenty:sapphire_block");
recipes.addShaped("biomesoplenty_sapphire_block", bop_blk_sapphire, [[bop_gem_sapphire, bop_gem_sapphire, bop_gem_sapphire], [bop_gem_sapphire, bop_gem_sapphire, bop_gem_sapphire], [bop_gem_sapphire, bop_gem_sapphire, bop_gem_sapphire]]);
// - Block to Gems
recipes.removeByRecipeName("biomesoplenty:sapphire");
recipes.addShapeless("biomesoplenty_sapphire", bop_gem_sapphire * 9, [bop_blk_sapphire]);

// ---------- Ice and Fire ----------
// - Gems to Block
recipes.removeByRecipeName("iceandfire:sapphire_block");
recipes.addShapeless("iceandfire_sapphire_block", ice_blk_sapphire, [ice_gem_sapphire, ice_gem_sapphire, ice_gem_sapphire, ice_gem_sapphire, ice_gem_sapphire, ice_gem_sapphire, ice_gem_sapphire, ice_gem_sapphire, ice_gem_sapphire]);
//--------------------------------------------------------------------------------------

//---------------------------------- Yellorium changes ---------------------------------
// NOTES: 
//--------------------------------------------------------------------------------------
// -------- Extreme Reactors --------
// - Vanilla Furnace
furnace.remove(nuc_ing_uranium, exr_ore_yellorite);
furnace.addRecipe(exr_ing_yellorium, exr_ore_yellorite, 0.075);
//--------------------------------------------------------------------------------------

print("Initialized 'mismatch'");