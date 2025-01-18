#Name: loottweaker.zs
#Author: Keaft

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

print("Initializing 'loottweaker'...");

// LootTable getTable(String tableName)
val simple_dungeon_chests = LootTweaker.getTable("minecraft:chests/simple_dungeon");
// addPool(String poolName, float minRolls, float maxRolls, float minBonusRolls, float maxBonusRolls)
val simple_dungeon_chest_treasure = simple_dungeon_chests.addPool("Extra AE2 Loot", 1, 4, 1, 2);
// addItemEntry(IItemStack iStack, int weight, int quality, LootFunction[] functions, LootCondition[] conditions, @Optional String name)
// addItemEntry(IItemStack stack, int weightIn, int qualityIn, @Optional String name)
// addItemEntry(IItemStack stack, int weightIn, @Optional String name)
simple_dungeon_chest_treasure.addItemEntry(<appliedenergistics2:material>, 50);
simple_dungeon_chest_treasure.addItemEntry(<appliedenergistics2:material:1>, 1);

val abandoned_mineshaft_chests = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");
val abandoned_mineshaft_chest_treasure = abandoned_mineshaft_chests.addPool("Extra AE2 Loot", 1, 4, 1, 2);
abandoned_mineshaft_chest_treasure.addItemEntry(<appliedenergistics2:material>, 50);
abandoned_mineshaft_chest_treasure.addItemEntry(<appliedenergistics2:material:1>, 1);

val cqrepoured_treasure_chests = LootTweaker.getTable("cqrepoured:chests/treasure");
val cqrepoured_chest_treasure = cqrepoured_treasure_chests.addPool("Extra AE2 Loot", 1, 4, 1, 2);
cqrepoured_chest_treasure.addItemEntry(<appliedenergistics2:material>, 50);
cqrepoured_chest_treasure.addItemEntry(<appliedenergistics2:material:1>, 1);

val mineshaft_fishing = LootTweaker.getTable("minecraft:gameplay/fishing/treasure");
val minecraft_fishing_treasure = mineshaft_fishing.addPool("Extra AE2 Loot", 1, 4, 1, 2);
minecraft_fishing_treasure.addItemEntry(<appliedenergistics2:material>, 5);
minecraft_fishing_treasure.addItemEntry(<appliedenergistics2:material:1>, 2);

print("Initialized 'loottweaker'");