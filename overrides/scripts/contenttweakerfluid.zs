#loader contenttweaker
#Name: contenttweakerfluid.zs
#Author: Keaft
#priority 1

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

print("Initializing 'contenttweakerfluid'...");

//--------------------------------------------------------------------------------------
// Fluid Handling
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------
// Tinkers Fluid
//--------------------------------------------------------------------------------------

var neptuniumFluid = VanillaFactory.createFluid("molten_neptunium", Color.fromHex("06e3b2"));
neptuniumFluid.fillSound = <soundevent:item.bucket.fill_lava>;
neptuniumFluid.material = <blockmaterial:lava>;
neptuniumFluid.register();

//--------------------------------------------------------------------------------------

print("Initialized 'contenttweakerfluid'");