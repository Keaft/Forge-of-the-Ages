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
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:demon_will_crystal_perfected>, <bloodmagic:item_demon_crystal>, 4, 2000, 40, 20);

// Weak Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <appliedenergistics2:quartz_block>, 0, 2000, 2, 1);

// Apprentice Blood Orb
mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:diamond>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <appliedenergistics2:quartz_block>, 1, 2000, 2, 1);

// Tartaric or HellFire Forge
//mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
//mods.bloodmagic.TartaricForge.removeRecipe(IItemStack[] inputs);

// Sentient
mods.bloodmagic.TartaricForge.removeRecipe([<bloodmagic:soul_gem>,<tconevo:material>]);
mods.bloodmagic.TartaricForge.addRecipe(<tconevo:metal:30>, [<contenttweaker:demon_will_crystal_perfected>,<tconevo:metal:25>], 16, 6);

// Charging Summon items
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:summon_tier_1>, <contenttweaker:summon_tier_1_empty>, 1, 5000, 10, 5);
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:summon_tier_2>, <contenttweaker:summon_tier_2_empty>, 2, 10000, 60, 30);
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:summon_tier_3>, <contenttweaker:summon_tier_3_empty>, 3, 15000, 80, 40);
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:summon_tier_4>, <contenttweaker:summon_tier_4_empty>, 4, 20000, 100, 50);

print("Initialized 'bloodmagic'");