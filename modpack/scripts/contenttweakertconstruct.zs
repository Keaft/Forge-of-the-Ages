#loader contenttweaker
#modloaded tconstruct
#Name: contenttweakertconstruct.zs
#Author: Keaft

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.VanillaFactory;

print("Initializing 'contenttweakertconstruct'...");

//--------------------------------------------------------------------------------------
// Traits
//--------------------------------------------------------------------------------------


// Not currently properly implemented
// val testTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("fishing");
// testTrait.color = 0xffaadd;
// testTrait.maxLevel = 100;
// testTrait.countPerLevel = 20;
// testTrait.addItem(<item:aquaculture:loot:1>);
// testTrait.localizedName = "Improved Fishing";
// testTrait.localizedDescription = "Improve the catching speed. \u2639";
// testTrait.afterHit = function(thisTrait, tool, attacker, target, damageDealt, wasCrit, wasHit) {
	// attacker.heal(damageDealt);
// };
// testTrait.register();

// Unbreaking not working
// val unbreakingTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("unbreaking");
// unbreakingTrait.color = 0x5b5b5b;
// unbreakingTrait.maxLevel = 1;
// unbreakingTrait.countPerLevel = 1;
// unbreakingTrait.addItem(<item:aquaculture:loot:1>);
// unbreakingTrait.localizedName = "Unbreaking";
// unbreakingTrait.localizedDescription = "This tool is unbreakable!";
// unbreakingTrait.onToolDamage = function(trait, tool, unmodifiedAmount, newAmount, holder) {
	// return unmodifiedAmount; //Or your modified value
// };
// unbreakingTrait.register();

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------
// Materials
//--------------------------------------------------------------------------------------

// Not currently properly implemented
// val neptuniumMaterial = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create("neptunium_mat");
// neptuniumMaterial.color = 0x06e3b2;
// neptuniumMaterial.craftable = true;
// neptuniumMaterial.liquid = <liquid:molten_neptunium>;
// neptuniumMaterial.castable = true;
// neptuniumMaterial.addItem(<item:minecraft:comparator>); // I think these addItems are mostly for demonstration purposes. It's been a minute since I've looked at this...
// neptuniumMaterial.addItem(<item:minecraft:repeater>, 1, 2);
// neptuniumMaterial.addItem(<item:minecraft:red_flower:4>);
// neptuniumMaterial.representativeItem = <item:aquaculture:loot:1>;
// neptuniumMaterial.addHeadMaterialStats(100, 1.5f, 5.5f, 5);
// neptuniumMaterial.addHandleMaterialStats(0.3, 500);
// neptuniumMaterial.addBowStringMaterialStats(0.5f);
// neptuniumMaterial.addMaterialTrait(<ticontrait:fishing>, "bowstring");
// neptuniumMaterial.addMaterialTrait(<ticontrait:fishing>, "head");
// neptuniumMaterial.addMaterialTrait("blasting", "bowstring");
// neptuniumMaterial.addMaterialTrait("blasting", "head");
// neptuniumMaterial.addMaterialTrait("dense", null);
// neptuniumMaterial.itemLocalizer = function(thisMaterial, itemName){return "Neptunium " + itemName;};
// neptuniumMaterial.localizedName = "Neptunium";
// neptuniumMaterial.register();

//Certus Quartz
val certusquartzMaterial = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create("certusquartz_mat");
certusquartzMaterial.color = 0xccecff;
certusquartzMaterial.craftable = false;
certusquartzMaterial.liquid = <liquid:molten_certus_quartz>;
certusquartzMaterial.castable = true;
certusquartzMaterial.addItem(<item:appliedenergistics2:material>);
certusquartzMaterial.representativeItem = <item:appliedenergistics2:material>;
certusquartzMaterial.addHeadMaterialStats(150, 4.5f, 3.38f, 2);
certusquartzMaterial.addHandleMaterialStats(0.75, 23);
certusquartzMaterial.addExtraMaterialStats(19);
certusquartzMaterial.addBowMaterialStats(0.87f, 1.0f, 0.0f);
certusquartzMaterial.addCoreMaterialStats(8.0f, 11.25f);
certusquartzMaterial.addPlatesMaterialStats(0.75f, 5.0f, 0.0f);
certusquartzMaterial.addTrimMaterialStats(3.0f);
certusquartzMaterial.addProjectileMaterialStats();
certusquartzMaterial.itemLocalizer = function(thisMaterial, itemName){return "Certus Quartz " + itemName;};
certusquartzMaterial.localizedName = "Certus Quartz";
certusquartzMaterial.register();

//Fluix
val fluixMaterial = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create("fluix_mat");
fluixMaterial.color = 0xa100e6;
fluixMaterial.craftable = false;
fluixMaterial.liquid = <liquid:molten_fluix>;
fluixMaterial.castable = true;
fluixMaterial.addItem(<item:appliedenergistics2:material:7>);
fluixMaterial.representativeItem = <item:appliedenergistics2:material:7>;
fluixMaterial.addHeadMaterialStats(206, 4.5f, 3.38f, 2);
fluixMaterial.addHandleMaterialStats(1.0, 11);
fluixMaterial.addExtraMaterialStats(23);
fluixMaterial.addBowMaterialStats(1.11f, 1.25f, 4.0f);
fluixMaterial.addCoreMaterialStats(8.0f, 11.62f);
fluixMaterial.addPlatesMaterialStats(1.0f, 3.0f, 0.0f);
fluixMaterial.addTrimMaterialStats(4.0f);
fluixMaterial.addProjectileMaterialStats();
fluixMaterial.itemLocalizer = function(thisMaterial, itemName){return "Fluix " + itemName;};
fluixMaterial.localizedName = "Fluix";
fluixMaterial.register();

//Unobtanium
val unobtaniumMaterial = mods.contenttweaker.conarm.ExtendedMaterialBuilder.create("unobtanium_mat");
unobtaniumMaterial.color = 0x2D5576;
unobtaniumMaterial.craftable = false;
unobtaniumMaterial.liquid = <liquid:molten_unobtanium>;
unobtaniumMaterial.castable = true;
unobtaniumMaterial.addItem(<item:contenttweaker:unobtanium_ingot>);
unobtaniumMaterial.representativeItem = <item:contenttweaker:unobtanium_ingot>;
unobtaniumMaterial.addHeadMaterialStats(5, 4.5f, 0.01f, 1);
unobtaniumMaterial.itemLocalizer = function(thisMaterial, itemName){return "Unobtanium " + itemName;};
unobtaniumMaterial.localizedName = "Unobtanium";
unobtaniumMaterial.register();

//--------------------------------------------------------------------------------------

print("Initialized 'contenttweakertconstruct'");