#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

var unstableSoulfire = VanillaFactory.createFluid("unstable_soulfire", Color.fromHex("DC143C"));
unstableSoulfire.temperature = 1300;
unstableSoulfire.viscosity = 9999999999999999;
unstableSoulfire.register();

var dreadCold = VanillaFactory.createFluid("dread_cold", Color.fromHex("C9FFE5"));
dreadCold.temperature = 100;
dreadCold.viscosity = 9999999999999999;
dreadCold.register();

val polisheddreadSlate = VanillaFactory.createItem("polished_dread_slate");
dreadSlate.register();

val condenseddreadCold = VanillaFactory.createItem("condensed_dread_cold");
condenseddreadCold.register();

var rawdreadSlate = VanillaFactory.createBlock("raw_dread_slate", <blockmaterial:Rock>);
rawdreadSlate.setGravity(true);
rawdreadSlate.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
rawdreadSlate.setBlockSoundType(<soundtype:stone>);
rawdreadSlate.setFullBlock(false);
rawdreadSlate.setLightOpacity(0);
rawdreadSlate.setBlockLayer("TRANSLUCENT");
rawdreadSlate.setBlockHardness(1.0);
rawdreadSlate.setToolClass("pickaxe");
rawdreadSlate.register();