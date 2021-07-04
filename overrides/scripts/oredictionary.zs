#Name: oredictionary.zs
#Author: Keaft

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

print("Initializing 'oredictionary'...");

# Block Amber
<ore:blockAmber>.add(<thaumcraft:amber_block>);

# Flour
<ore:dustWheat>.remove(<nuclearcraft:flour>);
<ore:foodFlour>.add(<nuclearcraft:flour>);

# Cocoa powders/dusts
<ore:foodCocoapowder>.add(<nuclearcraft:cocoa_solids>);
<ore:dustCocoa>.add(<harvestcraft:cocoapowderitem>);
<ore:dyeBrown>.add(<harvestcraft:cocoapowderitem>);

# Cobalt Ore
<ore:oreCobalt>.add(<contenttweaker:cobalt_ore_stone>);

# Ardite Ore
<ore:oreArdite>.add(<contenttweaker:ardite_ore_stone>);

# Aquaculture Items
# Neptunium Ingot
<ore:ingotNeptunium>.add(<aquaculture:loot:1>);
<ore:ingotNeptunium>.add(<contenttweaker:neptunium_ingot>);

# Pan/Skillet
<ore:toolSkillet>.add(<tconstruct:frypan>);
recipes.replaceAllOccurences(<ore:toolSkillet>,<ore:toolSkillet>.reuse());

# Hammers
val toolHammerEntries = <ore:toolHammer>;
val hammerList = [
    <iceandfire:troll_weapon.hammer>,
    <netherex:withered_amedian_hammer>,
    <netherex:blazed_amedian_hammer>,
    <netherex:frosted_amedian_hammer>,
    <thermalfoundation:tool.hammer_copper>,
    <thermalfoundation:tool.hammer_tin>,
    <thermalfoundation:tool.hammer_silver>,
    <thermalfoundation:tool.hammer_lead>,
    <thermalfoundation:tool.hammer_aluminum>,
    <thermalfoundation:tool.hammer_nickel>,
    <thermalfoundation:tool.hammer_platinum>,
    <thermalfoundation:tool.hammer_steel>,
    <thermalfoundation:tool.hammer_electrum>,
    <thermalfoundation:tool.hammer_invar>,
    <thermalfoundation:tool.hammer_bronze>,
    <thermalfoundation:tool.hammer_constantan>,
    <thermalfoundation:tool.hammer_iron>,
    <thermalfoundation:tool.hammer_diamond>,
    <thermalfoundation:tool.hammer_gold>,
    <tconstruct:hammer>
] as IItemStack[];

for item in hammerList{
    toolHammerEntries.add(item);
}

print("Initialized 'oredictionary'");