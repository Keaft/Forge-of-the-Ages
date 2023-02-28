#Name: add.zs
#Author: Keaft
#priority 1

import crafttweaker.item.IItemStack;

print("Initializing 'stacksize'...");
//--------------------------------------------------------------------------------------
//Edit Item Stack Size
//<mod:item>.maxStackSize = #;
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------

<minecraft:potion>.maxStackSize = 64;
<minecraft:egg>.maxStackSize = 64;
<minecraft:snowball>.maxStackSize = 64;
<minecraft:bucket>.maxStackSize = 64;
<inspirations:potato_soup>.maxStackSize = 64;
<futuremc:suspicious_stew>.maxStackSize = 64;
<natura:soups>.maxStackSize = 64;
<minecraft:cake>.maxStackSize = 64;
<minecraft:bed>.maxStackSize = 64;
//<aether_legacy:skyroot_bed_item>.maxStackSize = 64;
<minecraft:enchanted_book>.maxStackSize = 64;

//--------------------------------------------------------------------------------------

print("Initialized 'stacksize'");