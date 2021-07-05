#Name: replacerecipe.zs
#Author: Keaft
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;

print("Initializing 'replacerecipe'...");

var hammer as IIngredient = null;
for ore in <ore:toolHammer>.items {
  val newHammer = ore.anyDamage().reuse();
  if (isNull(hammer)) {
    hammer = newHammer;
  } else {
    hammer = hammer | newHammer;
  }
}

//--------------------------------------------------------------------------------------

// --- Applied Energistics ---
// - Energy Acceptor
recipes.removeByRecipeName("appliedenergistics2:network/blocks/energy_energy_acceptor");
recipes.addShaped("appliedenergistics2_network/blocks/energy_energy_acceptor", <appliedenergistics2:energy_acceptor>, [[<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>], [<minecraft:redstone>, <ore:crystalFluix> | <appliedenergistics2:material:12>, <minecraft:redstone>], [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>]]);

// - Illuminated Panel
recipes.removeByRecipeName("appliedenergistics2:network/parts/panels_semi_dark_monitor");
recipes.addShaped("appliedenergistics2_network/parts/panels_semi_dark_monitor", <appliedenergistics2:part:180> * 3, [[null, <ore:ingotGold>, <appliedenergistics2:quartz_glass>], [<ore:ingotIron>, <ore:dustRedstone>, <appliedenergistics2:quartz_glass>], [null, <ore:ingotGold>, <appliedenergistics2:quartz_glass>]]);

// - ME Fluid Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
recipes.addShaped("appliedenergistics2_network/blocks/fluid_interfaces_interface", <appliedenergistics2:fluid_interface>, [[<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>], [<minecraft:redstone>, null, <minecraft:redstone>], [<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>]]);

// - ME Glass Cable
recipes.removeByRecipeName("appliedenergistics2:network/cables/glass_fluix");
recipes.addShapeless("appliedenergistics2_network/cables/glass_fluix", <appliedenergistics2:part:16> * 4, [<appliedenergistics2:part:140>, <ore:crystalFluix> | <appliedenergistics2:material:12>]);

// - ME Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.addShaped("appliedenergistics2_network/blocks/interfaces_interface", <appliedenergistics2:interface>, [[<ore:ingotIron>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:ingotIron>], [<minecraft:redstone>, null, <minecraft:redstone>], [<ore:ingotIron>, <ore:blockGlass> | <ore:glass> | <minecraft:glass>, <ore:ingotIron>]]);

// - ME Terminal
recipes.removeByRecipeName("appliedenergistics2:network/parts/terminals");
recipes.addShapeless("appliedenergistics2_network/parts/terminals", <appliedenergistics2:part:380>, [<minecraft:diamond>, <ore:itemIlluminatedPanel>, <storagedrawers:controller>, <minecraft:diamond>]);

// - ME Quantum Ring
recipes.removeByRecipeName("appliedenergistics2:network/blocks/quantum_ring");
recipes.addShaped("appliedenergistics2_network/blocks/quantum_ring", <appliedenergistics2:quantum_ring>, [[<ore:ingotIron>,<appliedenergistics2:material:22>,<ore:ingotIron>], [<appliedenergistics2:material:24>,<appliedenergistics2:energy_cell>,<enderio:item_material:16>], [<ore:ingotIron>,<appliedenergistics2:material:22>,<ore:ingotIron>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- BountifulBaubles ---
// - Black Dragon Scale
recipes.removeByRecipeName("bountifulbaubles:trinketblackdragonscale");
recipes.addShaped("bountifulbaubles_black_dragon_scale", <bountifulbaubles:trinketblackdragonscale>, [[<ore:boneWithered>,<minecraft:skull:1>,<ore:boneWithered>], [<ore:boneWithered>,<bountifulbaubles:enderdragonscale>,<ore:boneWithered>], [<mysticalagriculture:charm:3>,<bountifulbaubles:brokenblackdragonscale>,<biomesoplenty:jar_filled:1>]]);

// - Iron Ring
recipes.removeByRecipeName("bountifulbaubles:ringiron");
recipes.addShaped("bountifulbaubles_ringiron", <bountifulbaubles:ringiron>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>], [<minecraft:iron_ingot>,null,<minecraft:iron_ingot>], [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Enchanting Plus ---
// - Advanced Enchanting Table
recipes.removeByRecipeName("eplus:upgrade");
recipes.addShaped("eplus_upgrade", <eplus:table_upgrade>, [[<ore:ingotGold>, <atum:heart_of_ra>, <ore:ingotGold>], [<contenttweaker:enchanted_tome_of_knowledge>, <minecraft:enchanting_table:*>, <contenttweaker:enchanted_tome_of_knowledge>], [<ore:ingotGold>, <minecraft:end_crystal>, <ore:ingotGold>]]);
recipes.removeByRecipeName("eplus:table");
recipes.addShaped("eplus_table", <eplus:advanced_table>, [[<ore:ingotGold>, <atum:heart_of_ra>, <ore:ingotGold>], [<contenttweaker:enchanted_tome_of_knowledge>, <minecraft:enchanting_table:*>, <contenttweaker:enchanted_tome_of_knowledge>], [<ore:ingotGold>, <minecraft:end_crystal>, <ore:ingotGold>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Ender IO ---
// - Alloy Smelter
recipes.removeByRecipeName("enderio:alloy_smelter");
recipes.removeByRecipeName("enderio:alloy_smelter_upgrade");
recipes.addShaped("enderio_alloy_smelter", <enderio:block_alloy_smelter>, [[<ore:ingotSilver>,<minecraft:furnace>,<ore:ingotSilver>], [<enderio:block_simple_alloy_smelter>,<enderio:item_material:0>,<enderio:block_simple_furnace>], [<enderio:item_material:11>,<minecraft:cauldron>,<enderio:item_material:11>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Environmental Tech ---
// - Tier 5 Void Ore Miner
recipes.removeByRecipeName("environmentaltech:m_multiblocks/m_void/m_ore/void_ore_miner_cont_5");
recipes.addShaped("environmentaltech_m_multiblocks/m_void/m_ore/void_ore_miner_cont_5", <environmentaltech:void_ore_miner_cont_5>, [[<ore:blockIonite>, <oresabovediamonds:amethyst_block>, <ore:blockIonite>], [<ore:blockIonite>, <environmentaltech:void_ore_miner_cont_4>, <ore:blockIonite>], [<ore:blockIonite>, <ore:etLaserLens>, <ore:blockIonite>]]);

// - Tier 6 Void Ore Miner
recipes.removeByRecipeName("environmentaltech:m_multiblocks/m_void/m_ore/void_ore_miner_cont_6");
recipes.addShaped("environmentaltech_m_multiblocks/m_void/m_ore/void_ore_miner_cont_6", <environmentaltech:void_ore_miner_cont_6>, [[<ore:blockAethium>, <oresabovediamonds:black_opal_block>, <ore:blockAethium>], [<ore:blockAethium>, <environmentaltech:void_ore_miner_cont_5>, <ore:blockAethium>], [<ore:blockAethium>, <ore:etLaserLens>, <ore:blockAethium>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Extra Utilities 2 ---
// - Ring of the flying squid
recipes.removeByRecipeName("extrautils2:squid_ring");
recipes.addShaped("extrautils2_squid_ring", <extrautils2:chickenring:1>, [[<minecraft:elytra>, <mysticalagriculture:gear:9>, <minecraft:elytra>], [<ore:gemDiamond>, <extrautils2:chickenring>, <ore:gemDiamond>], [<minecraft:elytra>, <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:squid"}, No_Place: 1 as byte}), <minecraft:elytra>]]);

// - Snow Globe
recipes.removeByRecipeName("extrautils2:snow_globe");
recipes.addShapeless("extrautils2_snow_globe", <extrautils2:snowglobe>, [<ore:blockGlass>, <ore:treeSapling>, <minecraft:snowball:*>, <ore:doorWood>, <ore:logWood>, <ore:grass>, <minecraft:ender_pearl:*>, <ore:netherStar>, <oresabovediamonds:black_opal_block>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Improvable Skills 3 ---
recipes.removeByRecipeName("improvableskills:skills_book");
recipes.addShapeless("improvableskills_skills_book", <improvableskills:skills_book>, [<minecraft:book>,<minecraft:wooden_sword>.anyDamage(),<minecraft:wooden_shovel>.anyDamage(),<minecraft:wooden_pickaxe>.anyDamage(),<minecraft:wooden_axe>.anyDamage()]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Inspirations ---
recipes.removeByRecipeName("inspirations:tools/redstone_charger");
recipes.addShapeless("inspirations_tools/redstone_charger", <inspirations:redstone_charger>, [<ore:ingotGold>, <minecraft:flint_and_steel>, <ore:dustRedstone>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Natura ---
//Natura Bookshelves
recipes.removeByRecipeName("natura:decorative/nether/bookshelf/ghostwood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/ghostwood_bookshelf", <natura:nether_bookshelves>, [[<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>], [<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>], [<natura:nether_planks>,<minecraft:book>,<natura:nether_planks>]]);

recipes.removeByRecipeName("natura:decorative/nether/bookshelf/bloodwood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/bloodwood_bookshelf", <natura:nether_bookshelves:1>, [[<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>], [<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>], [<natura:nether_planks:1>,<minecraft:book>,<natura:nether_planks:1>]]);

recipes.removeByRecipeName("natura:decorative/nether/bookshelf/darkwood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/darkwood_bookshelf", <natura:nether_bookshelves:2>, [[<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>], [<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>], [<natura:nether_planks:2>,<minecraft:book>,<natura:nether_planks:2>]]);

recipes.removeByRecipeName("natura:decorative/nether/bookshelf/fusewood_bookshelf");
recipes.addShaped("natura_decorative/nether/bookshelf/fusewood_bookshelf", <natura:nether_bookshelves:3>, [[<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>], [<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>], [<natura:nether_planks:3>,<minecraft:book>,<natura:nether_planks:3>]]);

//Cactus Juice
recipes.removeByRecipeName("natura:common/cactus_juice");
recipes.addShapeless("natura_common/cactus_juice", <natura:edibles:11>, [<minecraft:cactus>,<harvestcraft:juiceritem>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Nature's Compass ---
//Nature's Compass
recipes.removeByRecipeName("naturescompass:natures_compass");
recipes.addShaped("naturescompass_natures_compass", <naturescompass:naturescompass>, [[<ore:treeSapling>,<ore:gemEmerald>,<ore:treeSapling>], [<ore:logWood>,<minecraft:compass>,<ore:logWood>], [<ore:treeSapling>,<ore:gemEmerald>,<ore:treeSapling>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Scaling Health ---
//Heart Dust
recipes.removeByRecipeName("scalinghealth:heart_dust");
recipes.addShapeless("scalinghealth_heart_dust", <scalinghealth:heartdust>, [hammer.transformDamage(), <scalinghealth:crystalshard>]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- Storage Drawers ---
//Controller Slave
recipes.removeByRecipeName("storagedrawers:controller_slave");
recipes.addShaped("storagedrawers_controller_slave", <storagedrawers:controllerslave>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:redstone_torch>, <ore:drawerBasic>, <minecraft:redstone_torch>], [<minecraft:stone>, <ore:ingotGold>, <minecraft:stone>]]);

//Drawer Controller
recipes.removeByRecipeName("storagedrawers:controller");
recipes.addShaped("storagedrawers_controller", <storagedrawers:controller>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:redstone_torch>, <ore:drawerBasic>, <minecraft:redstone_torch>], [<minecraft:stone>, <ore:gemDiamond>, <minecraft:stone>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Telepad -- CURRENTLY UNUSED MAY REVISIT LATER
//Telepad
//recipes.removeByRecipeName("telepads:telepad");
//recipes.addShaped("telepads_telepad", <telepads:telepad>, [[<extrautils2:ineffableglass:3>,<extrautils2:ineffableglass:3>,<extrautils2:ineffableglass:3>], [<minecraft:ender_pearl>,<minecraft:ender_pearl>,<minecraft:ender_pearl>], [<minecraft:iron_block>,<naturescompass:naturescompass>,<minecraft:iron_block>]]);

//Transmitter
//recipes.removeByRecipeName("telepads:transmitter");
//recipes.addShaped("telepads_transmitter", <telepads:transmitter>, [[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>], [<minecraft:redstone>,<enderio:item_material:16>,<minecraft:redstone>], [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Tinkers Construct
//Green Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/green");
recipes.addShaped("tconstruct_gadgets/slimesling/green", <tconstruct:slimesling>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_green>, null], [null, <ore:slimeballGreen>, null]]);

//Blue Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/blue");
recipes.addShaped("tconstruct_gadgets/slimesling/blue", <tconstruct:slimesling:1>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_blue>, null], [null, <ore:slimeballBlue>, null]]);

//Purple Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/purple");
recipes.addShaped("tconstruct_gadgets/slimesling/purple", <tconstruct:slimesling:2>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_purple>, null], [null, <ore:slimeballPurple>, null]]);

//Orange Slime Sling
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/magma");
recipes.addShaped("tconstruct_gadgets/slimesling/magma", <tconstruct:slimesling:4>, [[<ore:string>, null, <ore:string>], [null, <contenttweaker:slime_handle_orange>, null], [null, <ore:slimeballMagma>, null]]);

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// -- Tinker I/O --
//Slot Upgrade I
recipes.removeByRecipeName("tinker_io:slotupg1");
recipes.addShaped("tinker_io_slotupg1", <tinker_io:upg:1>, [[null,<minecraft:chest>,null], [<minecraft:chest>,<tinker_io:upg>,<minecraft:chest>], [null,<minecraft:chest>,null]]);

//Slot Upgrade II
recipes.removeByRecipeName("tinker_io:slotupg2");
recipes.addShaped("tinker_io_slotupg2", <tinker_io:upg:2>, [[null,<minecraft:iron_ingot>,null], [<minecraft:iron_ingot>,<tinker_io:upg:1>,<minecraft:iron_ingot>], [null,<minecraft:iron_ingot>,null]]);

//Slot Upgrade III
recipes.removeByRecipeName("tinker_io:slotupg3");
recipes.addShaped("tinker_io_slotupg3", <tinker_io:upg:3>, [[null,<ore:ingotGold>,null], [<ore:ingotGold>,<tinker_io:upg:2>,<ore:ingotGold>], [null,<ore:ingotGold>,null]]);

//Slot Upgrade IV
recipes.removeByRecipeName("tinker_io:slotupg4");
recipes.addShaped("tinker_io_slotupg4", <tinker_io:upg:4>, [[null,<ore:gemDiamond>,null], [<ore:gemDiamond>,<tinker_io:upg:3>,<ore:gemDiamond>], [null,<ore:gemDiamond>,null]]);

//--------------------------------------------------------------------------------------


print("Initialized 'replacerecipe'");