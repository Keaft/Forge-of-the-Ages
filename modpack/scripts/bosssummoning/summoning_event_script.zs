#reloadable
// Author: Keaft
// Name: summoning_event_script.zs

import scripts.bosssummoning.basic_boss as BB;
import scripts.bosssummoning.generic_boss_names as GenericNames;

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.command.ICommandManager;
import crafttweaker.damage.IDamageSource;
import crafttweaker.data.IData;
import crafttweaker.entity.AttributeInstance;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IWorld;


print("Initializing 'summoning_event_script'...");

var mutantSkeletonSpawnItems as BB.BasicBoss[IItemStack]$orderly = {
    <contenttweaker:summon_tier_1> : scripts.bosssummoning.mutant_skeleton_boss.mutantSkeleton1,
    <contenttweaker:summon_tier_2> : scripts.bosssummoning.mutant_skeleton_boss.mutantSkeleton2,
    <contenttweaker:summon_tier_3> : scripts.bosssummoning.mutant_skeleton_boss.mutantSkeleton3,
    <contenttweaker:summon_tier_4> : scripts.bosssummoning.mutant_skeleton_boss.mutantSkeleton4,
};

var altarBlocks as BB.BasicBoss[IItemStack][IBlock]$orderly = {
    <contenttweaker:mutant_skeleton_altar> : mutantSkeletonSpawnItems/* ,
    <minecraft:grass> */
 };

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var currentAltar as IItemStack = null;
    var currentItem as IItemStack = null;
    var currentHand as string = null;
    // If it is on the client or the OFF_HAND, do not continue. 1.12.2 forge doesn't seem to be able to differentiate which hand is being fired here while crafttweaker does, but limiting it to 1 makes sure it doesn't fire multiple times.
    if(event.world.remote || event.hand == "OFF_HAND") {
        return; 
    }
    for block in altarBlocks {
        if (block has event.block) {
            for catalyst in altarBlocks[block] { // altarBlocks[block] uses the [block] key minecraft:stone to call it's value zombieSpawnItems thereby declaring altarBlocks[block] as zombieSpawnItems. Catalyst is then just the keys.
                var mhItem = event.player.mainHandHeldItem;
        		var ohItem = event.player.offHandHeldItem;
                if (isNull(mhItem) && isNull(ohItem)) {
                    return;
                }
                if (catalyst has mhItem) {
                    currentHand = mhItem;
                    event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount == 1 ? null : mhItem.withAmount(mhItem.amount - 1));
                    event.player.sendMessage("The " + mhItem.displayName + " drains into the altar.");
                    event.player.give(itemUtils.getItem(mhItem.definition.id + "_empty"));
                    altarBlocks[block][catalyst].commitBoss(event);
                    break;
                }
                if (catalyst has ohItem) {
                    currentHand = ohItem;
                    event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), ohItem.amount == 1 ? null : ohItem.withAmount(ohItem.amount - 1));
                    event.player.sendMessage("The " + ohItem.displayName + " drains into the altar.");
                    event.player.give(itemUtils.getItem(ohItem.definition.id + "_empty"));
                    altarBlocks[block][catalyst].commitBoss(event);
                    break;
                }
            }
            if (isNull(currentHand)) {
                event.player.sendMessage("The altar rejects your offering.");
            }
            break;
        }
    }
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
    var bossCheck = event.entity.nbt.ForgeData;
    if (!isNull(bossCheck.bossVariable) && !isNull(bossCheck.lootDrops)) {
        var lootCheck = bossCheck.lootDrops.asList();
        for i, nbt in lootCheck {
            var itemAndProperties as IData = lootCheck[i];
            var item = itemUtils.getItem(itemAndProperties.item);
            var itemWeight = itemAndProperties.weight;
            var itemMinDrop = itemAndProperties.minDrop;
            var itemMaxDrop = itemAndProperties.maxDrop;
            var itemDamaged = itemAndProperties.damaged;
            var itemTag = itemAndProperties.extraItemTags;
            if (!isNull(itemTag) && itemTag != "") {
                item = item.withTag(itemTag);
            }
            if (itemWeight >= event.entity.world.getRandom().nextInt(0,100)) {
                if (itemDamaged == 1) {
                    event.addItem(item.withDamage(event.entity.world.getRandom().nextInt(0,item.maxDamage)));
                } else {
                    event.addItem(item * event.entity.world.getRandom().nextInt(itemMinDrop,itemMaxDrop));
                }
            }
        }
    }
});

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    var currentName as string = event.entity.getCustomName();
    if (!isNull(event.entity.nbt.ForgeData)){
        if (!isNull(event.entity.nbt.ForgeData.bossVariable) && currentName == "") {
            var randomIntName = event.world.getRandom().nextInt(0,GenericNames.bossNames.length - 1);
            var randomIntSuffix = event.world.getRandom().nextInt(0,GenericNames.bossSuffixes.length - 1);
            event.entity.setCustomName(GenericNames.bossNames[randomIntName] + " " + GenericNames.bossSuffixes[randomIntSuffix]);
        }
    }
});

print("Initialized 'summoning_event_script'");