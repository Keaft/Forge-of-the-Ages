#Name: astral_sorcery.zs
#Author: Keaft

import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.Altar;

print("Initializing 'astral_sorcery'...");
//mods.astralsorcery.StarlightInfusion.addInfusion(IItemStack input, IItemStack output, boolean consumeMultiple, float consumptionChance, int craftingTickTime);


mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_orange", <quark:rune:1>, 200, 200, [
      null, <ore:dyeOrange>, null,
      null, <quark:rune:0>, null,
      null, null, null]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_magenta", <quark:rune:2>, 200, 200, [
      null, <ore:dyeMagenta>, null,
      null, <quark:rune:0>, null,
      null, null, null]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_light_blue", <quark:rune:3>, 200, 200, [
      null, <ore:dyeLightBlue>, null,
      null, <quark:rune:0>, null,
      null, null, null]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_yellow", <quark:rune:4>, 200, 200, [
      null, <ore:dyeYellow>, null,
      null, <quark:rune:0>, null,
      null, null, null]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_lime", <quark:rune:5>, 200, 200, [
      null, <ore:dyeLime>, null,
      null, <quark:rune:0>, null,
      null, null, null]);

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_pink", <quark:rune:6>, 200, 200, [
      null, <ore:dyePink>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_gray", <quark:rune:7>, 200, 200, [
      null, <ore:dyeGray>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_light_gray", <quark:rune:8>, 200, 200, [
      null, <ore:dyeLightGray>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_cyan", <quark:rune:9>, 200, 200, [
      null, <ore:dyeCyan>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_purple", <quark:rune:10>, 200, 200, [
      null, <ore:dyePurple>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_blue", <quark:rune:11>, 200, 200, [
      null, <ore:dyeBlue>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_brown", <quark:rune:12>, 200, 200, [
      null, <ore:dyeBrown>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_green", <quark:rune:13>, 200, 200, [
      null, <ore:dyeGreen>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_red", <quark:rune:14>, 200, 200, [
      null, <ore:dyeRed>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("rune_white_to_black", <quark:rune:15>, 200, 200, [
      null, <ore:dyeBlack>, null,
      null, <quark:rune:0>, null,
      null, null, null]);
      

print("Initialized 'astral_sorcery'");