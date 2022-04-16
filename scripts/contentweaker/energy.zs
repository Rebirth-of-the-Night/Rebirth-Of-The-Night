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

val dreadSlate = VanillaFactory.createItem("dread_slate");
dreadSlate.register();

val condenseddreadCold = VanillaFactory.createItem("condensed_dread_cold");
condenseddreadCold.register();