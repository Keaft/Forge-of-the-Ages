#Name: tinker.zs
#Author: Keaft

import mods.iceandfire.recipes;

print("Initializing 'iceandfire'...");

// - Remove
// mods.iceandfire.recipes.removeFireDragonForgeRecipe(<output>);
// mods.iceandfire.recipes.removeIceDragonForgeRecipe(<output>);

mods.iceandfire.recipes.removeFireDragonForgeRecipe(<iceandfire:dragonsteel_fire_ingot>);
mods.iceandfire.recipes.removeIceDragonForgeRecipe(<iceandfire:dragonsteel_ice_ingot>);

// --- Ice and Fire Dragon Forge ---
// mods.iceandfire.recipes.addFireDragonForgeRecipe(<input>, <bloodInput>, <output>);
// mods.iceandfire.recipes.addIceDragonForgeRecipe(<input>, <bloodInput>, <output>);

mods.iceandfire.recipes.addFireDragonForgeRecipe(<minecraft:lava_bucket>, <minecraft:lava_bucket>, <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}) * 2);
mods.iceandfire.recipes.addFireDragonForgeRecipe(<botania:manaresource:7>, <iceandfire:fire_dragon_blood>, <iceandfire:dragonsteel_fire_ingot>);
mods.iceandfire.recipes.addIceDragonForgeRecipe(<botania:manaresource:7>, <iceandfire:ice_dragon_blood>, <iceandfire:dragonsteel_ice_ingot>);

print("Initialized 'iceandfire'");