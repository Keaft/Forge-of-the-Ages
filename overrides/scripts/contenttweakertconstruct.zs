#loader contenttweaker
#modloaded tconstruct
#Name: contenttweakertconstruct.zs
#Author: Keaft

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
import mods.contenttweaker.VanillaFactory;

print("Initializing 'contenttweakertconstruct'...");

//--------------------------------------------------------------------------------------
// Traits
//--------------------------------------------------------------------------------------

val testTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("fishing");
testTrait.color = 0xffaadd;
testTrait.maxLevel = 100;
testTrait.countPerLevel = 20;
testTrait.addItem(<item:aquaculture:loot:1>);
testTrait.localizedName = "Improved Fishing";
testTrait.localizedDescription = "Improve the catching speed. \u2639";
testTrait.afterHit = function(thisTrait, tool, attacker, target, damageDealt, wasCrit, wasHit) {
	attacker.heal(damageDealt);
};
testTrait.register();

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------
// Tool Material
//--------------------------------------------------------------------------------------

val neptuniumMaterial = mods.contenttweaker.tconstruct.MaterialBuilder.create("neptunium_mat");
neptuniumMaterial.color = 0x06e3b2;
neptuniumMaterial.craftable = true;
neptuniumMaterial.liquid = <liquid:molten_neptunium>;
neptuniumMaterial.castable = true;
neptuniumMaterial.addItem(<item:minecraft:comparator>);
neptuniumMaterial.addItem(<item:minecraft:repeater>, 1, 2);
neptuniumMaterial.addItem(<item:minecraft:red_flower:4>);
neptuniumMaterial.representativeItem = <item:aquaculture:loot:1>;
neptuniumMaterial.addHeadMaterialStats(100, 1.5f, 5.5f, 5);
neptuniumMaterial.addHandleMaterialStats(0.3, 500);
neptuniumMaterial.addBowStringMaterialStats(0.5f);
neptuniumMaterial.addMaterialTrait(<ticontrait:fishing>, "bowstring");
neptuniumMaterial.addMaterialTrait(<ticontrait:fishing>, "head");
neptuniumMaterial.addMaterialTrait("blasting", "bowstring");
neptuniumMaterial.addMaterialTrait("blasting", "head");
neptuniumMaterial.addMaterialTrait("dense", null);
neptuniumMaterial.itemLocalizer = function(thisMaterial, itemName){return "Neptunium " + itemName;};
neptuniumMaterial.localizedName = "Neptunium";
neptuniumMaterial.register();

//--------------------------------------------------------------------------------------

print("Initialized 'contenttweakertconstruct'");