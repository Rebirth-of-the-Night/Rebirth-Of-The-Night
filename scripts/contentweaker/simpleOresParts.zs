#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//Values
val ccolor = Color.fromHex("FFFFFF") as Color;
val copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(ccolor).build();
val tcolor = Color.fromHex("FFFFFF") as Color;
val tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(tcolor).build();
val vcolor = Color.fromHex("4CEF5A") as Color;
val viridium = MaterialSystem.getMaterialBuilder().setName("Viridium").setColor(vcolor).build();
val mcolor = Color.fromHex("4390F5") as Color;
val mythril = MaterialSystem.getMaterialBuilder().setName("Mythril").setColor(mcolor).build();

//MISC PARTS
copper.registerParts(["nugget","molten"] as string[]);
tin.registerParts(["nugget","molten"] as string[]);
mythril.registerParts(["nugget","molten"] as string[]);
viridium.registerParts(["nugget","molten"] as string[]);

var molten_soul = VanillaFactory.createFluid("flowing_spirits", Color.fromHex("4390F5"));
molten_soul.density = 1200;
molten_soul.gaseous = true;
molten_soul.luminosity = 4;
molten_soul.temperature = 400;
molten_soul.viscosity = 1300;
molten_soul.register();