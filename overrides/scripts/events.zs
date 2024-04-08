#Name: events.zs
#reloadable
#Author: Keaft
// Currently unused with the removal of Environmental Tech and Beneath. However, when in use this script would restrict torch placing in the beneath as well as restrict Environmental Tech void miners to only be buildable in the beneath.

import crafttweaker.data.IData;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.command.ICommandManager;
import crafttweaker.entity.AttributeInstance;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;

print("Initializing 'events'...");

/* function merge(array1 as string[], array2 as string[]) as string[]{
    var combinedarray = array1;
    for stringitem in array2 {
        combinedarray += stringitem; 
    }
    return combinedarray;
} */

/* var crypticminer as IFormattedText = "The miner thrums to life and reports: " + format.obfuscated("must go") +  " deeper " + format.obfuscated("must go") + " beneath";

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

Just cancel the event as this uses unique circumstances of placing light sources. Supremium axe for instance.
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
    print(blockPlaced.block.definition.id); Comment out when not in use
    if (blockPlaced.player.dimension == 66){
        for itemCheck in alltorches {
            if(blockPlaced.block.definition.id == itemCheck){
                blockPlaced.player.sendStatusMessage("The atmosphere extinguishes the flame.");
                blockPlaced.cancel();
                for dropCheck in droptorches { //This for loop should remain inactive
                    if(blockPlaced.block.definition.id == dropCheck){
                        blockPlaced.player.dropItem(true);
                        break;
                    } 
                }
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
}); */


// Checks the block underneath and displays it to the player.
/* events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent){
    var pworldobj = event.player.world;
    var ppos as IBlockPos = event.player.position;
    var lpos = crafttweaker.util.Position3f.create(ppos.x, ppos.y - 1, ppos.z);
    var plight = pworldobj.getBlockState(ppos).getLightValue(pworldobj, lpos);
    event.player.sendStatusMessage("X:" + ppos.x as string + " Y:" + ppos.y as string + " Z:" + ppos.z as string + " Light Value:" + plight as string + " of block X:" + lpos.x as string + " Y:" + lpos.y as string + " Z:" + lpos.z as string);
});

events.onEntityJoinWorld(function(entityJoin as crafttweaker.event.EntityJoinWorldEvent){
    print(entityJoin.entity.definition.name);
}); */

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    if(event.world.remote || event.hand == "OFF_HAND") {
        return; // If it is on the client or the OFF_HAND, do not continue. 1.12.2 forge doesn't seem to be able to differentiate which hand is being fired here, but limiting it to 1 makes sure it doesn't fire multiple times.
    }
	if (event.block.definition.id == "minecraft:stone") {
		var mhItem = event.player.mainHandHeldItem;
		var ohItem = event.player.offHandHeldItem;
		var x as float = event.x as float;
        var y as float = event.y as float;
        var z as float = event.z as float;
        var aboveY = y + 1;
        var localSummonMessage as string = "You feel the ground shake beneath you.";
		if (!isNull(mhItem) && <minecraft:diamond>.matches(mhItem)) {
			event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount == 1 ? null : mhItem.withAmount(mhItem.amount - 1));
/*             var timeToKill = event.world.getWorldTime() +200; */
            var zombie as IEntityLivingBase = <entity:minecraft:zombie>.createEntity(event.entityLivingBase.world);
            zombie.setCustomName("tacoZombie");
            zombie.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.head(),<minecraft:diamond_helmet>);
            zombie.getAttribute("generic.maxHealth").baseValue = 50.0;
            zombie.getAttribute("generic.armor").baseValue = 10.0;
            zombie.health = 50;
/*             zombie.setNBT({killTime: timeToKill}); */
            zombie.setPosition(crafttweaker.util.Position3f.create(x, aboveY, z).asBlockPos());
            event.entityLivingBase.world.spawnEntity(zombie);
            event.player.sendMessage(zombie.health as string);
            event.player.sendMessage("The " + mhItem.displayName + " wrenches from your hand.");
            server.commandManager.executeCommand(server,"execute @a[x=" + x as int + ",y=" + y as int + ",z=" + z as int + ",r=15] ~ ~ ~ tellraw @a[x=~1,y=~1,z=~1,rm=0,r=15] [\"" + localSummonMessage + "\"]");
			//server.commandManager.executeCommand(server, "summon minecraft:zombie "~x~" "~y~" "~z);
			event.cancel();
		} else {
			if (!isNull(ohItem) && <minecraft:diamond>.matches(ohItem)) {
				event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), ohItem.amount == 1 ? null : ohItem.withAmount(ohItem.amount - 1));
				//Attempt action
                /* server.commandManager.executeCommand(server, "summon minecraft:zombie "~x~" "~aboveY~" "~z); */
				event.cancel();
			}
		}
		return;
	}
});

/* events.onPlayerRightClickItem(
    function(event as crafttweaker.event.PlayerRightClickItemEvent){
        if(event.world.remote){
            return;
        }
        if (event.item.name == <contenttweaker:durt_claw>.name){
            val player = event.player;
            val totalInv = player.inventorySize;
            var clips = 0;
            var clops = 0;
            var clorps = 0;
            var clods = 0;
            for i in 0 to totalInv {
                var itemCheck = player.getInventoryStack(i);
                if (!isNull(itemCheck)){
                    print(itemCheck.amount~" "~itemCheck.name);
                    if (itemCheck.definition.id == <contenttweaker:clip>.definition.id){
                        clips += itemCheck.amount;
                        player.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.index(i),null);
                    }
                    if (itemCheck.definition.id == <contenttweaker:clop>.definition.id){
                        clops += itemCheck.amount;
                    }
                    if (itemCheck.definition.id == <contenttweaker:clorp>.definition.id){
                        clorps += itemCheck.amount;
                    }
                    if (itemCheck.definition.id == <contenttweaker:clod>.definition.id){
                        clods += itemCheck.amount;
                    }
                }
            }
        }
    }
); */

print("Initialized 'events'");