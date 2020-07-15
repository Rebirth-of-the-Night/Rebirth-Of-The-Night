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
val moltenstonecolor = Color.fromHex("301807") as Color;
val moltenstone = MaterialSystem.getMaterialBuilder().setName("Coade Stone").setColor(moltenstonecolor).build();

//MISC PARTS
var cdata = copper.registerParts(["nugget","molten"] as string[])[1].getData();
var tdata = tin.registerParts(["nugget","molten"] as string[])[1].getData();
var mdata = mythril.registerParts(["nugget","molten"] as string[])[1].getData();
var vdata = viridium.registerParts(["nugget","molten"] as string[])[1].getData();
var fdata = sfs.registerParts(["molten"] as string[])[0].getData();
var odata = onyxalloy.registerParts(["molten"] as string[])[0].getData();
var sdata = moltenstone.registerParts(["molten"] as string[])[0].getData();

cdata.addDataValue("temperature", 1350);
cdata.addDataValue("density", 8000);
cdata.addDataValue("luminosity", 3);
cdata.addDataValue("viscosity", 400);

tdata.addDataValue("temperature", 500);
tdata.addDataValue("density", 6980);
tdata.addDataValue("luminosity", 1);
tdata.addDataValue("viscosity", 190);

mdata.addDataValue("temperature", 2500);
mdata.addDataValue("density", 4750);
mdata.addDataValue("luminosity", 5);
mdata.addDataValue("viscosity", 550);

vdata.addDataValue("temperature", 2500);
vdata.addDataValue("density", 3860);
vdata.addDataValue("luminosity", 5);
vdata.addDataValue("viscosity", 320);

fdata.addDataValue("temperature", 2350);
fdata.addDataValue("density", 8050);
fdata.addDataValue("luminosity", 6);
fdata.addDataValue("viscosity", 180);

odata.addDataValue("temperature", 2650);
odata.addDataValue("density", 6125);
odata.addDataValue("luminosity", 4);
odata.addDataValue("viscosity", 570);

sdata.addDataValue("temperature", 1375);
sdata.addDataValue("density", 3100);
sdata.addDataValue("luminosity", 4);
sdata.addDataValue("viscosity", 490);
