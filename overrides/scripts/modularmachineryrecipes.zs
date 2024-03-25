#Name: nuclearcraft.zs
#Author: Keaft

import mods.modularmachinery.RecipeBuilder;
 
//mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime, int sortingPriority);
var clipslvl1 = RecipeBuilder.newBuilder("dirt_harvester_clips", "dirt_harvester_lvl_1", 80);
clipslvl1.addItemOutput(<contenttweaker:clip>);
clipslvl1.build();

var clipslvl2 = RecipeBuilder.newBuilder("dirt_harvester_clips2", "dirt_harvester_lvl_2", 80);
clipslvl2.addItemOutput(<contenttweaker:clip> * 2);
clipslvl2.build();