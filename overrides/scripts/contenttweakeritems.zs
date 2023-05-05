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

// - Plates
var unfiredporcelainplate = VanillaFactory.createItem("unfired_porcelain_plate");
unfiredporcelainplate.maxStackSize = 64;
unfiredporcelainplate.register();

var porcelainplate = VanillaFactory.createItem("porcelain_plate");
porcelainplate.maxStackSize = 64;
porcelainplate.register();

var certusquartzplate = VanillaFactory.createItem("certus_quartz_plate");
certusquartzplate.maxStackSize = 64;
certusquartzplate.register();

var diamondplate = VanillaFactory.createItem("diamond_plate");
diamondplate.maxStackSize = 64;
diamondplate.register();

var fluixplate = VanillaFactory.createItem("fluix_plate");
fluixplate.maxStackSize = 64;
fluixplate.register();

var demonwillcrystalperfected = VanillaFactory.createItem("demon_will_crystal_perfected");
demonwillcrystalperfected.maxStackSize = 64;
demonwillcrystalperfected.register();

var unobtaniumingot = VanillaFactory.createItem("unobtanium_ingot");
unobtaniumingot.maxStackSize = 64;
unobtaniumingot.register();

var unfiredporcelaincrystal = VanillaFactory.createItem("unfired_porcelain_crystal");
unfiredporcelaincrystal.maxStackSize = 64;
unfiredporcelaincrystal.register();

var porcelaincrystal = VanillaFactory.createItem("porcelain_crystal");
porcelaincrystal.maxStackSize = 64;
porcelaincrystal.register();

var crystalcast = VanillaFactory.createItem("crystal_cast");
crystalcast.maxStackSize = 1;
crystalcast.register();

var inscribercrystalpress = VanillaFactory.createItem("inscriber_crystal_press");
inscribercrystalpress.maxStackSize = 64;
inscribercrystalpress.register();

var solidcrystalblank = VanillaFactory.createItem("solid_crystal_blank");
solidcrystalblank.maxStackSize = 64;
solidcrystalblank.register();

var steelcrystalshell = VanillaFactory.createItem("steel_crystal_shell");
steelcrystalshell.maxStackSize = 64;
steelcrystalshell.register();

var stagnantgreenslimecrystal = VanillaFactory.createItem("stagnant_green_slime_crystal");
stagnantgreenslimecrystal.maxStackSize = 64;
stagnantgreenslimecrystal.register();

var stagnantblueslimecrystal = VanillaFactory.createItem("stagnant_blue_slime_crystal");
stagnantblueslimecrystal.maxStackSize = 64;
stagnantblueslimecrystal.register();

var stagnantmagmaslimecrystal = VanillaFactory.createItem("stagnant_magma_slime_crystal");
stagnantmagmaslimecrystal.maxStackSize = 64;
stagnantmagmaslimecrystal.register();
print("Initialized 'contenttweakeritems'");