#loader contenttweaker
#Name: contenttweakerblocks.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;

print("Initializing 'contenttweakerblocks'...");

// - Cobalt Ore Stone
var cobaltorestone = VanillaFactory.createBlock("cobalt_ore_stone",<blockmaterial:rock>);
cobaltorestone.setBlockHardness(10.0);
cobaltorestone.setToolClass("pickaxe");
cobaltorestone.setToolLevel(4);
cobaltorestone.register();

// - Ardite Ore Stone
var arditeorestone = VanillaFactory.createBlock("ardite_ore_stone",<blockmaterial:rock>);
arditeorestone.setBlockHardness(10.0);
arditeorestone.setToolClass("pickaxe");
arditeorestone.setToolLevel(4);
arditeorestone.register();

// - Cobalt Ore Pitstone
var cobaltorepitstone = VanillaFactory.createBlock("cobalt_ore_pitstone",<blockmaterial:rock>);
cobaltorepitstone.setBlockHardness(10.0);
cobaltorepitstone.setToolClass("pickaxe");
cobaltorepitstone.setToolLevel(4);
cobaltorepitstone.register();

// - Ardite Ore Pitstone
var arditeorepitstone = VanillaFactory.createBlock("ardite_ore_pitstone",<blockmaterial:rock>);
arditeorepitstone.setBlockHardness(10.0);
arditeorepitstone.setToolClass("pickaxe");
arditeorepitstone.setToolLevel(4);
arditeorepitstone.register();

print("Initialized 'contenttweakerblocks'");