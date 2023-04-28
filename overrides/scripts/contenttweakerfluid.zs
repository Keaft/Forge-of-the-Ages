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

var certusquartzFluid = VanillaFactory.createFluid("molten_certus_quartz", Color.fromHex("ccecff"));
certusquartzFluid.fillSound = <soundevent:item.bucket.fill_lava>;
certusquartzFluid.material = <blockmaterial:lava>;
certusquartzFluid.register();

var fluixFluid = VanillaFactory.createFluid("molten_fluix", Color.fromHex("a100e6"));
fluixFluid.fillSound = <soundevent:item.bucket.fill_lava>;
fluixFluid.material = <blockmaterial:lava>;
fluixFluid.register();

var unobtaniumFluid = VanillaFactory.createFluid("molten_unobtanium", Color.fromHex("2D5576"));
unobtaniumFluid.fillSound = <soundevent:item.bucket.fill_lava>;
unobtaniumFluid.material = <blockmaterial:lava>;
unobtaniumFluid.register();

//--------------------------------------------------------------------------------------

print("Initialized 'contenttweakerfluid'");