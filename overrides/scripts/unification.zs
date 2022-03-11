#Name: unification.zs
#priority 2
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.ICraftingRecipe;

##################################################################
# This script automagically unifies minecraft recipe ingredients #
#  by referencing a mod priority list.                           #
##################################################################

# LIST IOreDictEntries HERE VVV
val oreDictNames = [ 
    <ore:blockAluminum>,
    <ore:blockAmber>,
    <ore:blockAmethyst>,
    <ore:blockBronze>,
    <ore:blockCharcoal>,
    <ore:blockCoal>,
    <ore:blockCobalt>,
    <ore:blockCopper>,
    <ore:blockElectrum>,
    <ore:blockEmerald>,
    <ore:blockGraphite>,
    <ore:blockInvar>,
    <ore:blockIron>,
    <ore:blockLapis>,
    <ore:blockLead>,
    <ore:blockNickel>,
    <ore:blockPlatinum>,
    <ore:blockQuartz>,
    <ore:blockRedstone>,
    <ore:blockSapphire>,
    <ore:blockSilver>,
    <ore:blockSteel>,
    <ore:blockTin>,
    <ore:blockUranium>,
    <ore:blockManganese>
    <ore:gemAmber>,
    <ore:gemAmethyst>,
    <ore:gemSapphire>,
    <ore:ingotAluminum>,
    <ore:ingotBronze>,
    <ore:ingotCopper>,
    <ore:ingotGraphite>,
    <ore:ingotLead>,
    <ore:ingotSilver>,
    <ore:ingotSteel>,
    <ore:ingotTin>,
    <ore:ingotManganese>
    <ore:ingotUranium>,
    <ore:nuggetAluminum>,
    <ore:nuggetCopper>,
    <ore:nuggetDiamond>,
    <ore:nuggetEmerald>,
    <ore:nuggetIron>,
    <ore:nuggetLead>,
    <ore:nuggetNickel>,
    <ore:nuggetPlatinum>,
    <ore:nuggetQuartz>,
    <ore:nuggetSilver>,
    <ore:nuggetTin>,
    <ore:combFilledHoney>,
    <ore:combWax>
] as IOreDictEntry[];

# LIST MOD NAMES IN ORDER OF PRIORITY HERE VVV
val priorityModList = [
    "minecraft",
    "metallurgy",
    "thermalfoundation",
    "harvestcraft",
    "thaumcraft",
    "biomesoplenty",
    "nuclearcraft",
    "tconstruct"
] as string[];

# Work thru the full batch of oreDictNames to unify
for oreDictName in oreDictNames {
    # get all matching entries from the oredictionary
    val oreDictEntries = oreDictName.items;

    # loop thru all matching entries, get the index of the highest-priority one
    var priorityModIndex = 0;
    var priorityItemIndex = 0;
    var prioritySet = false;
    for i, oreDictEntry in oreDictEntries {
        for t, priorityMod in priorityModList {
            if (oreDictEntry.definition.owner == priorityMod) {
                if (!prioritySet || t < priorityModIndex) {
                    priorityModIndex = t;
                    priorityItemIndex = i;
                    prioritySet = true;
                }
                break;
            }
        }
    }

    # set all the matching entries to the highest priority one, if one WAS priority
    if (prioritySet) {
        recipes.replaceAllOccurences(oreDictName, oreDictEntries[priorityItemIndex]);

        for i, oreDictEntry in oreDictEntries {
            if (i != priorityItemIndex) {
                recipes.remove(oreDictEntry);
            }
        }

        # remove duplicate recipes for the same item
        for oreDictEntry in oreDictEntries {
            var cullRecipes = recipes.getRecipesFor(oreDictEntry);
            //print("working to remove duplicates recipes for: " + oreDictEntry.definition.owner + ":" + oreDictEntry.name);

            var finalCullRecipes = [] as ICraftingRecipe[];
            for recipe in cullRecipes {
                for targetRecipe in cullRecipes {
                    var sameIngredients = true;
                    if (recipe.ingredients1D.length != targetRecipe.ingredients1D.length) {
                        sameIngredients = false;
                    } else {
                        //print("There are " + recipe.ingredients1D.length + " items for " + recipe.resourceDomain + ":" + recipe.name);
                        for i in 0 to recipe.ingredients1D.length {
                            // print("In the loop: " + i);
                            if (!isNull(recipe.ingredients1D[i])) {
                                if (recipe.ingredients1D[i].items.length == 0) {
                                    //print("Recipe items for " + recipe.resourceDomain + ":" + recipe.name + " are broken for reasons?");
                                    sameIngredients = false;
                                    break;
                                }
                                // print("trying recipe item: " + recipe.ingredients1D[i].items[0].displayName);
                                // print("recipe item to check against: " + targetRecipe.ingredients1D[i].items[0].displayName);
                                if (recipe.ingredients1D[i].items[0].displayName != targetRecipe.ingredients1D[i].items[0].displayName) {
                                    sameIngredients = false;
                                    break;
                                }
                            } else {
                                if (!isNull(targetRecipe.ingredients1D[i])) {
                                    sameIngredients = false;
                                    break;
                                }   
                            }
                        }
                    }
                    if (sameIngredients) {
                        finalCullRecipes += targetRecipe;
                    }
                }
                var index = finalCullRecipes.length - 1;
                while(index > 0) {
                    recipes.removeByRecipeName(finalCullRecipes[index].resourceDomain + ':' + finalCullRecipes[index].name);
                    index -= 1;
                }
                finalCullRecipes = [];
            }
        }
    }
}
