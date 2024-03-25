#loader contenttweaker
#Name: contenttweakerblocks.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;

static localizeBlocks as string[] = [];
static verbose as bool = true;

print("Initializing 'contenttweakerblocks'...");
// rockBlockConstructor(name, blockHardness, toolLevel);
function rockBlockConstructor(name as string, blockHardness as float = 10.0, toolLevel as int = 4) {
    var blockToMake = VanillaFactory.createBlock(name,<blockmaterial:rock>);
    blockToMake.setBlockHardness(blockHardness);
    blockToMake.setToolClass("pickaxe");
    blockToMake.setBlockSoundType(<soundtype:stone>);
    blockToMake.setToolLevel(toolLevel);
    blockToMake.register();
    if (verbose) {
        localizeBlocks += name;
    }
}

function sandBlockConstructor(name as string, blockHardness as float = 5.0, toolLevel as int = 4) {
    var blockToMake = VanillaFactory.createBlock(name,<blockmaterial:sand>);
    blockToMake.setBlockHardness(blockHardness);
    blockToMake.setToolClass("shovel");
    blockToMake.setBlockSoundType(<soundtype:sand>);
    blockToMake.setToolLevel(toolLevel);
    blockToMake.register();
    if (verbose) {
        localizeBlocks += name;
    }
}

function dirtBlockConstructor(name as string, blockHardness as float = 1.0, toolLevel as int = 1) {
    var blockToMake = VanillaFactory.createBlock(name,<blockmaterial:grass>);
    blockToMake.setBlockHardness(blockHardness);
    blockToMake.setToolClass("shovel");
    blockToMake.setBlockSoundType(<soundtype:ground>);
    blockToMake.setToolLevel(toolLevel);
    blockToMake.register();
    if (verbose) {
        localizeBlocks += name;
    }
}

// - Cobalt Ore Stone
rockBlockConstructor("cobalt_ore_stone");

// - Ardite Ore Stone
rockBlockConstructor("ardite_ore_stone");

// - Cobalt Ore Pitstone
rockBlockConstructor("cobalt_ore_pitstone");

// - Ardite Ore Pitstone
rockBlockConstructor("ardite_ore_pitstone");

// - Obsidian Gravel
sandBlockConstructor("obsidian_gravel");

// - Compressed Obsidian
rockBlockConstructor("compressed_obsidian");

// - Compressed Obsidian Gravel
sandBlockConstructor("compressed_obsidian_gravel");

// - Spore Endstone
rockBlockConstructor("spore_endstone", 5.0, 3);

// - Ender Corrupter
rockBlockConstructor("ender_corrupter", 5.0, 3);

// - Basic Durt
dirtBlockConstructor("basic_durt");

// - Basic Durt Casing
dirtBlockConstructor("basic_durt_casing");

if (verbose) {
    print("The following can be copy pasted for use in lang files:");
    for i in localizeBlocks {
        print("tile.contenttweaker."~i~".name=");
    }
}

print("Initialized 'contenttweakerblocks'");