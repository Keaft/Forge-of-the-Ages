#Name: tooltip.zs
#Author: Keaft

print("Initializing 'tooltip'...");

//--------------------------------------------------------------------------------------

// --- Tooltips ---

// - Enchanted Tome of Knowledge

<contenttweaker:enchanted_tome_of_knowledge>.addTooltip("Expand the knowledge of your library!");

// - Elytra Wing
<contenttweaker:elytra_wing>.addTooltip("Flap, Flop, Crash...");
<contenttweaker:elytra_wing>.addShiftTooltip("Something, something, Icarus");

//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

// --- JEI Info Tab ---
//mods.jei.JEI.addDescription(<ore:ingotIron>, "You can use these to create things", "", "things like Armor","","","Yes...","That as well...");
mods.jei.JEI.addDescription(<contenttweaker:cobalt_ore_stone>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");
mods.jei.JEI.addDescription(<contenttweaker:ardite_ore_stone>, "Found in the deepest darkest abyss of the beneath.", "", "... but beware ...");

//--------------------------------------------------------------------------------------

print("Initialized 'tooltip'");