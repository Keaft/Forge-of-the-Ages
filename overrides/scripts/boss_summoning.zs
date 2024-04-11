#reloadable
// Author: Keaft
// Name: boss_summoning.zs

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

$expand IEntity$convertToIEntityLivingBase() as IEntityLivingBase {
	var iEntityConversion as IEntityLivingBase = this;
    return iEntityConversion;
}

zenClass BasicBoss {
    // statics can't change
    
    // variables can be changed, DO declare variables for everything that I want to be able to change, likely establish defaults, but definitely vars for changing.
    var baseArmor as int;
    var bossEntityType as IEntityDefinition;
    var chestSlotItem as IItemStack;
    var feetSlotItem as IItemStack;
    var headSlotItem as IItemStack;
    var legsSlotItem as IItemStack;
    var localSummonMessage as string;
    var mainHandSlotItem as IItemStack;
    var name as string; 
    var offHandSlotItem as IItemStack;
    var totalHealth as int;

    var bossEvent as PlayerInteractBlockEvent;
    var bossIEntity as IEntity;
    var bossClass as IEntityLivingBase;
    // methods (functions), bits of functionality. 

    zenConstructor(baseArmorParam as int,
                   bossEntityTypeParam as IEntityDefinition,
                   chestSlotItemParam as IItemStack,
                   feetSlotItemParam as IItemStack,
                   headSlotItemParam as IItemStack,
                   legsSlotItemParam as IItemStack,
                   localSummonMessageParam as string,
                   mainHandSlotItemParam as IItemStack,
                   nameParam as string, 
                   offHandSlotItemParam as IItemStack,
                   totalHealthParam as int
    ){ // called whenever the class is initialized. Every call does the following instructions. Makes sure that I don't have to call every instruction every time.
        baseArmor = baseArmorParam;
        bossEntityType = bossEntityTypeParam;
        chestSlotItem = chestSlotItemParam;
        feetSlotItem = feetSlotItemParam;
        headSlotItem = headSlotItemParam;
        legsSlotItem = legsSlotItemParam;
        localSummonMessage = localSummonMessageParam;
        mainHandSlotItem = mainHandSlotItemParam;
        name = nameParam;
        offHandSlotItem = offHandSlotItemParam;
        totalHealth = totalHealthParam;
    }

    function commitBoss(eventParam as PlayerInteractBlockEvent){
        bossEvent = eventParam;
        bossIEntity = bossEntityType.createEntity(bossEvent.entityLivingBase.world);
        bossClass = bossIEntity.convertToIEntityLivingBase();
        bossClass.setCustomName(name);
        bossClass.setPosition(crafttweaker.util.Position3f.create(bossEvent.x, bossEvent.y + 1, bossEvent.z).asBlockPos());
        giveEquipment("mainHand",mainHandSlotItem);
        giveEquipment("offHand",offHandSlotItem);
        giveEquipment("head",headSlotItem);
        giveEquipment("chest",chestSlotItem);
        giveEquipment("legs",legsSlotItem);
        giveEquipment("feet",feetSlotItem);
        setHealth(totalHealth);
        bossClass.getAttribute("generic.armor").baseValue = baseArmor;
        spawnBoss();
    }

    function spawnBoss(){
        server.commandManager.executeCommand(server,"execute @a[x=" + bossEvent.x as int + ",y=" + bossEvent.y as int + ",z=" + bossEvent.z as int + ",r=15] ~ ~ ~ tellraw @a[x=~1,y=~1,z=~1,rm=0,r=15] [\"" + localSummonMessage + "\"]");
        bossEvent.entityLivingBase.world.spawnEntity(bossClass);
    }

    function setHealth(healthParam as int){
        bossClass.getAttribute("generic.maxHealth").baseValue = healthParam; // Setting a baseValue needs a double even though the int works?
        bossClass.health = healthParam; // Health is a float???
    }
    
    function giveEquipment(equipItemSlot as string, item as IItemStack){
        if(equipItemSlot == "mainHand"){
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.mainHand(),item);
        }
        if(equipItemSlot == "offHand"){
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.offhand(),item);
        }
        if(equipItemSlot == "head"){
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.head(),item);
        }
        if(equipItemSlot == "chest"){
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.chest(),item);
        }
        if(equipItemSlot == "legs"){
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.legs(),item);
        }
        if(equipItemSlot == "feet"){
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.feet(),item);
        }
    }
}

print("Initializing 'boss_summoning'...");

var diamondZombie = BasicBoss(1,
                            <entity:minecraft:zombie>,
                            null, 
                            null, 
                            <minecraft:diamond_helmet>, 
                            null, 
                            "You feel the ground beneath you rumble.", 
                            null,
                            "tacoZombie",
                            null,
                            50
); // this is a function call to the constructor

var goldenZombie = BasicBoss(1,
                            <entity:minecraft:zombie>,
                            null, 
                            null, 
                            <minecraft:golden_helmet>, 
                            null, 
                            "You feel the ground beneath you rumble.", 
                            null,
                            "tacoZombie",
                            null,
                            50
); // this is a function call to the constructor


var zombieSpawnItems = {
    <minecraft:diamond> : diamondZombie,
    <minecraft:gold_ingot> : goldenZombie
} as BasicBoss[IItemStack];

var altarBlocks = {
    <minecraft:stone> : zombieSpawnItems/* ,
    <minecraft:grass> */
 } as BasicBoss[IItemStack][IBlock];


events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    var currentAltar as IItemStack = null;
    var currentItem as IItemStack = null;
    var currentHand as string = null;
    // If it is on the client or the OFF_HAND, do not continue. 1.12.2 forge doesn't seem to be able to differentiate which hand is being fired here while crafttweaker does, but limiting it to 1 makes sure it doesn't fire multiple times.
    if(event.world.remote || event.hand == "OFF_HAND") {
        return; 
    }
    for block in altarBlocks {
        if (block has event.block) {
            event.player.sendMessage("found block");
            for catalyst in altarBlocks[block] { // altarBlocks[block] uses the [block] key minecraft:stone to call it's value zombieSpawnItems thereby declaring altarBlocks[block] as zombieSpawnItems. Catalyst is then just the keys.
                var mhItem = event.player.mainHandHeldItem;
        		var ohItem = event.player.offHandHeldItem;
                if (isNull(mhItem) && isNull(ohItem)){
                    return;
                }
                if (catalyst has mhItem) {
                    event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount == 1 ? null : mhItem.withAmount(mhItem.amount - 1));
                    event.player.sendMessage("The " + mhItem.displayName + " wrenches from your hand.");
                    altarBlocks[block][catalyst].commitBoss(event);
                    break;
                } else {
                    if (catalyst has ohItem) {
                        event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), ohItem.amount == 1 ? null : ohItem.withAmount(ohItem.amount - 1));
                        event.player.sendMessage("The " + ohItem.displayName + " wrenches from your hand.");
                        altarBlocks[block][catalyst].commitBoss(event);
                        break;
                    } else {
                        event.player.sendMessage("The altar rejects your offering.");
                    }
                }
            }
            break;
        }
    }
});

print("Initialized 'boss_summoning'");
