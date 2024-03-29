#Name: bloodmagic.zs
#Author: Keaft

import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;

print("Initializing 'bloodmagic'...");

// Blood Altar
//mods.bloodmagic.BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate);
//mods.bloodmagic.BloodAltar.removeRecipe(IItemStack input);

// Bound
mods.bloodmagic.BloodAltar.removeRecipe(<tconevo:material>);
mods.bloodmagic.BloodAltar.addRecipe(<tconevo:metal:25>, <minecraft:iron_ingot>, 2, 500, 20, 10);

// Demon Will Crystal Perfected
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:demon_will_crystal_perfected>, <bloodmagic:item_demon_crystal>, 4, 2000, 40, 40);

// Tartaric or HellFire Forge
//mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
//mods.bloodmagic.TartaricForge.removeRecipe(IItemStack[] inputs);

// Sentient
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<tconevo:material>]);
mods.bloodmagic.TartaricForge.addRecipe(<tconevo:metal:30>, [<contenttweaker:demon_will_crystal_perfected>,<tconevo:metal:25>], 16, 6);

print("Initialized 'bloodmagic'");