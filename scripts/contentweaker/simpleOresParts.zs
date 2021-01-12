#priority 500
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
val sfs = MaterialSystem.getMaterialBuilder().setName("Soulforged Steel").setColor(sfcolor).build();
val onyxalloycolor = Color.fromHex("280606") as Color;
val onyxalloy = MaterialSystem.getMaterialBuilder().setName("Onyx Alloy").setColor(onyxalloycolor).build();
val moltenstonecolor = Color.fromHex("301807") as Color;
val moltenstone = MaterialSystem.getMaterialBuilder().setName("Coade Stone").setColor(moltenstonecolor).build();

val endcolor = Color.fromHex("219484") as Color;
val endorium = MaterialSystem.getMaterialBuilder().setName("Endorium").setColor(endcolor).build();
val stcolor = Color.fromHex("3E3E3E") as Color;
val steel = MaterialSystem.getMaterialBuilder().setName("Crucible Steel").setColor(stcolor).build();
val icolor = Color.fromHex("E5DADA") as Color;
val iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(icolor).build();
val gcolor = Color.fromHex("F0CA2F") as Color;
val gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(gcolor).build();
val sicolor = Color.fromHex("D2DCE8") as Color;
val silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(sicolor).build();
val zcolor = Color.fromHex("E3EAE8") as Color;
val zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(zcolor).build();
val ambcolor = Color.fromHex("FFE666") as Color;
val ambrosium = MaterialSystem.getMaterialBuilder().setName("Ambrosium").setColor(ambcolor).build();

//MISC PARTS
var cdata = copper.registerParts(["nugget","molten","dust"] as string[])[1].getData();
var tdata = tin.registerParts(["nugget","molten","dust"] as string[])[1].getData();
var mdata = mythril.registerParts(["nugget","molten","dust"] as string[])[1].getData();
var vdata = viridium.registerParts(["nugget","molten","dust"] as string[])[1].getData();
var fdata = sfs.registerParts(["molten","dust"] as string[])[0].getData();
var odata = onyxalloy.registerParts(["molten"] as string[])[0].getData();
var sdata = moltenstone.registerParts(["molten"] as string[])[0].getData();
var edata = endorium.registerParts(["dust"] as string[]);
var stdata = steel.registerParts(["dust"] as string[]);
var idata = iron.registerParts(["dust"] as string[]);
var gdata = gold.registerParts(["dust"] as string[]);
var sidata = silver.registerParts(["dust"] as string[]);
var zdata = zinc.registerParts(["ore","ingot","block","nugget","molten","dust"] as string[])[4].getData();
var ambdata = ambrosium.registerParts(["molten", "dust"] as string[])[0].getData();

cdata.addDataValue("temperature", 1350);
cdata.addDataValue("density", 8000);
cdata.addDataValue("luminosity", 7);
cdata.addDataValue("viscosity", 4000);

tdata.addDataValue("temperature", 500);
tdata.addDataValue("density", 6980);
tdata.addDataValue("luminosity", 5);
tdata.addDataValue("viscosity", 1900);

mdata.addDataValue("temperature", 2500);
mdata.addDataValue("density", 4750);
mdata.addDataValue("luminosity", 10);
mdata.addDataValue("viscosity", 5500);

vdata.addDataValue("temperature", 2500);
vdata.addDataValue("density", 3860);
vdata.addDataValue("luminosity", 9);
vdata.addDataValue("viscosity", 3200);

fdata.addDataValue("temperature", 2350);
fdata.addDataValue("density", 8050);
fdata.addDataValue("luminosity", 10);
fdata.addDataValue("viscosity", 1800);

odata.addDataValue("temperature", 2650);
odata.addDataValue("density", 6125);
odata.addDataValue("luminosity", 9);
odata.addDataValue("viscosity", 5700);

sdata.addDataValue("temperature", 1375);
sdata.addDataValue("density", 3100);
sdata.addDataValue("luminosity", 8);
sdata.addDataValue("viscosity", 4900);

zdata.addDataValue("temperature", 500);
zdata.addDataValue("density", 3100);
zdata.addDataValue("luminosity", 7);
zdata.addDataValue("viscosity", 1900);

ambdata.addDataValue("temperature", 195);
ambdata.addDataValue("density", 1125);
ambdata.addDataValue("luminosity", 12);
ambdata.addDataValue("viscosity", 6050);
