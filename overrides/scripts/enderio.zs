#Name: enderio.zs
#Author: Keaft

import mods.enderio.Enchanter;
import mods.enderio.SagMill;

print("Initializing 'enderio.zs'...");

// --- Enchanter ---
//mods.enderio.Enchanter.addRecipe(IEnchantmentDefinition output, IIngredient input, int amountPerLevel, double costMultiplier);
//mods.enderio.Enchanter.removeRecipe(IEnchantmentDefinition output);

// - Auto-smelt adjustment
mods.enderio.Enchanter.removeRecipe(<enchantment:endercore:autosmelt>);
mods.enderio.Enchanter.addRecipe(<enchantment:endercore:autosmelt>, <thermalfoundation:material:1024>, 1, 15);

// -- Alloy --
//mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp);

// - Stellar Alloy
mods.enderio.AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3> * 4, [<enderio:item_alloy_ingot:8> * 2, <minecraft:nether_star>]);

// - Steel Ingot
mods.enderio.AlloySmelter.addRecipe(<metallurgy:steel_ingot>, [<minecraft:coal> * 4, <minecraft:iron_ingot>]);
mods.enderio.AlloySmelter.addRecipe(<metallurgy:steel_ingot>, [<nuclearcraft:ingot:8> * 4, <minecraft:iron_ingot>]);

// --- Sag Mill ---
//mods.enderio.SagMill.addRecipe(IItemStack[] output, float[] chances, IIngredient input, @Optional String bonusType, @Optional int energyCost, @Optional float[] xp);
//mods.enderio.SagMill.removeRecipe(IItemStack input);

// - Heart Dust
mods.enderio.SagMill.addRecipe([<scalinghealth:heartdust>], [100], <scalinghealth:crystalshard>, "MULTIPLY_OUTPUT");
mods.enderio.SagMill.addRecipe([<scalinghealth:heartdust> * 4], [100], <scalinghealth:crystalore>, "MULTIPLY_OUTPUT");

// Cobblestone
mods.enderio.SagMill.removeRecipe(<minecraft:cobblestone>);
mods.enderio.SagMill.addRecipe([<minecraft:gravel>, <minecraft:gravel>, <minecraft:sand>, <minecraft:flint>], [1.0, 0.3, 0.1, 0.05], <ore:cobblestone>, "MULTIPLY_OUTPUT");

// Gravel
mods.enderio.SagMill.removeRecipe(<minecraft:gravel>);
mods.enderio.SagMill.addRecipe([<minecraft:sand>, <minecraft:sand>, <minecraft:flint>], [1.0, 0.3, 0.3], <ore:gravel>, "MULTIPLY_OUTPUT");

// Sand
mods.enderio.SagMill.removeRecipe(<minecraft:sand>);
mods.enderio.SagMill.addRecipe([<exnihilocreatio:block_dust>, <nuclearcraft:gem:6>, <nuclearcraft:gem:6>], [1.0, 1.0, 0.1], <ore:sand>, "MULTIPLY_OUTPUT");

// Endstone
mods.enderio.SagMill.addRecipe([<exnihilocreatio:block_endstone_crushed>, <nuclearcraft:gem_dust:11>, <nuclearcraft:gem_dust:11>], [1.0, 0.2, 0.05], <minecraft:end_stone>, "MULTIPLY_OUTPUT");

// Obsidian
mods.enderio.SagMill.removeRecipe(<minecraft:obsidian>);
mods.enderio.SagMill.addRecipe([<contenttweaker:obsidian_gravel>, <thermalfoundation:material:770>, <thermalfoundation:material:770>], [1.0, 0.2, 0.05], <minecraft:obsidian>, "MULTIPLY_OUTPUT");

print("Initialized 'enderio'");