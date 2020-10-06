#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//Values
val color = Color.fromHex("FFFF8C") as Color;
val electrum = MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(color).build();
val sivgoldMixture = mods.contenttweaker.VanillaFactory.createItem("silver_gold_mixture");
sivgoldMixture.register();
val sivgoldPebbles = mods.contenttweaker.VanillaFactory.createItem("silver_gold_pebbles");
sivgoldPebbles.register();

//MISC PARTS
var edata = electrum.registerParts(["ingot","nugget","molten","dense_plate","dust"] as string[])[2].getData();
edata.addDataValue("temperature", 1308);
edata.addDataValue("density", 1500);
edata.addDataValue("luminosity", 9);
edata.addDataValue("viscosity", 3920);

//Electrum Plate
var plate = VanillaFactory.createBlock("electrum_plate", <blockmaterial:Iron>);
plate.setCreativeTab(<creativetab:buildingBlocks>);
plate.register();