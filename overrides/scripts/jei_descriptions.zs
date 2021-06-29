#Name: jei_descriptions.zs
#Author: Keaft

print("Initializing 'jei_descriptions'...");

//Adding Descriptions
//addDescription(IItemStack[] item, string... desc);
//mods.jei.JEI.addDescription([<minecraft:music_disc>, <minecraft:music_disc>],["Never","Gonna","Give","You","Up","Never","Gonna","Let","You","Down"]);

mods.jei.JEI.addDescription(<biomesoplenty:jar_filled:1>, "Use an Empty Jar on blue fire in the nether.");
mods.jei.JEI.addDescription(<oresabovediamonds:black_opal>, "Found in the deepest darkest depths of the beneath.");
mods.jei.JEI.addDescription(<oresabovediamonds:amethyst>, "Found in the deepest darkest depths of the beneath.");

print("Initialized 'jei_descriptions'");