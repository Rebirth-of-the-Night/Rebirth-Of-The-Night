#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//Values
val color = Color.fromHex("F2E2CD") as Color;
val bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(color).build();
val coptinMixture = mods.contenttweaker.VanillaFactory.createItem("copper_tin_mixture");
coptinMixture.register();
val coptinPebbles = mods.contenttweaker.VanillaFactory.createItem("copper_tin_pebbles");
coptinPebbles.register();

//MISC PARTS
var bdata = bronze.registerParts(["ingot","nugget","molten"] as string[])[2].getData();
bdata.addDataValue("temperature", 1220);
bdata.addDataValue("density", 8730);
bdata.addDataValue("luminosity", 8);
bdata.addDataValue("viscosity", 5540);

//Lunarin Style Bronze Block
var lunarin = VanillaFactory.createBlock("lunarinbronzebrick", <blockmaterial:Iron>);
lunarin.setCreativeTab(<creativetab:buildingBlocks>);
lunarin.register();

//Bronze Plate
var plate = VanillaFactory.createBlock("bronze_plate", <blockmaterial:Iron>);
plate.setCreativeTab(<creativetab:buildingBlocks>);
plate.register();