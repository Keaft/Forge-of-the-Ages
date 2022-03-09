#Name: events.zs
#loader crafttweaker reloadableevents
#Author: Keaft

import crafttweaker.events.IEventManager;
import crafttweaker.command.ICommandManager;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.formatting.IFormattedText;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IWorld;

print("Initializing 'events'...");

function merge(array1 as string[], array2 as string[]) as string[]{
    var combinedarray = array1;
    for stringitem in array2 {
        combinedarray += stringitem; 
    }
    return combinedarray;
}

// var crypticminer as IFormattedText = "The miner thrums to life and reports: " + format.obfuscated("must go") +  " deeper " + format.obfuscated("must go") + " beneath";

var droptorches as string[] = [
    "minecraft:torch",
    "atum:palm_torch",
    "atum:deadwood_torch",
    "atum:limestone_torch",
    "atum:bone_torch",
    "atum:pharaoh_torch",
    "inspirations:torch_lever",
    "aether_legacy:ambrosium_torch",
    "thebetweenlands:sulfur_torch",
    "tconstruct:stone_torch",
    "torchmaster:mega_torch",
    "torchmaster:terrain_lighter"
];

// Just cancel the event as this uses unique circumstances of placing light sources. Supremium axe for instance.
var canceltorches as string[] = [
    "mysticalagriculture:miners_torch"
];

var alltorches as string[] = merge(droptorches, canceltorches);

var beneathminers as string[] = [
    "environmentaltech:void_ore_miner_cont_1",
    "environmentaltech:void_ore_miner_cont_2",
    "environmentaltech:void_ore_miner_cont_3",
    "environmentaltech:void_ore_miner_cont_4",
    "environmentaltech:void_ore_miner_cont_5",
    "environmentaltech:void_ore_miner_cont_6"
];

events.onBlockPlace(function(blockPlaced as crafttweaker.event.BlockPlaceEvent){
    // print(blockPlaced.block.definition.id);
    if (blockPlaced.player.dimension == 66){
        for itemCheck in alltorches {
            if(blockPlaced.block.definition.id == itemCheck){
                blockPlaced.player.sendStatusMessage("The atmosphere extinguishes the flame.");
                blockPlaced.cancel();
                // for dropCheck in droptorches {
                    // if(blockPlaced.block.definition.id == dropCheck){
                        // blockPlaced.player.dropItem(true);
                        // break;
                    // } 
                // }
                break;
            }
        }
    } 
    if (blockPlaced.player.dimension != 66){
        for minerCheck in beneathminers {
            if(blockPlaced.block.definition.id == minerCheck){
                blockPlaced.player.sendChat("The void miner comes alive: Must go deeper. Must go to the beneath where a greater source of matter exists.");
                blockPlaced.cancel();
                blockPlaced.player.dropItem(true);
                break;
            }
        }
    }
});

// events.onPlayerTick(function(playerTickCheck as crafttweaker.event.PlayerTickEvent){
    // var pworldobj = playerTickCheck.player.world;
    // var ppos as IBlockPos = playerTickCheck.player.position;
    // var lpos = crafttweaker.util.Position3f.create(ppos.x, ppos.y - 1, ppos.z);
    // var plight = pworldobj.getBlockState(ppos).getLightValue(pworldobj, lpos);
    // playerTickCheck.player.sendStatusMessage("X:" + ppos.x as string + " Y:" + ppos.y as string + " Z:" + ppos.z as string + " Light Value:" + plight as string + " of block X:" + lpos.x as string + " Y:" + lpos.y as string + " Z:" + lpos.z as string);
// });

// events.onEntityJoinWorld(function(entityJoin as crafttweaker.event.EntityJoinWorldEvent){
    // print(entityJoin.entity.definition.name);
// });

print("Initialized 'events'");