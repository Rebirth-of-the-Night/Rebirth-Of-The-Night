#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.AxisAlignedBB;

var unstableSpiritfire = VanillaFactory.createFluid("unstable_spiritfire", Color.fromHex("62D5E5"));
unstableSpiritfire.temperature = 1300;
unstableSpiritfire.viscosity = 9999999999999999;
unstableSpiritfire.density = 100;
unstableSpiritfire.luminosity = 15;
unstableSpiritfire.stillLocation = "contenttweaker:fluids/unstable_spiritfire_still";
unstableSpiritfire.flowingLocation = "contenttweaker:fluids/unstable_spiritfire_flow";
unstableSpiritfire.colorize= true;
unstableSpiritfire.register();

var dreadCold = VanillaFactory.createFluid("dread_cold", Color.fromHex("C9FFE5"));
dreadCold.temperature = 100;
dreadCold.viscosity = 9999999999999999;
dreadCold.density = 100;
dreadCold.luminosity = 15;
dreadCold.stillLocation = "contenttweaker:fluids/dread_cold_still";
dreadCold.flowingLocation = "contenttweaker:fluids/dread_cold_flow";
dreadCold.colorize= true;
dreadCold.register();

val rawdreadSlate = VanillaFactory.createItem("raw_dread_slate");
rawdreadSlate.register();

val condensedDreadCold = VanillaFactory.createItem("condensed_dread_cold");
condensedDreadCold.register();

val condensedVileMist = VanillaFactory.createItem("condensed_vilemist");
condensedVileMist.register();

val writhingBiomass = VanillaFactory.createItem("writhing_biomass");
writhingBiomass.register();

var plague_leech = VanillaFactory.createBlock("plague_leech", <blockmaterial:Sponge>);
plague_leech.setGravity(true);
plague_leech.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
plague_leech.setBlockSoundType(<soundtype:plant>);
plague_leech.setFullBlock(false);
plague_leech.setLightOpacity(0);
plague_leech.setBlockLayer("TRANSLUCENT");
plague_leech.setBlockHardness(1.0);
plague_leech.setToolClass("shovel");
plague_leech.register();