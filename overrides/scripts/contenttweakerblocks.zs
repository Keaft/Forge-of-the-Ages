#loader contenttweaker
#Name: contenttweakerblocks.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;

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

// - Obsidian Gravel
var obsidiangravel = VanillaFactory.createBlock("obsidian_gravel",<blockmaterial:sand>);
obsidiangravel.setBlockHardness(5.0);
obsidiangravel.setToolClass("shovel");
obsidiangravel.setBlockSoundType(<soundtype:sand>);
obsidiangravel.setToolLevel(4);
obsidiangravel.register();

// - Compressed Obsidian
var compressedobsidian = VanillaFactory.createBlock("compressed_obsidian",<blockmaterial:rock>);
compressedobsidian.setBlockHardness(10.0);
compressedobsidian.setToolClass("pickaxe");
compressedobsidian.setBlockSoundType(<soundtype:stone>);
compressedobsidian.setToolLevel(4);
compressedobsidian.register();

// - Compressed Obsidian Gravel
var compressedobsidiangravel = VanillaFactory.createBlock("compressed_obsidian_gravel",<blockmaterial:sand>);
compressedobsidiangravel.setBlockHardness(5.0);
compressedobsidiangravel.setToolClass("shovel");
compressedobsidiangravel.setBlockSoundType(<soundtype:sand>);
compressedobsidiangravel.setToolLevel(4);
compressedobsidiangravel.register();

// - Spore Endstone
var sporeEndstone = VanillaFactory.createBlock("spore_endstone",<blockmaterial:rock>);
sporeEndstone.setBlockHardness(5.0);
sporeEndstone.setToolClass("pickaxe");
sporeEndstone.setToolLevel(3);
sporeEndstone.register();

// - Ender Corrupter
var enderCorrupter = VanillaFactory.createBlock("ender_corrupter",<blockmaterial:rock>);
enderCorrupter.setBlockHardness(5.0);
enderCorrupter.setToolClass("pickaxe");
enderCorrupter.setToolLevel(3);
enderCorrupter.register();

print("Initialized 'contenttweakerblocks'");