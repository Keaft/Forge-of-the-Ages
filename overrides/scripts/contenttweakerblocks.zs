#loader contenttweaker
#Name: contenttweakerblocks.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;

print("Initializing 'contenttweakerblocks'...");

// - Cobalt Ore Stone
var cobaltore = VanillaFactory.createBlock("cobalt_ore_stone",<blockmaterial:rock>);
cobaltore.setBlockHardness(10.0);
cobaltore.setToolClass("pickaxe");
cobaltore.setToolLevel(4);
cobaltore.register();

// - Ardite Ore Stone
var arditeore = VanillaFactory.createBlock("ardite_ore_stone",<blockmaterial:rock>);
arditeore.setBlockHardness(10.0);
arditeore.setToolClass("pickaxe");
arditeore.setToolLevel(4);
arditeore.register();

print("Initialized 'contenttweakerblocks'");