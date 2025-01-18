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
certusquartzFluid.stillLocation = "tconstruct:blocks/fluids/molten_metal";
certusquartzFluid.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
certusquartzFluid.register();

var fluixFluid = VanillaFactory.createFluid("molten_fluix", Color.fromHex("a100e6"));
fluixFluid.fillSound = <soundevent:item.bucket.fill_lava>;
fluixFluid.material = <blockmaterial:lava>;
fluixFluid.stillLocation = "tconstruct:blocks/fluids/molten_metal";
fluixFluid.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
fluixFluid.register();

var unobtaniumFluid = VanillaFactory.createFluid("molten_unobtanium", Color.fromHex("2d5576"));
unobtaniumFluid.fillSound = <soundevent:item.bucket.fill_lava>;
unobtaniumFluid.material = <blockmaterial:lava>;
unobtaniumFluid.stillLocation = "tconstruct:blocks/fluids/molten_metal";
unobtaniumFluid.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
unobtaniumFluid.register();

var ethericDewFluid = VanillaFactory.createFluid("etheric_dew", Color.fromHex("003e5f"));
ethericDewFluid.fillSound = <soundevent:item.bucket.fill>;
ethericDewFluid.material = <blockmaterial:water>;
ethericDewFluid.register();

//--------------------------------------------------------------------------------------

print("Initialized 'contenttweakerfluid'");