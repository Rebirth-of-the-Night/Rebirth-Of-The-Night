#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//Values
val bronze_color = Color.fromHex("F2E2CD") as Color;
val bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(bronze_color).build();
val electrum_color = Color.fromHex("FFFF8C") as Color;
val electrum = MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(electrum_color).build();
val brass_color = Color.fromHex("DED797") as Color;
val brass = MaterialSystem.getMaterialBuilder().setName("Brass").setColor(brass_color).build();

//MISC BRONZE PARTS
var bronze_data = bronze.registerParts(["ingot","nugget","molten","dust"] as string[])[2].getData();
bronze_data.addDataValue("temperature", 1220);
bronze_data.addDataValue("density", 8730);
bronze_data.addDataValue("luminosity", 8);
bronze_data.addDataValue("viscosity", 5540);

//Lunarin Style Bronze Block
var lunarin = VanillaFactory.createBlock("lunarinbronzebrick", <blockmaterial:Iron>);
lunarin.setCreativeTab(<creativetab:buildingBlocks>);
lunarin.register();

//Bronze Plate
var bronze_plate = VanillaFactory.createBlock("bronze_plate", <blockmaterial:Iron>);
bronze_plate.setCreativeTab(<creativetab:buildingBlocks>);
bronze_plate.register();

//MISC ELECTRUM PARTS
var electrum_data = electrum.registerParts(["ingot","nugget","molten","dense_plate","dust"] as string[])[2].getData();
electrum_data.addDataValue("temperature", 1308);
electrum_data.addDataValue("density", 1500);
electrum_data.addDataValue("luminosity", 9);
electrum_data.addDataValue("viscosity", 3920);

//Electrum Plate
var electrum_plate = VanillaFactory.createBlock("electrum_plate", <blockmaterial:Iron>);
electrum_plate.setCreativeTab(<creativetab:buildingBlocks>);
electrum_plate.register();

//MISC BRASS PARTS
var brass_data = brass.registerParts(["ingot","nugget","molten","dust"] as string[])[2].getData();
brass_data.addDataValue("temperature", 1308);
brass_data.addDataValue("density", 1500);
brass_data.addDataValue("luminosity", 9);
brass_data.addDataValue("viscosity", 3920);
