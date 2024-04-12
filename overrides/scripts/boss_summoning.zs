#reloadable
// Author: Keaft
// Name: boss_summoning.zs

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

$expand IEntity$convertToIEntityLivingBase() as IEntityLivingBase {
	var iEntityConversion as IEntityLivingBase = this;
    return iEntityConversion;
}

zenClass BasicBoss {
    var baseArmor as int;
    var bossEntityType as IEntityDefinition;
    var chestSlotItem as IItemStack;
    var drops as IData;
    var feetSlotItem as IItemStack;
    var headSlotItem as IItemStack;
    var legsSlotItem as IItemStack;
    var localSummonMessage as string;
    var mainHandSlotItem as IItemStack;
    var name as string; 
    var namesList as string[];
    var namesListSuffix as string[];
    var offHandSlotItem as IItemStack;
    var totalHealth as int;

    var bossEvent as PlayerInteractBlockEvent;
    var bossIEntity as IEntity;
    var bossClass as IEntityLivingBase;

    zenConstructor(baseArmorParam as int,
                   bossEntityTypeParam as IEntityDefinition,
                   chestSlotItemParam as IItemStack,
                   dropsParam as IData,
                   feetSlotItemParam as IItemStack,
                   headSlotItemParam as IItemStack,
                   legsSlotItemParam as IItemStack,
                   localSummonMessageParam as string,
                   mainHandSlotItemParam as IItemStack,
                   nameParam as string,
                   namesListParam as string[],
                   namesListSuffixParam as string[],
                   offHandSlotItemParam as IItemStack,
                   totalHealthParam as int
    ) { 
        baseArmor = baseArmorParam;
        bossEntityType = bossEntityTypeParam;
        chestSlotItem = chestSlotItemParam;
        drops = dropsParam;
        feetSlotItem = feetSlotItemParam;
        headSlotItem = headSlotItemParam;
        legsSlotItem = legsSlotItemParam;
        localSummonMessage = localSummonMessageParam;
        mainHandSlotItem = mainHandSlotItemParam;
        name = nameParam;
        namesList = namesListParam;
        namesListSuffix = namesListSuffixParam;
        offHandSlotItem = offHandSlotItemParam;
        totalHealth = totalHealthParam;
    }

    function commitBoss(eventParam as PlayerInteractBlockEvent) {
        bossEvent = eventParam;
        bossIEntity = bossEntityType.createEntity(bossEvent.entityLivingBase.world);
        bossClass = bossIEntity.convertToIEntityLivingBase();
        changeName(name, namesList, namesListSuffix);
        bossClass.setNBT(drops);
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

    function spawnBoss() {
        if (!isNull(localSummonMessage)) {
            server.commandManager.executeCommand(server,"execute @a[x=" + bossEvent.x as int + ",y=" + bossEvent.y as int + ",z=" + bossEvent.z as int + ",r=15] ~ ~ ~ tellraw @a[x=~1,y=~1,z=~1,rm=0,r=15] [\"" + localSummonMessage + "\"]");
        }
        bossEvent.entityLivingBase.world.spawnEntity(bossClass);
    }

    function changeName(nameParam as string, nameListParam as string[], nameListSuffixParam as string[]) {
        if (!isNull(nameListParam) && isNull(nameListSuffixParam)) {
            var randomIntName = this.bossEvent.world.getRandom().nextInt(0,nameListParam.length - 1);
            bossClass.setCustomName(nameListParam[randomIntName]);
        } else {
            if (!isNull(nameListParam) && !isNull(nameListSuffixParam)) {
                var randomIntName = this.bossEvent.world.getRandom().nextInt(0,nameListParam.length - 1);
                var randomIntSuffix = this.bossEvent.world.getRandom().nextInt(0,nameListSuffixParam.length - 1);
                bossClass.setCustomName(nameListParam[randomIntName] + " " + nameListSuffixParam[randomIntSuffix]);
            }
        }
        if (!isNull(nameParam)) {
            bossClass.setCustomName(nameParam);
        } 
    }

    function setHealth(healthParam as int) {
        bossClass.getAttribute("generic.maxHealth").baseValue = healthParam; // Setting a baseValue needs a double even though the int works?
        bossClass.health = healthParam; // Health is a float???
    }
    
    function giveEquipment(equipItemSlot as string, item as IItemStack) {
        if(equipItemSlot == "mainHand") {
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.mainHand(),item);
        }
        if(equipItemSlot == "offHand") {
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.offhand(),item);
        }
        if(equipItemSlot == "head") {
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.head(),item);
        }
        if(equipItemSlot == "chest") {
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.chest(),item);
        }
        if(equipItemSlot == "legs") {
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.legs(),item);
        }
        if(equipItemSlot == "feet") {
            bossClass.setItemToSlot(crafttweaker.entity.IEntityEquipmentSlot.feet(),item);
        }
    }
}

print("Initializing 'boss_summoning'...");

var bossNames as string[] = [
    "Malakar",
    "Zephyrion",
    "Xalvador",
    "Seraphina",
    "Drak'thar",
    "Thalador",
    "Vorgrath",
    "Lyrastra",
    "Grimmjaw",
    "Aurelius",
    "Korvath",
    "Valyria",
    "Mordred",
    "Enderfiend",
    "Blazefury",
    "Ghastbane",
    "Enderus",
    "Arkanos",
    "Ironforge",
    "Sylphira",
    "Necronyx",
    "Emberlyn",
    "Endarion",
    "Duskfang",
    "Stoneheart"
];

var bossSuffixes as string[] = [
    "of the Nether",
    "the Dragon Slayer",
    "the Ender Conqueror",
    "the Shadow Master",
    "the Block Breaker",
    "the Redstone Sorcerer",
    "the Creeper Lord",
    "of the Overworld",
    "the Dark Wizard",
    "the Diamond Defender",
    "the Necromancer",
    "the Minecart Maestro",
    "the Sorcerer Supreme",
    "the Ghast Hunter",
    "the Voidwalker",
    "the Undying",
    "the Earthshaker"
];

var mutantSkeleton1 = BasicBoss(0, // Base armor 1 is half a shield in game
                            <entity:mutantbeasts:mutant_skeleton>, // Entity to summon
                            null, // Chest armor
                            {
                                "bossVariable": "mutantSkeleton1",
                                "lootDrops": [
                                    {
                                        name :"summonTier1Empty",
                                        item: "contenttweaker:summon_tier_1",
                                        weight: 100,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false
                                    },
                                    {
                                        name :"diamondSword",
                                        item: "minecraft:diamond_sword",
                                        weight: 100,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: true
                                    }
                                ]
                            },
                            null, // Feet armor
                            null, // Head Armor
                            null, // Legs armor
                            "You feel the ground shake beneath your feet", // Local distance message on summon
                            null, // Main hand item
                            null, // Custom name
                            bossNames, // Name List
                            bossSuffixes, // Name Suffix List
                            null, // Off hand item
                            150 // Total Health
);

var mutantSkeleton2 = BasicBoss(0, // Base armor 1 is half a shield in game
                            <entity:mutantbeasts:mutant_skeleton>, // Entity to summon
                            null, // Chest armor
                            {
                                "bossVariable": "mutantSkeleton2",
                                "lootDrops": [
                                    {
                                        name :"summonTier2Empty",
                                        item: "contenttweaker:summon_tier_2",
                                        weight: 100,
                                        minDrop: 1,
                                        maxDrop: 3,
                                        damaged: false
                                    }
                                ]
                            },
                            null, // Feet armor
                            null, // Head Armor
                            null, // Legs armor
                            "You feel the ground shake beneath your feet", // Local distance message on summon
                            null, // Main hand item
                            null, // Custom name
                            bossNames, // Name List
                            bossSuffixes, // Name Suffix List
                            null, // Off hand item
                            200 // Total Health
);

var mutantSkeletonSpawnItems as BasicBoss[IItemStack]$orderly = {
    <contenttweaker:summon_tier_1> : mutantSkeleton1,
    <contenttweaker:summon_tier_2> : mutantSkeleton2,
    <contenttweaker:summon_tier_3> : mutantSkeleton1,
    <contenttweaker:summon_tier_4> : mutantSkeleton1,
};

var altarBlocks as BasicBoss[IItemStack][IBlock]$orderly = {
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
                    event.player.sendMessage("The " + mhItem.displayName + " wrenches from your hand.");
                    altarBlocks[block][catalyst].commitBoss(event);
                    break;
                }
                if (catalyst has ohItem) {
                    currentHand = ohItem;
                    event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), ohItem.amount == 1 ? null : ohItem.withAmount(ohItem.amount - 1));
                    event.player.sendMessage("The " + ohItem.displayName + " wrenches from your hand.");
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
    if (!isNull(bossCheck.bossVariable)) {
        var lootCheck = bossCheck.lootDrops.asList();
        for i, nbt in lootCheck {
            var itemAndProperties as IData = lootCheck[i];
            var item = itemUtils.getItem(itemAndProperties.item);
            var itemWeight = itemAndProperties.weight;
            var itemMinDrop = itemAndProperties.minDrop;
            var itemMaxDrop = itemAndProperties.maxDrop;
            var itemDamaged = itemAndProperties.damaged;
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

print("Initialized 'boss_summoning'");