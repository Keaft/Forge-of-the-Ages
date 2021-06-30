#Name: enderio.zs
#Author: Keaft

import mods.enderio.Enchanter;
import mods.enderio.SagMill;

print("Initializing 'enderio.zs'...");

// --- Enchanter ---
//mods.enderio.Enchanter.addRecipe(IEnchantmentDefinition output, IIngredient input, int amountPerLevel, double costMultiplier);
//mods.enderio.Enchanter.removeRecipe(IEnchantmentDefinition output);

// - Auto-smelt adjustment
//mods.enderio.Enchanter.removeRecipe(<enchantment:endercore:autosmelt>);
//mods.enderio.Enchanter.addRecipe(<enchantment:endercore:autosmelt>, <thermalfoundation:material:1024>, 1, 15);

// --- Sag Mill ---
//mods.enderio.SagMill.addRecipe(IItemStack[] output, float[] chances, IIngredient input, @Optional String bonusType, @Optional int energyCost, @Optional float[] xp);
//mods.enderio.SagMill.removeRecipe(IItemStack input);

print("Initialized 'enderio'");