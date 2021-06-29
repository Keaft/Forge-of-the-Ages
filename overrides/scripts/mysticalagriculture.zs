#Name: mysticalagriculture.zs
#Author: Keaft

print("Initializing 'mysticalagriculture'...");

//--------------------------------------------------------------------------------------
// Notes: Mystical Agriculture recipe changes for more of a progression style.
//--------------------------------------------------------------------------------------

// --- Water Seeds ---
recipes.removeByRecipeName("mysticalagriculture:water_seeds");
recipes.addShaped("mysticalagriculture_water_seeds", <mysticalagriculture:water_seeds>, [[<minecraft:water_bucket>,<mysticalagriculture:crafting:1>,<minecraft:water_bucket>], [<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:18>,<mysticalagriculture:crafting:1>], [<minecraft:water_bucket>,<mysticalagriculture:crafting:1>,<minecraft:water_bucket>]]);

// --- Watering Cans ---
//Prudentium Watering Can
recipes.replaceAllOccurences(<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can>, <mysticalagriculture:watering_can:1>);

//Intermedium Watering Can
recipes.replaceAllOccurences(<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can:1>, <mysticalagriculture:watering_can:2>);

//Superium Watering Can
recipes.replaceAllOccurences(<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can:2>, <mysticalagriculture:watering_can:3>);

//Supremium Watering Can
recipes.replaceAllOccurences(<mysticalagriculture:crafting:48>, <mysticalagriculture:watering_can:3>, <mysticalagriculture:watering_can:4>);

// --- Helmets ---
//Inferium Helmet, to enable crafting in whichever rows.
recipes.removeByRecipeName("mysticalagriculture:inferium_helmet");
recipes.addShaped("mysticalagriculture_inferium_helmet", <mysticalagriculture:inferium_helmet>, [[<mysticalagriculture:crafting:33>,<mysticalagriculture:gear:5>,<mysticalagriculture:crafting:33>], [<mysticalagriculture:crafting:33>,null,<mysticalagriculture:crafting:33>]]);

//Prudentium Helmet
recipes.removeByRecipeName("mysticalagriculture:prudentium_helmet");
recipes.addShaped("mysticalagriculture_prudentium_helmet", <mysticalagriculture:prudentium_helmet>, [[<mysticalagriculture:crafting:34>,<mysticalagriculture:gear:6>,<mysticalagriculture:crafting:34>], [<mysticalagriculture:crafting:34>,<mysticalagriculture:inferium_helmet>.anyDamage(),<mysticalagriculture:crafting:34>]]);

//Intermedium Helmet
recipes.removeByRecipeName("mysticalagriculture:intermedium_helmet");
recipes.addShaped("mysticalagriculture_intermedium_helmet", <mysticalagriculture:intermedium_helmet>, [[<mysticalagriculture:crafting:35>,<mysticalagriculture:gear:7>,<mysticalagriculture:crafting:35>], [<mysticalagriculture:crafting:35>,<mysticalagriculture:prudentium_helmet>.anyDamage(),<mysticalagriculture:crafting:35>]]);

//Superium Helmet
recipes.removeByRecipeName("mysticalagriculture:superium_helmet");
recipes.addShaped("mysticalagriculture_superium_helmet", <mysticalagriculture:superium_helmet>, [[<mysticalagriculture:crafting:36>,<mysticalagriculture:gear:8>,<mysticalagriculture:crafting:36>], [<mysticalagriculture:crafting:36>,<mysticalagriculture:intermedium_helmet>.anyDamage(),<mysticalagriculture:crafting:36>]]);

//Supremium Helmet
recipes.removeByRecipeName("mysticalagriculture:supremium_helmet");
recipes.addShaped("mysticalagriculture_supremium_helmet", <mysticalagriculture:supremium_helmet>, [[<mysticalagriculture:crafting:37>,<mysticalagriculture:gear:9>,<mysticalagriculture:crafting:37>], [<mysticalagriculture:crafting:37>,<mysticalagriculture:superium_helmet>.anyDamage(),<mysticalagriculture:crafting:37>]]);

// --- Chestplates ---
//Prudentium Chestplate
recipes.removeByRecipeName("mysticalagriculture:prudentium_chestplate");
recipes.addShaped("mysticalagriculture_prudentium_chestplate", <mysticalagriculture:prudentium_chestplate>, [[<mysticalagriculture:crafting:34>,<mysticalagriculture:inferium_chestplate>.anyDamage(),<mysticalagriculture:crafting:34>], [<mysticalagriculture:crafting:34>,<mysticalagriculture:gear:6>,<mysticalagriculture:crafting:34>], [<mysticalagriculture:crafting:34>,<mysticalagriculture:crafting:34>,<mysticalagriculture:crafting:34>]]);

//Intermedium Chestplate
recipes.removeByRecipeName("mysticalagriculture:intermedium_chestplate");
recipes.addShaped("mysticalagriculture_intermedium_chestplate", <mysticalagriculture:intermedium_chestplate>, [[<mysticalagriculture:crafting:35>,<mysticalagriculture:prudentium_chestplate>.anyDamage(),<mysticalagriculture:crafting:35>],[<mysticalagriculture:crafting:35>, <mysticalagriculture:gear:7>, <mysticalagriculture:crafting:35>], [<mysticalagriculture:crafting:35>,<mysticalagriculture:crafting:35>,<mysticalagriculture:crafting:35>]]);

//Superium Chestplate
recipes.removeByRecipeName("mysticalagriculture:superium_chestplate");
recipes.addShaped("mysticalagriculture_superium_chestplate", <mysticalagriculture:superium_chestplate>, [[<mysticalagriculture:crafting:36>,<mysticalagriculture:intermedium_chestplate>.anyDamage(),<mysticalagriculture:crafting:36>], [<mysticalagriculture:crafting:36>,<mysticalagriculture:gear:8>,<mysticalagriculture:crafting:36>], [<mysticalagriculture:crafting:36>,<mysticalagriculture:crafting:36>,<mysticalagriculture:crafting:36>]]);

//Supremium Chestplate
recipes.removeByRecipeName("mysticalagriculture:supremium_chestplate");
recipes.addShaped("mysticalagriculture_supremium_chestplate", <mysticalagriculture:supremium_chestplate>, [[<mysticalagriculture:crafting:37>,<mysticalagriculture:superium_chestplate>.anyDamage(),<mysticalagriculture:crafting:37>], [<mysticalagriculture:crafting:37>,<mysticalagriculture:gear:9>,<mysticalagriculture:crafting:37>], [<mysticalagriculture:crafting:37>,<mysticalagriculture:crafting:37>,<mysticalagriculture:crafting:37>]]);

// --- Leggings ---
//Prudentium Leggings
recipes.removeByRecipeName("mysticalagriculture:prudentium_leggings");
recipes.addShaped("mysticalagriculture_prudentium_leggings", <mysticalagriculture:prudentium_leggings>, [[<mysticalagriculture:crafting:34>,<mysticalagriculture:gear:6>,<mysticalagriculture:crafting:34>], [<mysticalagriculture:crafting:34>,<mysticalagriculture:inferium_leggings>.anyDamage(),<mysticalagriculture:crafting:34>], [<mysticalagriculture:crafting:34>,null,<mysticalagriculture:crafting:34>]]);

//Intermedium Leggings
recipes.removeByRecipeName("mysticalagriculture:intermedium_leggings");
recipes.addShaped("mysticalagriculture_intermedium_leggings", <mysticalagriculture:intermedium_leggings>, [[<mysticalagriculture:crafting:35>,<mysticalagriculture:gear:7>,<mysticalagriculture:crafting:35>], [<mysticalagriculture:crafting:35>,<mysticalagriculture:prudentium_leggings>.anyDamage(),<mysticalagriculture:crafting:35>], [<mysticalagriculture:crafting:35>,null,<mysticalagriculture:crafting:35>]]);

//Superium Leggings
recipes.removeByRecipeName("mysticalagriculture:superium_leggings");
recipes.addShaped("mysticalagriculture_superium_leggings", <mysticalagriculture:superium_leggings>, [[<mysticalagriculture:crafting:36>,<mysticalagriculture:gear:8>,<mysticalagriculture:crafting:36>], [<mysticalagriculture:crafting:36>,<mysticalagriculture:intermedium_leggings>.anyDamage(),<mysticalagriculture:crafting:36>], [<mysticalagriculture:crafting:36>,null,<mysticalagriculture:crafting:36>]]);

//Supremium Leggings
recipes.removeByRecipeName("mysticalagriculture:supremium_leggings");
recipes.addShaped("mysticalagriculture_supremium_leggings", <mysticalagriculture:supremium_leggings>, [[<mysticalagriculture:crafting:37>,<mysticalagriculture:gear:9>,<mysticalagriculture:crafting:37>], [<mysticalagriculture:crafting:37>,<mysticalagriculture:superium_leggings>.anyDamage(),<mysticalagriculture:crafting:37>], [<mysticalagriculture:crafting:37>,null,<mysticalagriculture:crafting:37>]]);

// --- Boots ---
//Inferium Boots, to enable crafting in whichever rows.
recipes.removeByRecipeName("mysticalagriculture:inferium_boots");
recipes.addShaped("mysticalagriculture_inferium_boots", <mysticalagriculture:inferium_boots>, [[<mysticalagriculture:crafting:33>,null,<mysticalagriculture:crafting:33>], [<mysticalagriculture:crafting:33>,null,<mysticalagriculture:gear:5>]]);

//Prudentium Boots
recipes.removeByRecipeName("mysticalagriculture:prudentium_boots");
recipes.addShaped("mysticalagriculture_prudentium_boots", <mysticalagriculture:prudentium_boots>, [[<mysticalagriculture:crafting:34>,<mysticalagriculture:inferium_boots>.anyDamage(),<mysticalagriculture:crafting:34>], [<mysticalagriculture:crafting:34>,null,<mysticalagriculture:gear:6>]]);

//Intermedium Boots
recipes.removeByRecipeName("mysticalagriculture:intermedium_boots");
recipes.addShaped("mysticalagriculture_intermedium_boots", <mysticalagriculture:intermedium_boots>, [[<mysticalagriculture:crafting:35>,<mysticalagriculture:prudentium_boots>.anyDamage(),<mysticalagriculture:crafting:35>], [<mysticalagriculture:crafting:35>,null,<mysticalagriculture:gear:7>]]);

//Superium Boots
recipes.removeByRecipeName("mysticalagriculture:superium_boots");
recipes.addShaped("mysticalagriculture_superium_boots", <mysticalagriculture:superium_boots>, [[<mysticalagriculture:crafting:36>,<mysticalagriculture:intermedium_boots>.anyDamage(),<mysticalagriculture:crafting:36>], [<mysticalagriculture:crafting:36>,null,<mysticalagriculture:gear:8>]]);

//Supremium Boots
recipes.removeByRecipeName("mysticalagriculture:supremium_boots");
recipes.addShaped("mysticalagriculture_supremium_boots", <mysticalagriculture:supremium_boots>, [[<mysticalagriculture:crafting:37>,<mysticalagriculture:superium_boots>.anyDamage(),<mysticalagriculture:crafting:37>], [<mysticalagriculture:crafting:37>,null,<mysticalagriculture:gear:9>]]);

// --- Swords ---
//Inferium Sword
recipes.removeByRecipeName("mysticalagriculture:inferium_sword");
recipes.addShaped("mysticalagriculture_inferium_sword", <mysticalagriculture:inferium_sword>, [[<mysticalagriculture:crafting:33>], [<mysticalagriculture:gear>], [<mysticalagriculture:crafting:22>]]);

//Prudentium Sword
recipes.removeByRecipeName("mysticalagriculture:prudentium_sword");
recipes.addShaped("mysticalagriculture_prudentium_sword", <mysticalagriculture:prudentium_sword>, [[<mysticalagriculture:crafting:34>], [<mysticalagriculture:gear:1>], [<mysticalagriculture:inferium_sword>.anyDamage()]]);

//Intermedium Sword
recipes.removeByRecipeName("mysticalagriculture:intermedium_sword");
recipes.addShaped("mysticalagriculture_intermedium_sword", <mysticalagriculture:intermedium_sword>, [[<mysticalagriculture:crafting:35>], [<mysticalagriculture:gear:2>], [<mysticalagriculture:prudentium_sword>.anyDamage()]]);

//Superium Sword
recipes.removeByRecipeName("mysticalagriculture:superium_sword");
recipes.addShaped("mysticalagriculture_superium_sword", <mysticalagriculture:superium_sword>, [[<mysticalagriculture:crafting:36>], [<mysticalagriculture:gear:3>], [<mysticalagriculture:intermedium_sword>.anyDamage()]]);

//Supremium Sword
recipes.removeByRecipeName("mysticalagriculture:supremium_sword");
recipes.addShaped("mysticalagriculture_supremium_sword", <mysticalagriculture:supremium_sword>, [[<mysticalagriculture:crafting:37>], [<mysticalagriculture:gear:4>], [<mysticalagriculture:superium_sword>.anyDamage()]]);

// --- Pickaxes ---
//Prudentium Pickaxe
recipes.removeByRecipeName("mysticalagriculture:prudentium_pickaxe");
recipes.addShaped("mysticalagriculture_prudentium_pickaxe", <mysticalagriculture:prudentium_pickaxe>, [[<mysticalagriculture:crafting:34>, <mysticalagriculture:gear:1>, <mysticalagriculture:crafting:34>], [null, <mysticalagriculture:inferium_pickaxe>.anyDamage(), null], [null, <mysticalagriculture:crafting:22>, null]]);

//Intermedium Pickaxe
recipes.removeByRecipeName("mysticalagriculture:intermedium_pickaxe");
recipes.addShaped("mysticalagriculture_intermedium_pickaxe", <mysticalagriculture:intermedium_pickaxe>, [[<mysticalagriculture:crafting:35>, <mysticalagriculture:gear:2>, <mysticalagriculture:crafting:35>], [null, <mysticalagriculture:prudentium_pickaxe>.anyDamage(), null], [null, <mysticalagriculture:crafting:22>, null]]);

//Superium Pickaxe
recipes.removeByRecipeName("mysticalagriculture:superium_pickaxe");
recipes.addShaped("mysticalagriculture_superium_pickaxe", <mysticalagriculture:superium_pickaxe>, [[<mysticalagriculture:crafting:36>, <mysticalagriculture:gear:3>, <mysticalagriculture:crafting:36>], [null, <mysticalagriculture:intermedium_pickaxe>.anyDamage(), null], [null, <mysticalagriculture:crafting:22>, null]]);

//Supremium Pickaxe
recipes.removeByRecipeName("mysticalagriculture:supremium_pickaxe");
recipes.addShaped("mysticalagriculture_supremium_pickaxe", <mysticalagriculture:supremium_pickaxe>.withTag({}), [[<mysticalagriculture:crafting:37>, <mysticalagriculture:gear:4>, <mysticalagriculture:crafting:37>], [null, <mysticalagriculture:superium_pickaxe>.anyDamage(), null], [null, <mysticalagriculture:crafting:22>, null]]);

// --- Shovels ---
//Inferium Shovel
recipes.removeByRecipeName("mysticalagriculture:inferium_shovel");
recipes.addShaped("mysticalagriculture_inferium_shovel", <mysticalagriculture:inferium_shovel>, [[<mysticalagriculture:gear>], [<mysticalagriculture:crafting:22>], [<mysticalagriculture:crafting:22>]]);

//Prudentium Shovel
recipes.removeByRecipeName("mysticalagriculture:prudentium_shovel");
recipes.addShaped("mysticalagriculture_prudentium_shovel", <mysticalagriculture:prudentium_shovel>, [[<mysticalagriculture:gear:1>], [<mysticalagriculture:inferium_shovel>.anyDamage()], [<mysticalagriculture:crafting:22>]]);

//Intermedium Shovel
recipes.removeByRecipeName("mysticalagriculture:intermedium_shovel");
recipes.addShaped("mysticalagriculture_intermedium_shovel", <mysticalagriculture:intermedium_shovel>, [[<mysticalagriculture:gear:2>], [<mysticalagriculture:prudentium_shovel>.anyDamage()], [<mysticalagriculture:crafting:22>]]);

//Superium Shovel
recipes.removeByRecipeName("mysticalagriculture:superium_shovel");
recipes.addShaped("mysticalagriculture_superium_shovel", <mysticalagriculture:superium_shovel>, [[<mysticalagriculture:gear:3>], [<mysticalagriculture:intermedium_shovel>.anyDamage()], [<mysticalagriculture:crafting:22>]]);

//Supremium Shovel
recipes.removeByRecipeName("mysticalagriculture:supremium_shovel");
recipes.addShaped("mysticalagriculture_supremium_shovel", <mysticalagriculture:supremium_shovel>.withTag({}), [[<mysticalagriculture:gear:4>], [<mysticalagriculture:superium_shovel>.anyDamage()], [<mysticalagriculture:crafting:22>]]);

// --- Axes ---
//Inferium Axe
recipes.removeByRecipeName("mysticalagriculture:inferium_axe");
recipes.addShapedMirrored("mysticalagriculture_inferium_axe", <mysticalagriculture:inferium_axe>, [[<mysticalagriculture:crafting:33>, <mysticalagriculture:crafting:33>], [<mysticalagriculture:gear>, <mysticalagriculture:crafting:22>], [null, <mysticalagriculture:crafting:22>]]);

//Prudentium Axe
recipes.removeByRecipeName("mysticalagriculture:prudentium_axe");
recipes.addShapedMirrored("mysticalagriculture_prudentium_axe", <mysticalagriculture:prudentium_axe>, [[<mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:34>], [<mysticalagriculture:gear:1>, <mysticalagriculture:inferium_axe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

//Intermedium Axe
recipes.removeByRecipeName("mysticalagriculture:intermedium_axe");
recipes.addShapedMirrored("mysticalagriculture_intermedium_axe", <mysticalagriculture:intermedium_axe>, [[<mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:35>], [<mysticalagriculture:gear:2>, <mysticalagriculture:prudentium_axe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

//Superium Axe
recipes.removeByRecipeName("mysticalagriculture:superium_axe");
recipes.addShapedMirrored("mysticalagriculture_superium_axe", <mysticalagriculture:superium_axe>, [[<mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:36>], [<mysticalagriculture:gear:3>, <mysticalagriculture:intermedium_axe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

//Supremium Axe
recipes.removeByRecipeName("mysticalagriculture:supremium_axe");
recipes.addShapedMirrored("mysticalagriculture_supremium_axe", <mysticalagriculture:supremium_axe>, [[<mysticalagriculture:crafting:37>, <mysticalagriculture:crafting:37>], [<mysticalagriculture:gear:4>, <mysticalagriculture:superium_axe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

// --- Hoes ---
//Inferium Hoe
recipes.removeByRecipeName("mysticalagriculture:inferium_hoe");
recipes.addShapedMirrored("mysticalagriculture_inferium_hoe", <mysticalagriculture:inferium_hoe>, [[<mysticalagriculture:crafting:33>, <mysticalagriculture:gear>], [null, <mysticalagriculture:crafting:22>], [null, <mysticalagriculture:crafting:22>]]);

//Prudentium Hoe
recipes.removeByRecipeName("mysticalagriculture:prudentium_hoe");
recipes.addShapedMirrored("mysticalagriculture_prudentium_hoe", <mysticalagriculture:prudentium_hoe>, [[<mysticalagriculture:crafting:34>, <mysticalagriculture:gear:1>], [null, <mysticalagriculture:inferium_hoe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

//Intermedium Hoe
recipes.removeByRecipeName("mysticalagriculture:intermedium_hoe");
recipes.addShapedMirrored("mysticalagriculture_intermedium_hoe", <mysticalagriculture:intermedium_hoe>, [[<mysticalagriculture:crafting:35>, <mysticalagriculture:gear:2>], [null, <mysticalagriculture:prudentium_hoe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

//Superium Hoe
recipes.removeByRecipeName("mysticalagriculture:superium_hoe");
recipes.addShapedMirrored("mysticalagriculture_superium_hoe", <mysticalagriculture:superium_hoe>, [[<mysticalagriculture:crafting:36>, <mysticalagriculture:gear:3>], [null, <mysticalagriculture:intermedium_hoe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

//Supremium Hoe
recipes.removeByRecipeName("mysticalagriculture:supremium_hoe");
recipes.addShapedMirrored("mysticalagriculture_supremium_hoe", <mysticalagriculture:supremium_hoe>, [[<mysticalagriculture:crafting:37>, <mysticalagriculture:gear:4>], [null, <mysticalagriculture:superium_hoe>.anyDamage()], [null, <mysticalagriculture:crafting:22>]]);

// --- Shears ---
//Inferium Shears
recipes.removeByRecipeName("mysticalagriculture:inferium_shears");
recipes.addShapedMirrored("mysticalagriculture_inferium_shears", <mysticalagriculture:inferium_shears>, [[<mysticalagriculture:crafting:33>, null], [null, <mysticalagriculture:gear>]]);

//Prudentium Shears
recipes.removeByRecipeName("mysticalagriculture:prudentium_shears");
recipes.addShapedMirrored("mysticalagriculture_prudentium_shears", <mysticalagriculture:prudentium_shears>, [[<mysticalagriculture:crafting:34>, null], [<mysticalagriculture:inferium_shears>.anyDamage(), <mysticalagriculture:gear:1>]]);

//Intermedium Shears
recipes.removeByRecipeName("mysticalagriculture:intermedium_shears");
recipes.addShapedMirrored("mysticalagriculture_intermedium_shears", <mysticalagriculture:intermedium_shears>, [[<mysticalagriculture:crafting:35>, null], [<mysticalagriculture:prudentium_shears>.anyDamage(), <mysticalagriculture:gear:2>]]);

//Superium Shears
recipes.removeByRecipeName("mysticalagriculture:superium_shears");
recipes.addShapedMirrored("mysticalagriculture_superium_shears", <mysticalagriculture:superium_shears>, [[<mysticalagriculture:crafting:36>, null], [<mysticalagriculture:intermedium_shears>.anyDamage(), <mysticalagriculture:gear:3>]]);

//Supremium Shears
recipes.removeByRecipeName("mysticalagriculture:supremium_shears");
recipes.addShapedMirrored("mysticalagriculture_supremium_shears", <mysticalagriculture:supremium_shears>, [[<mysticalagriculture:crafting:37>, null], [<mysticalagriculture:superium_shears>.anyDamage(), <mysticalagriculture:gear:4>]]);

// --- Bows ---
//Prudentium Bow
recipes.removeByRecipeName("mysticalagriculture:prudentium_bow");
recipes.addShaped("mysticalagriculture_prudentium_bow", <mysticalagriculture:prudentium_bow>, [[null, <mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:gear:1>, <mysticalagriculture:inferium_bow>.anyDamage(), <mysticalagriculture:crafting:23>], [null, <mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:23>]]);

//Intermedium Bow
recipes.removeByRecipeName("mysticalagriculture:intermedium_bow");
recipes.addShaped("mysticalagriculture_intermedium_bow", <mysticalagriculture:intermedium_bow>, [[null, <mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:gear:2>, <mysticalagriculture:prudentium_bow>.anyDamage(), <mysticalagriculture:crafting:23>], [null, <mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:23>]]);

//Superium Bow
recipes.removeByRecipeName("mysticalagriculture:superium_bow");
recipes.addShaped("mysticalagriculture_superium_bow", <mysticalagriculture:superium_bow>, [[null, <mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:gear:3>, <mysticalagriculture:intermedium_bow>.anyDamage(), <mysticalagriculture:crafting:23>], [null, <mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:23>]]);

//Supremium Bow
recipes.removeByRecipeName("mysticalagriculture:supremium_bow");
recipes.addShaped("mysticalagriculture_supremium_bow", <mysticalagriculture:supremium_bow>.withTag({}), [[null, <mysticalagriculture:crafting:37>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:gear:4>, <mysticalagriculture:superium_bow>.anyDamage(), <mysticalagriculture:crafting:23>], [null, <mysticalagriculture:crafting:37>, <mysticalagriculture:crafting:23>]]);

// --- Sickles ---
//Prudentium Sickle
recipes.removeByRecipeName("mysticalagriculture:prudentium_sickle");
recipes.addShaped("mysticalagriculture_prudentium_sickle", <mysticalagriculture:prudentium_sickle>, [[null, <mysticalagriculture:crafting:34>, null], [null, <mysticalagriculture:inferium_sickle>.anyDamage(), <mysticalagriculture:gear:1>], [<mysticalagriculture:crafting:22>, <mysticalagriculture:crafting:34>, null]]);

//Intermedium Sickle
recipes.removeByRecipeName("mysticalagriculture:intermedium_sickle");
recipes.addShaped("mysticalagriculture_intermedium_sickle", <mysticalagriculture:intermedium_sickle>, [[null, <mysticalagriculture:crafting:35>, null], [null, <mysticalagriculture:prudentium_sickle>.anyDamage(), <mysticalagriculture:gear:2>], [<mysticalagriculture:crafting:22>, <mysticalagriculture:crafting:35>, null]]);

//Superium Sickle
recipes.removeByRecipeName("mysticalagriculture:superium_sickle");
recipes.addShaped("mysticalagriculture_superium_sickle", <mysticalagriculture:superium_sickle>, [[null, <mysticalagriculture:crafting:36>, null], [null, <mysticalagriculture:intermedium_sickle>.anyDamage(), <mysticalagriculture:gear:3>], [<mysticalagriculture:crafting:22>, <mysticalagriculture:crafting:36>, null]]);

//Supremium Sickle
recipes.removeByRecipeName("mysticalagriculture:supremium_sickle");
recipes.addShaped("mysticalagriculture_supremium_sickle", <mysticalagriculture:supremium_sickle>, [[null, <mysticalagriculture:crafting:37>, null], [null, <mysticalagriculture:superium_sickle>.anyDamage(), <mysticalagriculture:gear:4>], [<mysticalagriculture:crafting:22>, <mysticalagriculture:crafting:37>, null]]);

// --- Scythes ---
//Prudentium Scythe
recipes.removeByRecipeName("mysticalagriculture:prudentium_scythe");
recipes.addShaped("mysticalagriculture_prudentium_scythe", <mysticalagriculture:prudentium_scythe>, [[<mysticalagriculture:crafting:34>, <mysticalagriculture:gear:1>, <mysticalagriculture:inferium_scythe>.anyDamage()], [null, <mysticalagriculture:crafting:22>, null], [<mysticalagriculture:crafting:22>, null, null]]);

//Intermedium Scythe
recipes.removeByRecipeName("mysticalagriculture:intermedium_scythe");
recipes.addShaped("mysticalagriculture_intermedium_scythe", <mysticalagriculture:intermedium_scythe>, [[<mysticalagriculture:crafting:35>, <mysticalagriculture:gear:2>, <mysticalagriculture:prudentium_scythe>.anyDamage()], [null, <mysticalagriculture:crafting:22>, null], [<mysticalagriculture:crafting:22>, null, null]]);

//Superium Scythe
recipes.removeByRecipeName("mysticalagriculture:superium_scythe");
recipes.addShaped("mysticalagriculture_superium_scythe", <mysticalagriculture:superium_scythe>, [[<mysticalagriculture:crafting:36>, <mysticalagriculture:gear:3>, <mysticalagriculture:intermedium_scythe>.anyDamage()], [null, <mysticalagriculture:crafting:22>, null], [<mysticalagriculture:crafting:22>, null, null]]);

//Supremium Scythe
recipes.removeByRecipeName("mysticalagriculture:supremium_scythe");
recipes.addShaped("mysticalagriculture_supremium_scythe", <mysticalagriculture:supremium_scythe>.withTag({}), [[<mysticalagriculture:crafting:37>, <mysticalagriculture:gear:4>, <mysticalagriculture:superium_scythe>.anyDamage()], [null, <mysticalagriculture:crafting:22>, null], [<mysticalagriculture:crafting:22>, null, null]]);

// --- Fishing Rods ---
//Prudentium Fishing Rods
recipes.removeByRecipeName("mysticalagriculture:prudentium_fishing_rod");
recipes.addShaped("mysticalagriculture_prudentium_fishing_rod", <mysticalagriculture:prudentium_fishing_rod>, [[null, null, <mysticalagriculture:crafting:34>], [null, <mysticalagriculture:gear:1>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:crafting:34>, <mysticalagriculture:inferium_fishing_rod>.anyDamage(), <mysticalagriculture:crafting:23>]]);

//Intermedium Fishing Rods
recipes.removeByRecipeName("mysticalagriculture:intermedium_fishing_rod");
recipes.addShaped("mysticalagriculture_intermedium_fishing_rod", <mysticalagriculture:intermedium_fishing_rod>, [[null, null, <mysticalagriculture:crafting:35>], [null, <mysticalagriculture:gear:2>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:crafting:35>, <mysticalagriculture:prudentium_fishing_rod>.anyDamage(), <mysticalagriculture:crafting:23>]]);

//Superium Fishing Rods
recipes.removeByRecipeName("mysticalagriculture:superium_fishing_rod");
recipes.addShaped("mysticalagriculture_superium_fishing_rod", <mysticalagriculture:superium_fishing_rod>, [[null, null, <mysticalagriculture:crafting:36>], [null, <mysticalagriculture:gear:3>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:crafting:36>, <mysticalagriculture:intermedium_fishing_rod>.anyDamage(), <mysticalagriculture:crafting:23>]]);

//Supremium Fishing Rods
recipes.removeByRecipeName("mysticalagriculture:supremium_fishing_rod");
recipes.addShaped("mysticalagriculture_supremium_fishing_rod", <mysticalagriculture:supremium_fishing_rod>, [[null, null, <mysticalagriculture:crafting:37>], [null, <mysticalagriculture:gear:4>, <mysticalagriculture:crafting:23>], [<mysticalagriculture:crafting:37>, <mysticalagriculture:superium_fishing_rod>.anyDamage(), <mysticalagriculture:crafting:23>]]);

//--------------------------------------------------------------------------------------


print("Initialized 'mysticalagriculture'");