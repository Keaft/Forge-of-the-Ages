#Name: oredictionary.zs
#Author: Keaft
#priority 3

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

print("Initializing 'oredictionary'...");

# Chest removals
<ore:chest>.remove(<minecraft:white_shulker_box>);
<ore:chest>.remove(<minecraft:orange_shulker_box>);
<ore:chest>.remove(<minecraft:magenta_shulker_box>);
<ore:chest>.remove(<minecraft:light_blue_shulker_box>);
<ore:chest>.remove(<minecraft:yellow_shulker_box>);
<ore:chest>.remove(<minecraft:lime_shulker_box>);
<ore:chest>.remove(<minecraft:pink_shulker_box>);
<ore:chest>.remove(<minecraft:gray_shulker_box>);
<ore:chest>.remove(<minecraft:silver_shulker_box>);
<ore:chest>.remove(<minecraft:cyan_shulker_box>);
<ore:chest>.remove(<minecraft:purple_shulker_box>);
<ore:chest>.remove(<minecraft:blue_shulker_box>);
<ore:chest>.remove(<minecraft:brown_shulker_box>);
<ore:chest>.remove(<minecraft:green_shulker_box>);
<ore:chest>.remove(<minecraft:red_shulker_box>);
<ore:chest>.remove(<minecraft:black_shulker_box>);

# Bamboo
<ore:cropBamboo>.add(<biomesoplenty:bamboo>);
<ore:stickWood>.add(<futuremc:bamboo>);

# Biomes O' Plenty
# Grass
<ore:grass>.add(<biomesoplenty:grass:1>);
<ore:grass>.add(<biomesoplenty:grass:2>);
<ore:grass>.add(<biomesoplenty:grass:3>);
<ore:grass>.add(<biomesoplenty:grass:4>);
<ore:grass>.add(<biomesoplenty:grass:5>);
<ore:grass>.add(<biomesoplenty:grass:6>);
<ore:grass>.add(<biomesoplenty:grass:7>);
# Stones
<ore:endstone>.add(<biomesoplenty:grass:0>);
<ore:stone>.add(<biomesoplenty:grass:1>);
<ore:netherrack>.add(<biomesoplenty:grass:6>);
<ore:netherrack>.add(<biomesoplenty:grass:8>);
<ore:sandstone>.add(<biomesoplenty:white_sandstone:1>);
<ore:sandstone>.add(<biomesoplenty:white_sandstone:2>);
# Dirts
<ore:mycelium>.add(<biomesoplenty:grass:8>);
<ore:dirt>.add(<biomesoplenty:dirt:1>);
<ore:dirt>.add(<biomesoplenty:dirt:2>);
<ore:dirt>.add(<biomesoplenty:dirt:8>);
<ore:dirt>.add(<biomesoplenty:dirt:9>);
<ore:dirt>.add(<biomesoplenty:dirt:10>);
#Ash
<ore:dustAsh>.add(<biomesoplenty:ash>);
<ore:dustAshes>.add(<biomesoplenty:ash>);
# Doors
<ore:doorWood>.add(<biomesoplenty:sacred_oak_door>);
<ore:doorWood>.add(<biomesoplenty:cherry_door>);
<ore:doorWood>.add(<biomesoplenty:umbran_door>);
<ore:doorWood>.add(<biomesoplenty:fir_door>);
<ore:doorWood>.add(<biomesoplenty:ethereal_door>);
<ore:doorWood>.add(<biomesoplenty:magic_door>);
<ore:doorWood>.add(<biomesoplenty:mangrove_door>);
<ore:doorWood>.add(<biomesoplenty:palm_door>);
<ore:doorWood>.add(<biomesoplenty:redwood_door>);
<ore:doorWood>.add(<biomesoplenty:willow_door>);
<ore:doorWood>.add(<biomesoplenty:pine_door>);
<ore:doorWood>.add(<biomesoplenty:hellbark_door>);
<ore:doorWood>.add(<biomesoplenty:jacaranda_door>);
<ore:doorWood>.add(<biomesoplenty:mahogany_door>);
<ore:doorWood>.add(<biomesoplenty:ebony_door>);
<ore:doorWood>.add(<biomesoplenty:eucalyptus_door>);
# Ice
<ore:blockPackedIce>.add(<biomesoplenty:hard_ice>);

// --- Thaumcraft

# Block Amber
<ore:blockAmber>.add(<thaumcraft:amber_block>);

# Quick Silver Nugget
<ore:nuggetQuicksilver>.remove(<thaumcraft:nugget:5>);

# Flour
<ore:dustWheat>.remove(<nuclearcraft:flour>);
<ore:foodFlour>.add(<nuclearcraft:flour>);

# Cocoa powders/dusts
<ore:foodCocoapowder>.add(<nuclearcraft:cocoa_solids>);
<ore:dustCocoa>.add(<harvestcraft:cocoapowderitem>);
<ore:dyeBrown>.add(<harvestcraft:cocoapowderitem>);

# Water from Harvestcraft
<ore:listAllwater>.remove(<harvestcraft:freshwateritem>);

#Honey and combs
<ore:foodFilledhoneycomb>.remove(<biomesoplenty:filled_honeycomb>);
<ore:combFilledHoney>.add(<biomesoplenty:filled_honeycomb>);
<ore:combFilledHoney>.add(<futuremc:honeycomb>);
<ore:combFilledHoney>.add(<harvestcraft:honeycombitem>);
<ore:combWax>.add(<biomesoplenty:honeycomb>);
<ore:combWax>.add(<harvestcraft:waxcombitem>);

#Portobello
<ore:cropWhitemushroom>.add(<biomesoplenty:mushroom:1>);
<ore:listAllmushroom>.add(<biomesoplenty:mushroom:1>);
<ore:listAllveggie>.add(<biomesoplenty:mushroom:1>);

# Cobalt Ore
<ore:oreCobalt>.add(<contenttweaker:cobalt_ore_stone>);
<ore:oreCobalt>.add(<contenttweaker:cobalt_ore_pitstone>);

# Ardite Ore
<ore:oreArdite>.add(<contenttweaker:ardite_ore_stone>);
<ore:oreArdite>.add(<contenttweaker:ardite_ore_pitstone>);

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

# Shears
val toolShearsEntries = <ore:toolShears>;
val shearsList = [
    <botania:manasteelshears>,
    <botania:elementiumshears>,
    <enderio:item_dark_steel_shears>,
    <thebetweenlands:syrmorite_shears>,
    <thermalfoundation:tool.shears_copper>,
    <thermalfoundation:tool.shears_tin>,
    <thermalfoundation:tool.shears_silver>,
    <thermalfoundation:tool.shears_lead>,
    <thermalfoundation:tool.shears_aluminum>,
    <thermalfoundation:tool.shears_nickel>,
    <thermalfoundation:tool.shears_platinum>,
    <thermalfoundation:tool.shears_steel>,
    <thermalfoundation:tool.shears_electrum>,
    <thermalfoundation:tool.shears_invar>,
    <thermalfoundation:tool.shears_bronze>,
    <thermalfoundation:tool.shears_constantan>,
    <thermalfoundation:tool.shears_diamond>,
    <thermalfoundation:tool.shears_gold>
] as IItemStack[];

for item in shearsList{
    toolShearsEntries.add(item);
}

print("Initialized 'oredictionary'");