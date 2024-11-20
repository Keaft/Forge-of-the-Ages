#reloadable
// Author: Keaft
// Name: basic_boss.zs

import crafttweaker.data.IData;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;

print("Initializing 'basic_boss'...");

$expand IEntity$convertToIEntityLivingBase() as IEntityLivingBase {
	var iEntityConversion as IEntityLivingBase = this;
    return iEntityConversion;
}

zenClass BasicBoss {
    var armorToughness as int;
    var attackDamage as int;
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

    zenConstructor(armorToughnessParam as int,
                   attackDamageParam as int,
                   baseArmorParam as int,
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
        armorToughness = armorToughnessParam;
        attackDamage = attackDamageParam;
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
        bossClass.getAttribute("generic.armorToughness").baseValue = armorToughness;
        bossClass.getAttribute("generic.attackDamage").baseValue = attackDamage;
        spawnBoss();
    }

    function spawnBoss() {
        if (!isNull(localSummonMessage)) {
            //server.commandManager.executeCommand(server,"execute @a[x=" + bossEvent.x as int + ",y=" + bossEvent.y as int + ",z=" + bossEvent.z as int + ",r=15] ~ ~ ~ tellraw @a[x=~1,y=~1,z=~1,rm=0,r=15] [\"" + localSummonMessage + "\"]");
            server.commandManager.executeCommand(server,"execute @p[x=" + bossEvent.x as int + ",y=" + bossEvent.y as int + ",z=" + bossEvent.z as int + ",r=15] ~ ~ ~ tellraw @a[x=" + bossEvent.x as int + ",y=" + bossEvent.y as int + ",z=" + bossEvent.z as int + ",r=15] [\"" + localSummonMessage + "\"]");

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

print("Initialized 'basic_boss'");