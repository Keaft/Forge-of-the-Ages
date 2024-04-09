#Name: events.zs
#reloadable
#Author: Keaft

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

print("Initializing 'boss_summoning'...");

/* var altarBlocks = [
    <minecraft:stone>,
    <minecraft:grass>
] as IBlock[];

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    if(event.world.remote || event.hand == "OFF_HAND") {
        return; // If it is on the client or the OFF_HAND, do not continue. 1.12.2 forge doesn't seem to be able to differentiate which hand is being fired here, but limiting it to 1 makes sure it doesn't fire multiple times.
    }
    for i, block in altarBlocks {
        event.player.sendMessage("iteration " + i + ": " + block.definition.id as string + " : " + event.block.definition.id as string);
        if (altarBlocks has event.block) {
            event.player.sendMessage("same");
        } else {
            event.player.sendMessage("not same");
        }
    }
	if (altarBlocks in event.block) {
		var mhItem = event.player.mainHandHeldItem;
		var ohItem = event.player.offHandHeldItem;
		var x as float = event.x as float;
        var y as float = event.y as float;
        var z as float = event.z as float;
        var aboveY = y + 1;
        var localSummonMessage as string = "You feel the ground shake beneath you.";
		if (!isNull(mhItem) && <minecraft:diamond>.matches(mhItem)) {
			event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount == 1 ? null : mhItem.withAmount(mhItem.amount - 1));
            //var totalTacos = 10;
            var zombie as IEntityLivingBase = <entity:minecraft:zombie>.createEntity(event.entityLivingBase.world);
            zombie.setCustomName("tacoZombie");
            zombie.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.head(),<minecraft:diamond_helmet>);
            zombie.getAttribute("generic.maxHealth").baseValue = 50.0;
            zombie.getAttribute("generic.armor").baseValue = 10.0;
            zombie.health = 50;
            //zombie.setNBT({tacos: totalTacos});
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
				event.cancel();
			}
		}
		return;
	}
}); */

print("Initialized 'boss_summoning'");