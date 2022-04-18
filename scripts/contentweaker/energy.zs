#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.AxisAlignedBB;

var unstableSoulfire = VanillaFactory.createFluid("unstable_soulfire", Color.fromHex("DC143C"));
unstableSoulfire.temperature = 1300;
unstableSoulfire.viscosity = 9999999999999999;
unstableSoulfire.register();

var dreadCold = VanillaFactory.createFluid("dread_cold", Color.fromHex("C9FFE5"));
dreadCold.temperature = 100;
dreadCold.viscosity = 9999999999999999;
dreadCold.register();

val rawdreadSlate = VanillaFactory.createItem("raw_dread_slate");
rawdreadSlate.register();

val condensedDreadCold = VanillaFactory.createItem("condensed_dread_cold");
condensedDreadCold.register();

val condensedVileMist = VanillaFactory.createItem("condensed_vilemist");
condensedVileMist.register();

var plague_leech = VanillaFactory.createBlock("plague_leech", <blockmaterial:Sponge>);
plague_leech.setGravity(true);
plague_leech.axisAlignedBB = AxisAlignedBB.create(
     6.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	10.0 / 16.0,
    6.0 / 16.0,
    14.0 / 16.0
	);
plague_leech.setBlockSoundType(<soundtype:sponge>);
plague_leech.setFullBlock(false);
plague_leech.setLightOpacity(0);
plague_leech.setBlockLayer("TRANSLUCENT");
plague_leech.setBlockHardness(1.0);
plague_leech.setToolClass("shovel");
plague_leech.register();