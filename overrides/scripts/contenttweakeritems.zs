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

print("Initialized 'contenttweakeritems'");