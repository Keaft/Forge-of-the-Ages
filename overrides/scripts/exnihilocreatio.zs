#Name: exnihilocreatio.zs
#Author: Keaft

import mods.exnihilocreatio.Hammer;
import mods.exnihilocreatio.Sieve;

print("Initializing 'exnihilocreatio.zs'...");

// Hammer
// mods.exnihilocreatio.Hammer.addRecipe(IIngredient, IItemStack, Int, Float, Float);
mods.exnihilocreatio.Hammer.addRecipe(<minecraft:obsidian>, <contenttweaker:obsidian_gravel>, 2, 1, 1);

// Sieve
Sieve.removeAll();
//Sieve.addStringMeshRecipe(IIngredient, IItemStack, Float chance);
//Sieve.addFlintMeshRecipe(IIngredient, IItemStack, Float chance);
//Sieve.addIronMeshRecipe(IIngredient, IItemStack, Float chance);
//Sieve.addDiamondMeshRecipe(IIngredient, IItemStack, Float chance);
//Sieve.add[type]MeshRecipe(<minecraft:gravel>, <minecraft:diamond>, 0.001);

//Dirt
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble>, 1); // Cobblestone
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble>, 1);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble>, 0.1);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble>, 0.1);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble>, 0.5);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble>, 0.5);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:1>, 0.1); //Granite
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:1>, 0.5);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:2>, 0.1); //Diorite
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:2>, 0.5);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:3>, 0.1); //Andesite
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_pebble:3>, 0.5);
Sieve.addStringMeshRecipe(<ore:dirt>, <minecraft:wheat_seeds>, 0.07);
Sieve.addStringMeshRecipe(<ore:dirt>, <minecraft:melon_seeds>, 0.035);
Sieve.addStringMeshRecipe(<ore:dirt>, <minecraft:pumpkin_seeds>, 0.035);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_material:3>, 0.005); //Ancient spore
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_material:4>, 0.005); //Grass Seeds
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_seed_oak>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_seed_spruce>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_seed_birch>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_seed_jungle>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_seed_acacia>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <exnihilocreatio:item_seed_darkoak>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <inspirations:cactus_seeds>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <inspirations:sugar_cane_seeds>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <inspirations:carrot_seeds>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <inspirations:potato_seeds>, 0.025);
//Fun Items obtainable by manual sifting
Sieve.addStringMeshRecipe(<ore:dirt>, <harvestcraft:whitemushroomseeditem>, 0.01);
Sieve.addStringMeshRecipe(<ore:dirt>, <botania:petal>, 0.025);
Sieve.addStringMeshRecipe(<ore:dirt>, <atum:loot_dirty_ring>, 0.005);
Sieve.addStringMeshRecipe(<ore:dirt>, <atum:loot_dirty_broach>, 0.005);
Sieve.addStringMeshRecipe(<ore:dirt>, <atum:coin_dirty>, 0.005);
Sieve.addStringMeshRecipe(<ore:dirt>, <atum:loot_dirty_necklace>, 0.005);
Sieve.addStringMeshRecipe(<ore:dirt>, <woot:xpshard>, 0.001);

//Crushed Andesite
Sieve.addIronMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_boron>, 0.05);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.025);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_lead>, 0.025);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.02);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_boron>, 0.1);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_lead>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_andesite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.04);

//Crushed Diorite
Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_boron>, 0.05);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.025);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lead>, 0.025);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.02);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_boron>, 0.1);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lead>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.04);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lead>, 0.05);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_boron>, 0.05);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.05);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.05);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lead>, 0.075);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_boron>, 0.075);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.075);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.075);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lead>, 0.15);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_boron>, 0.15);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.15);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.15);

//Crushed Granite
Sieve.addIronMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_boron>, 0.05);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.025);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_lead>, 0.025);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.02);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_boron>, 0.1);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_lithium>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_lead>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_granite_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.04);

//Gravel
Sieve.addStringMeshRecipe(<ore:gravel>, <minecraft:flint>, 0.1);
Sieve.addFlintMeshRecipe(<ore:gravel>, <minecraft:flint>, 0.2);
Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:1>, 0.075);
Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:1>, 0.05);
Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:2>, 0.075);
Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:2>, 0.05);
Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:3>, 0.075);
Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:3>, 0.05);
Sieve.addIronMeshRecipe(<ore:gravel>, <minecraft:flint>, 0.3);
Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_iron>, 0.0375);
Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:1>, 0.15);
Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:1>, 0.1);
Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:2>, 0.15);
Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:2>, 0.1);
Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:3>, 0.15);
Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:3>, 0.1);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <minecraft:flint>, 0.4);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_iron>, 0.075);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:1>, 0.3);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:1>, 0.2);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:2>, 0.3);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:2>, 0.2);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:3>, 0.3);
Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_pebble:3>, 0.2);
// Sieve.addStringMeshRecipe(<ore:gravel>, <minecraft:flint>, 0.25);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <minecraft:flint>, 0.25);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <minecraft:coal>, 0.125);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <minecraft:dye:4>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_gold>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_iron>, 0.1);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_copper>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_nickel>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_thorium>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_platinum>, 0.02);
// Sieve.addIronMeshRecipe(<ore:gravel>, <minecraft:diamond>, 0.008);
// Sieve.addIronMeshRecipe(<ore:gravel>, <minecraft:emerald>, 0.008);
// Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_gold>, 0.075);
// Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_iron>, 0.15);
// Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_copper>, 0.075);
// Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_nickel>, 0.075);
// Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_uranium>, 0.05);
// Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_thorium>, 0.075);
// Sieve.addIronMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_platinum>, 0.04);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <minecraft:diamond>, 0.016);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <minecraft:emerald>, 0.016);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_gold>, 0.15);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_iron>, 0.25);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_nickel>, 0.15);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_uranium>, 0.10);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_platinum>, 0.15);
// Sieve.addDiamondMeshRecipe(<ore:gravel>, <exnihilocreatio:item_ore_thorium>, 0.12);

//Red Sand
// Sieve.addDiamondMeshRecipe(<minecraft:sand:1>, <exnihilocreatio:item_ore_iron>, 0.5);

//Sand
Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_iron>, 0.0375);
Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:1>, 0.075);
Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:1>, 0.05);
Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:2>, 0.075);
Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:2>, 0.05);
Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:3>, 0.075);
Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:3>, 0.05);
Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_iron>, 0.075);
Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:1>, 0.15);
Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:1>, 0.1);
Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:2>, 0.15);
Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:2>, 0.1);
Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:3>, 0.15);
Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:3>, 0.1);
Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_iron>, 0.15);
Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:1>, 0.3);
Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:1>, 0.2);
Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:2>, 0.3);
Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:2>, 0.2);
Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:3>, 0.3);
Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_pebble:3>, 0.2);
//Fun Items obtainable by manual sifting
Sieve.addFlintMeshRecipe(<ore:sand>, <woot:xpshard>, 0.001);
Sieve.addFlintMeshRecipe(<ore:sand>, <atum:dusty_bone>, 0.01);
Sieve.addIronMeshRecipe(<ore:sand>, <woot:xpshard>, 0.001);
Sieve.addIronMeshRecipe(<ore:sand>, <atum:dusty_bone>, 0.01);
Sieve.addDiamondMeshRecipe(<ore:sand>, <woot:xpshard>, 0.001);
Sieve.addDiamondMeshRecipe(<ore:sand>, <atum:dusty_bone>, 0.01);
// Sieve.addStringMeshRecipe(<ore:sand>, <minecraft:dye:3>, 0.03);
// Sieve.addStringMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_zinc>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_aluminium>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_tin>, 0.05);
// Sieve.addFlintMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_zinc>, 0.075);
// Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_aluminium>, 0.075);
// Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_tin>, 0.075);
// Sieve.addIronMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_zinc>, 0.075);
// Sieve.addDiamondMeshRecipe(<ore:sand>, <minecraft:prismarine_shard>, 0.02);
// Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_silver>, 0.15);
// Sieve.addDiamondMeshRecipe(<ore:sand>, <exnihilocreatio:item_ore_zinc>, 0.15);

//Dust
Sieve.addStringMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.005);
Sieve.addStringMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.0375);
Sieve.addFlintMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.01);
Sieve.addFlintMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.075);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.025);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.15);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.05);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.3);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.1);
//Fun Items obtainable by manual sifting
Sieve.addStringMeshRecipe(<exnihilocreatio:block_dust>, <woot:xpshard>, 0.001);
Sieve.addStringMeshRecipe(<exnihilocreatio:block_dust>, <atum:coin_dirty>, 0.01);
Sieve.addFlintMeshRecipe(<exnihilocreatio:block_dust>, <woot:xpshard>, 0.001);
Sieve.addFlintMeshRecipe(<exnihilocreatio:block_dust>, <atum:coin_dirty>, 0.01);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <woot:xpshard>, 0.001);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <atum:coin_dirty>, 0.01);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <woot:xpshard>, 0.001);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <atum:coin_dirty>, 0.01);
// Sieve.addStringMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:gunpowder>, 0.07);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_dust>, <appliedenergistics2:material:45>, 0.1); //To remove
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.125);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:glowstone_dust>, 0.0625);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:blaze_powder>, 0.05);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_dust>, <appliedenergistics2:material:45>, 0.2); //To remove
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.25);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <exnihilocreatio:item_ore_yellorium>, 0.01);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <enderio:item_material:20>, 0.01); //To remove
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_dust>, <appliedenergistics2:material:45>, 0.3); //To remove

//Crushed Netherrack
Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_boron>, 0.1);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_lithium>, 0.05);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_lead>, 0.05);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.04);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_uranium>, 0.025);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_boron>, 0.2);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_lithium>, 0.1);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_lead>, 0.1);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_magnesium>, 0.08);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_uranium>, 0.05);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_gold>, 0.25);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_ardite>, 0.1);
// Sieve.addFlintMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_cobalt>, 0.1);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_gold>, 0.25);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_ardite>, 0.2);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_cobalt>, 0.2);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <minecraft:blaze_powder>, 0.05);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <draconicevolution:draconium_dust>, 0.02);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_gold>, 0.4);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_ardite>, 0.3);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_cobalt>, 0.3);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_netherrack_crushed>, <draconicevolution:draconium_dust>, 0.03);

//Soul Sand
// Sieve.addStringMeshRecipe(<minecraft:soul_sand>, <minecraft:nether_wart>, 0.1);
// Sieve.addFlintMeshRecipe(<minecraft:soul_sand>, <minecraft:quartz>, 1);
// Sieve.addFlintMeshRecipe(<minecraft:soul_sand>, <minecraft:quartz>, 0.33);
// Sieve.addDiamondMeshRecipe(<minecraft:soul_sand>, <minecraft:quartz>, 1);
// Sieve.addDiamondMeshRecipe(<minecraft:soul_sand>, <minecraft:quartz>, 0.8);
// Sieve.addDiamondMeshRecipe(<minecraft:soul_sand>, <minecraft:ghast_tear>, 0.02);

//Obsidian Gravel
Sieve.addIronMeshRecipe(<contenttweaker:obsidian_gravel>, <minecraft:redstone>, 0.05);
Sieve.addIronMeshRecipe(<contenttweaker:obsidian_gravel>, <minecraft:dye:4>, 0.005);
Sieve.addIronMeshRecipe(<contenttweaker:obsidian_gravel>, <exnihilocreatio:item_ore_gold>, 0.075);
Sieve.addIronMeshRecipe(<contenttweaker:obsidian_gravel>, <thermalfoundation:material:16>, 0.015);
Sieve.addDiamondMeshRecipe(<contenttweaker:obsidian_gravel>, <minecraft:redstone>, 0.1);
Sieve.addDiamondMeshRecipe(<contenttweaker:obsidian_gravel>, <minecraft:dye:4>, 0.01);
Sieve.addDiamondMeshRecipe(<contenttweaker:obsidian_gravel>, <exnihilocreatio:item_ore_gold>, 0.15);
Sieve.addDiamondMeshRecipe(<contenttweaker:obsidian_gravel>, <thermalfoundation:material:16>, 0.03);
//Fun Items obtainable by manual sifting
Sieve.addIronMeshRecipe(<contenttweaker:obsidian_gravel>, <woot:xpshard>, 0.001);
Sieve.addIronMeshRecipe(<contenttweaker:obsidian_gravel>, <atum:coin_dirty>, 0.001);
Sieve.addDiamondMeshRecipe(<contenttweaker:obsidian_gravel>, <woot:xpshard>, 0.005);
Sieve.addDiamondMeshRecipe(<contenttweaker:obsidian_gravel>, <atum:coin_dirty>, 0.005);

//Crushed Sky Stone
Sieve.addStringMeshRecipe(<exnihilocreatio:block_skystone_crushed>, <appliedenergistics2:crystal_seed>.withTag({progress: 0}), 0.5);
Sieve.addFlintMeshRecipe(<exnihilocreatio:block_skystone_crushed>, <appliedenergistics2:crystal_seed>.withTag({progress: 0}), 0.5);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_skystone_crushed>, <appliedenergistics2:material>, 0.7);
Sieve.addIronMeshRecipe(<exnihilocreatio:block_skystone_crushed>, <appliedenergistics2:crystal_seed>.withTag({progress: 0}), 0.3);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_skystone_crushed>, <appliedenergistics2:material>, 0.8);
Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_skystone_crushed>, <appliedenergistics2:material:1>, 0.1);

//Crushed Endstone
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_aluminium>, 0.15);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_silver>, 0.15);
// Sieve.addIronMeshRecipe(<exnihilocreatio:block_endstone_crushed>, <draconicevolution:draconium_dust>, 0.04);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_aluminium>, 0.25);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_silver>, 0.25);
// Sieve.addDiamondMeshRecipe(<exnihilocreatio:block_endstone_crushed>, <draconicevolution:draconium_dust>, 0.08);

//Leaves

//Dark Oak Leaves
Sieve.addStringMeshRecipe(<minecraft:leaves2:1>, <minecraft:sapling:5>, 0.2);
Sieve.addStringMeshRecipe(<minecraft:leaves2:1>, <minecraft:apple>, 0.05);
Sieve.addStringMeshRecipe(<minecraft:leaves2:1>, <minecraft:golden_apple>, 0.001);
Sieve.addStringMeshRecipe(<minecraft:leaves2:1>, <exnihilocreatio:item_material:2>, 0.025);
Sieve.addFlintMeshRecipe(<minecraft:leaves2:1>, <minecraft:sapling:5>, 0.4);
Sieve.addFlintMeshRecipe(<minecraft:leaves2:1>, <minecraft:apple>, 0.1);
Sieve.addFlintMeshRecipe(<minecraft:leaves2:1>, <minecraft:golden_apple>, 0.003);
Sieve.addFlintMeshRecipe(<minecraft:leaves2:1>, <exnihilocreatio:item_material:2>, 0.05);
Sieve.addIronMeshRecipe(<minecraft:leaves2:1>, <minecraft:sapling:5>, 0.6);
Sieve.addIronMeshRecipe(<minecraft:leaves2:1>, <minecraft:apple>, 0.15);
Sieve.addIronMeshRecipe(<minecraft:leaves2:1>, <minecraft:golden_apple>, 0.005);
Sieve.addIronMeshRecipe(<minecraft:leaves2:1>, <exnihilocreatio:item_material:2>, 0.1);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2:1>, <minecraft:sapling:5>, 0.8);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2:1>, <minecraft:apple>, 0.2);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2:1>, <minecraft:golden_apple>, 0.01);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2:1>, <exnihilocreatio:item_material:2>, 0.2);

//Oak Leaves
Sieve.addStringMeshRecipe(<minecraft:leaves>, <minecraft:sapling>, 0.2);
Sieve.addStringMeshRecipe(<minecraft:leaves>, <minecraft:apple>, 0.05);
Sieve.addStringMeshRecipe(<minecraft:leaves>, <minecraft:golden_apple>, 0.001);
Sieve.addStringMeshRecipe(<minecraft:leaves>, <exnihilocreatio:item_material:2>, 0.025);
Sieve.addFlintMeshRecipe(<minecraft:leaves>, <minecraft:sapling>, 0.4);
Sieve.addFlintMeshRecipe(<minecraft:leaves>, <minecraft:apple>, 0.1);
Sieve.addFlintMeshRecipe(<minecraft:leaves>, <minecraft:golden_apple>, 0.003);
Sieve.addFlintMeshRecipe(<minecraft:leaves>, <exnihilocreatio:item_material:2>, 0.05);
Sieve.addIronMeshRecipe(<minecraft:leaves>, <minecraft:sapling>, 0.6);
Sieve.addIronMeshRecipe(<minecraft:leaves>, <minecraft:apple>, 0.15);
Sieve.addIronMeshRecipe(<minecraft:leaves>, <minecraft:golden_apple>, 0.005);
Sieve.addIronMeshRecipe(<minecraft:leaves>, <exnihilocreatio:item_material:2>, 0.1);
Sieve.addDiamondMeshRecipe(<minecraft:leaves>, <minecraft:sapling>, 0.8);
Sieve.addDiamondMeshRecipe(<minecraft:leaves>, <minecraft:apple>, 0.2);
Sieve.addDiamondMeshRecipe(<minecraft:leaves>, <minecraft:golden_apple>, 0.01);
Sieve.addDiamondMeshRecipe(<minecraft:leaves>, <exnihilocreatio:item_material:2>, 0.2);

//Birch Leaves
Sieve.addStringMeshRecipe(<minecraft:leaves:2>, <minecraft:sapling:2>, 0.2);
Sieve.addStringMeshRecipe(<minecraft:leaves:2>, <minecraft:apple>, 0.05);
Sieve.addStringMeshRecipe(<minecraft:leaves:2>, <minecraft:golden_apple>, 0.001);
Sieve.addStringMeshRecipe(<minecraft:leaves:2>, <exnihilocreatio:item_material:2>, 0.025);
Sieve.addFlintMeshRecipe(<minecraft:leaves:2>, <minecraft:sapling:2>, 0.4);
Sieve.addFlintMeshRecipe(<minecraft:leaves:2>, <minecraft:apple>, 0.1);
Sieve.addFlintMeshRecipe(<minecraft:leaves:2>, <minecraft:golden_apple>, 0.003);
Sieve.addFlintMeshRecipe(<minecraft:leaves:2>, <exnihilocreatio:item_material:2>, 0.05);
Sieve.addIronMeshRecipe(<minecraft:leaves:2>, <minecraft:sapling:2>, 0.6);
Sieve.addIronMeshRecipe(<minecraft:leaves:2>, <minecraft:apple>, 0.15);
Sieve.addIronMeshRecipe(<minecraft:leaves:2>, <minecraft:golden_apple>, 0.005);
Sieve.addIronMeshRecipe(<minecraft:leaves:2>, <exnihilocreatio:item_material:2>, 0.1);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:2>, <minecraft:sapling:2>, 0.8);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:2>, <minecraft:apple>, 0.2);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:2>, <minecraft:golden_apple>, 0.01);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:2>, <exnihilocreatio:item_material:2>, 0.2);

//Jungle Leaves
Sieve.addStringMeshRecipe(<minecraft:leaves:3>, <minecraft:sapling:3>, 0.2);
Sieve.addStringMeshRecipe(<minecraft:leaves:3>, <minecraft:apple>, 0.05);
Sieve.addStringMeshRecipe(<minecraft:leaves:3>, <minecraft:golden_apple>, 0.001);
Sieve.addStringMeshRecipe(<minecraft:leaves:3>, <exnihilocreatio:item_material:2>, 0.025);
Sieve.addFlintMeshRecipe(<minecraft:leaves:3>, <minecraft:sapling:3>, 0.4);
Sieve.addFlintMeshRecipe(<minecraft:leaves:3>, <minecraft:apple>, 0.1);
Sieve.addFlintMeshRecipe(<minecraft:leaves:3>, <minecraft:golden_apple>, 0.003);
Sieve.addFlintMeshRecipe(<minecraft:leaves:3>, <exnihilocreatio:item_material:2>, 0.05);
Sieve.addIronMeshRecipe(<minecraft:leaves:3>, <minecraft:sapling:3>, 0.6);
Sieve.addIronMeshRecipe(<minecraft:leaves:3>, <minecraft:apple>, 0.15);
Sieve.addIronMeshRecipe(<minecraft:leaves:3>, <minecraft:golden_apple>, 0.005);
Sieve.addIronMeshRecipe(<minecraft:leaves:3>, <exnihilocreatio:item_material:2>, 0.1);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:3>, <minecraft:sapling:3>, 0.8);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:3>, <minecraft:apple>, 0.2);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:3>, <minecraft:golden_apple>, 0.01);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:3>, <exnihilocreatio:item_material:2>, 0.2);

//Spruce Leaves
Sieve.addStringMeshRecipe(<minecraft:leaves:1>, <minecraft:sapling:1>, 0.2);
Sieve.addStringMeshRecipe(<minecraft:leaves:1>, <minecraft:apple>, 0.05);
Sieve.addStringMeshRecipe(<minecraft:leaves:1>, <minecraft:golden_apple>, 0.001);
Sieve.addStringMeshRecipe(<minecraft:leaves:1>, <exnihilocreatio:item_material:2>, 0.025);
Sieve.addFlintMeshRecipe(<minecraft:leaves:1>, <minecraft:sapling:1>, 0.4);
Sieve.addFlintMeshRecipe(<minecraft:leaves:1>, <minecraft:apple>, 0.1);
Sieve.addFlintMeshRecipe(<minecraft:leaves:1>, <minecraft:golden_apple>, 0.003);
Sieve.addFlintMeshRecipe(<minecraft:leaves:1>, <exnihilocreatio:item_material:2>, 0.05);
Sieve.addIronMeshRecipe(<minecraft:leaves:1>, <minecraft:sapling:1>, 0.6);
Sieve.addIronMeshRecipe(<minecraft:leaves:1>, <minecraft:apple>, 0.15);
Sieve.addIronMeshRecipe(<minecraft:leaves:1>, <minecraft:golden_apple>, 0.005);
Sieve.addIronMeshRecipe(<minecraft:leaves:1>, <exnihilocreatio:item_material:2>, 0.1);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:1>, <minecraft:sapling:1>, 0.8);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:1>, <minecraft:apple>, 0.2);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:1>, <minecraft:golden_apple>, 0.01);
Sieve.addDiamondMeshRecipe(<minecraft:leaves:1>, <exnihilocreatio:item_material:2>, 0.2);

//Acacia Leaves
Sieve.addStringMeshRecipe(<minecraft:leaves2>, <minecraft:sapling:4>, 0.2);
Sieve.addStringMeshRecipe(<minecraft:leaves2>, <minecraft:apple>, 0.05);
Sieve.addStringMeshRecipe(<minecraft:leaves2>, <minecraft:golden_apple>, 0.001);
Sieve.addStringMeshRecipe(<minecraft:leaves2>, <exnihilocreatio:item_material:2>, 0.025);
Sieve.addFlintMeshRecipe(<minecraft:leaves2>, <minecraft:sapling:4>, 0.4);
Sieve.addFlintMeshRecipe(<minecraft:leaves2>, <minecraft:apple>, 0.1);
Sieve.addFlintMeshRecipe(<minecraft:leaves2>, <minecraft:golden_apple>, 0.003);
Sieve.addFlintMeshRecipe(<minecraft:leaves2>, <exnihilocreatio:item_material:2>, 0.05);
Sieve.addIronMeshRecipe(<minecraft:leaves2>, <minecraft:sapling:4>, 0.6);
Sieve.addIronMeshRecipe(<minecraft:leaves2>, <minecraft:apple>, 0.15);
Sieve.addIronMeshRecipe(<minecraft:leaves2>, <minecraft:golden_apple>, 0.005);
Sieve.addIronMeshRecipe(<minecraft:leaves2>, <exnihilocreatio:item_material:2>, 0.1);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2>, <minecraft:sapling:4>, 0.8);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2>, <minecraft:apple>, 0.2);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2>, <minecraft:golden_apple>, 0.01);
Sieve.addDiamondMeshRecipe(<minecraft:leaves2>, <exnihilocreatio:item_material:2>, 0.2);

print("Initialized 'exnihilocreatio'");