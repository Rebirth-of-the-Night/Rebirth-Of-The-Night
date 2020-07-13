#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//Values
val ccolor = Color.fromHex("D98D3F") as Color;
val copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(ccolor).build();
val tcolor = Color.fromHex("D0D0D0") as Color;
val tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(tcolor).build();
val vcolor = Color.fromHex("4CEF5A") as Color;
val viridium = MaterialSystem.getMaterialBuilder().setName("Viridium").setColor(vcolor).build();
val mcolor = Color.fromHex("4390F5") as Color;
val mythril = MaterialSystem.getMaterialBuilder().setName("Mythril").setColor(mcolor).build();
val sfcolor = Color.fromHex("535052") as Color;
val sfs = MaterialSystem.getMaterialBuilder().setName("Soul Forged Steel").setColor(sfcolor).build();
val onyxalloycolor = Color.fromHex("280606") as Color;
val onyxalloy = MaterialSystem.getMaterialBuilder().setName("Onyx Alloy").setColor(onyxalloycolor).build();
val moltenstonecolor = Color.fromHex("280606") as Color;
val moltenstone = MaterialSystem.getMaterialBuilder().setName("Coade Stone").setColor(moltenstonecolor).build();

//MISC PARTS
copper.registerParts(["nugget","molten"] as string[]);
tin.registerParts(["nugget","molten"] as string[]);
mythril.registerParts(["nugget","molten"] as string[]);
viridium.registerParts(["nugget","molten"] as string[]);
sfs.registerParts(["molten"] as string[]);
onyxalloy.registerParts(["molten"] as string[]);
moltenstone.registerParts(["molten"] as string[]);
