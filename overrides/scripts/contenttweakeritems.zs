#loader contenttweaker
#Name: contenttweakeritems.zs
#Author: Keaft

import mods.contenttweaker.VanillaFactory;

print("Initializing 'contenttweakeritems'...");

// - Enchanted Tome of Knowledge
var enchantedtomeofknowledge = VanillaFactory.createItem("enchanted_tome_of_knowledge");
enchantedtomeofknowledge.glowing = true;
enchantedtomeofknowledge.rarity = "rare";
enchantedtomeofknowledge.maxStackSize = 64;
enchantedtomeofknowledge.register();

// - Elytra Wing
var elytrawing = VanillaFactory.createItem("elytra_wing");
elytrawing.maxStackSize = 64;
elytrawing.register();

// - Green Sling Handle
var slimeHandleGreen = VanillaFactory.createItem("slime_handle_green");
slimeHandleGreen.maxStackSize = 1;
slimeHandleGreen.register();

// - Blue Sling Handle
var slimeHandleBlue = VanillaFactory.createItem("slime_handle_blue");
slimeHandleBlue.maxStackSize = 1;
slimeHandleBlue.register();

// - Purple Sling Handle
var slimeHandlePurple = VanillaFactory.createItem("slime_handle_purple");
slimeHandlePurple.maxStackSize = 1;
slimeHandlePurple.register();

// - Orange Sling Handle
var slimeHandleOrange = VanillaFactory.createItem("slime_handle_orange");
slimeHandleOrange.maxStackSize = 1;
slimeHandleOrange.register();

// - Orange Sling Handle
var neptuniumIngot = VanillaFactory.createItem("neptunium_ingot");
neptuniumIngot.maxStackSize = 64;
neptuniumIngot.register();

// - Fake Applied Energistics Cells
var onekitem = VanillaFactory.createItem("onek_item");
onekitem.maxStackSize = 1;
onekitem.register();

var fourkitem = VanillaFactory.createItem("fourk_item");
fourkitem.maxStackSize = 1;
fourkitem.register();

var sixteenkitem = VanillaFactory.createItem("sixteenk_item");
sixteenkitem.maxStackSize = 1;
sixteenkitem.register();

var onekfluid = VanillaFactory.createItem("onek_fluid");
onekfluid.maxStackSize = 1;
onekfluid.register();

var fourkfluid = VanillaFactory.createItem("fourk_fluid");
fourkfluid.maxStackSize = 1;
fourkfluid.register();

var sixteenkfluid = VanillaFactory.createItem("sixteenk_fluid");
sixteenkfluid.maxStackSize = 1;
sixteenkfluid.register();

print("Initialized 'contenttweakeritems'");