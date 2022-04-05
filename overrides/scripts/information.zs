#Name: information.zs
#Author: Keaft

print("Initializing 'information'...");

//--------------------------------------------------------------------------------------

// --- Tooltips ---

// - Enchanted Tome of Knowledge

<contenttweaker:enchanted_tome_of_knowledge>.addTooltip("Expand the knowledge of your library!");

// - Elytra Wing
<contenttweaker:elytra_wing>.addTooltip("Flap, Flop, Crash...");
<contenttweaker:elytra_wing>.addShiftTooltip("Something, something, Icarus");

// - Applied Energistics Storage Drives
<contenttweaker:onek_item>.addTooltip(format.red("Open in JEI for more information."));
<contenttweaker:fourk_item>.addTooltip(format.red("Open in JEI for more information."));
<contenttweaker:sixteenk_item>.addTooltip(format.red("Open in JEI for more information."));
<contenttweaker:onek_fluid>.addTooltip(format.red("Open in JEI for more information."));
<contenttweaker:fourk_fluid>.addTooltip(format.red("Open in JEI for more information."));
<contenttweaker:sixteenk_fluid>.addTooltip(format.red("Open in JEI for more information."));


//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- JEI Info Tab ---
//mods.jei.JEI.addDescription(<ore:ingotIron>, "You can use these to create things", "", "things like Armor","","","Yes...","That as well...");
//mods.jei.JEI.addDescription([<minecraft:music_disc>, <minecraft:music_disc>],["Never","Gonna","Give","You","Up","Never","Gonna","Let","You","Down"]);
mods.jei.JEI.addDescription(<contenttweaker:cobalt_ore_stone>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<contenttweaker:ardite_ore_stone>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<metallurgy:platinum_ore>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<metallurgy:orichalcum_ore>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<metallurgy:carmot_ore>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<metallurgy:mithril_ore>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<metallurgy:adamantine_ore>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<metallurgy:atlarus_ore>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<biomesoplenty:jar_filled:1>, "Use an Empty Jar on blue fire in the nether.");
mods.jei.JEI.addDescription(<oresabovediamonds:black_opal>, "Found in the deepest darkest depths of the beneath.");
mods.jei.JEI.addDescription(<oresabovediamonds:amethyst>, "Found in the deepest darkest depths of the beneath.");
mods.jei.JEI.addDescription(<contenttweaker:onek_item>, ["Unique crafting recipe!","This item represents an existing drive you'd like to upgrade.","Upon placing the final item of the recipe in a Crafting TABLE or STATION the item will autocraft, maintaining all of the drive data.","AE2 Crafting Terminal WILL NOT WORK."]);
mods.jei.JEI.addDescription(<contenttweaker:fourk_item>, ["Unique crafting recipe!","This item represents an existing drive you'd like to upgrade.","Upon placing the final item of the recipe in a Crafting TABLE or STATION the item will autocraft, maintaining all of the drive data.","AE2 Crafting Terminal WILL NOT WORK."]);
mods.jei.JEI.addDescription(<contenttweaker:sixteenk_item>, ["Unique crafting recipe!","This item represents an existing drive you'd like to upgrade.","Upon placing the final item of the recipe in a Crafting TABLE or STATION the item will autocraft, maintaining all of the drive data.","AE2 Crafting Terminal WILL NOT WORK."]);
mods.jei.JEI.addDescription(<contenttweaker:onek_fluid>, ["Unique crafting recipe!","This item represents an existing drive you'd like to upgrade.","Upon placing the final item of the recipe in a Crafting TABLE or STATION the item will autocraft, maintaining all of the drive data.","AE2 Crafting Terminal WILL NOT WORK."]);
mods.jei.JEI.addDescription(<contenttweaker:fourk_fluid>, ["Unique crafting recipe!","This item represents an existing drive you'd like to upgrade.","Upon placing the final item of the recipe in a Crafting TABLE or STATION the item will autocraft, maintaining all of the drive data.","AE2 Crafting Terminal WILL NOT WORK."]);
mods.jei.JEI.addDescription(<contenttweaker:sixteenk_fluid>, ["Unique crafting recipe!","This item represents an existing drive you'd like to upgrade.","Upon placing the final item of the recipe in a Crafting TABLE or STATION the item will autocraft, maintaining all of the drive data.","AE2 Crafting Terminal WILL NOT WORK."]);

//--------------------------------------------------------------------------------------

print("Initialized 'information'");