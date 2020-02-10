import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

val DArray = [<minecraft:dye:5>,<minecraft:dye:6>,<minecraft:dye:7>,<minecraft:dye:8>,<minecraft:dye:9>,<minecraft:dye:10>,<minecraft:dye:12>,<minecraft:dye:13>,<minecraft:dye:14>,<biomesoplenty:blue_dye>,<biomesoplenty:brown_dye>,<biomesoplenty:green_dye>,<biomesoplenty:white_dye>,<biomesoplenty:black_dye>,<minecraftfuture:dye>,<minecraftfuture:dye:1>,<minecraftfuture:dye:2>,<minecraftfuture:dye:3>,<quark:root_dye>,<quark:root_dye:1>,<quark:root_dye:2>] as IItemStack[];
//Removed vanilla recipes
for dyes in DArray {
    //defines the variable "dyes" with each element of dyeArray
    //Just use this variable now!
    recipes.remove(dyes);
}
	recipes.removeByRecipeName("harvestcraft:string_listallfiber");
	
//Mortar and pestle recipes
recipes.addShapeless("standard dye 1 ",<minecraft:dye:5>,[<ore:toolMortarandpestle>,<aether_legacy:purple_flower>]);
recipes.addShapeless("standard dye 2 ",<minecraft:dye:5>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:8>]);
recipes.addShapeless("standard dye 3 ",<minecraft:dye:5>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:0>]);
recipes.addShapeless("standard dye 4 ",<minecraft:dye:6>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:1>]);
recipes.addShapeless("standard dye 5 ",<minecraft:dye:6>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:3>]);
#recipes.addShapeless("standard dye 6 ",<minecraft:dye:6>,[<ore:toolMortarandpestle>,<mod_lavacow:glowshroom>]);
recipes.addShapeless("standard dye 7 ",<minecraft:dye:7>,[<ore:toolMortarandpestle>,<aether_legacy:white_flower>]);
recipes.addShapeless("standard dye 9 ",<minecraft:dye:7>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:0>]);
recipes.addShapeless("standard dye 10",<minecraft:dye:7>,[<ore:toolMortarandpestle>,<betternether:gray_mold>]);
recipes.addShapeless("standard dye 11",<minecraft:dye:8>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:12>]);
recipes.addShapeless("standard dye 12",<minecraft:dye:8>,[<ore:toolMortarandpestle>,<biomesoplenty:ash>]);
recipes.addShapeless("standard dye 13",<minecraft:dye:9>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:13>]);
recipes.addShapeless("standard dye 14",<minecraft:dye:9>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:6>]);
recipes.addShapeless("standard dye 15",<minecraft:dye:9>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:3>]);
recipes.addShapeless("standard dye 16",<minecraft:dye:10>,[<ore:toolMortarandpestle>,<biomesoplenty:mushroom:3>]);
recipes.addShapeless("standard dye 17",<minecraft:dye:12>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:4>]);
recipes.addShapeless("standard dye 18",<minecraft:dye:12>*2,[<ore:toolMortarandpestle>,<biomesoplenty:double_plant:0>]);
recipes.addShapeless("standard dye 19",<minecraft:dye:12>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:4>]);
recipes.addShapeless("standard dye 20",<minecraft:dye:13>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:7>]);
recipes.addShapeless("standard dye 21",<minecraft:dye:14>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:5>]);
recipes.addShapeless("standard dye 22",<minecraft:dye:14>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:15>]);
recipes.addShapeless("standard dye 23",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:mushroom:2>]);
recipes.addShapeless("standard dye 24",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:2>]);
recipes.addShapeless("standard dye 25",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<minecraftfuture:flowerblue>]);
recipes.addShapeless("standard dye 26",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<quark:root_flower:0>]);
recipes.addShapeless("standard dye 27",<biomesoplenty:brown_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:mushroom:4>]);
recipes.addShapeless("standard dye 28",<biomesoplenty:brown_dye>*2,[<ore:toolMortarandpestle>,<biomesoplenty:double_plant:1>]);
recipes.addShapeless("standard dye 29",<biomesoplenty:brown_dye>,[<ore:toolMortarandpestle>,<minecraft:dye:3>]);
recipes.addShapeless("standard dye 30",<biomesoplenty:brown_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:plant_1:4>]);
recipes.addShapeless("standard dye 31",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:9>]);
recipes.addShapeless("standard dye 32",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:14>]);
recipes.addShapeless("standard dye 33",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<minecraftfuture:flowerwhite>]);
recipes.addShapeless("standard dye 34",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<minecraft:dye:15>]);
recipes.addShapeless("standard dye 35",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<quark:root_flower:2>]);
recipes.addShapeless("standard dye 36",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:10>]);
recipes.addShapeless("standard dye 37",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:2>]);
recipes.addShapeless("standard dye 38",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<minecraftfuture:flowerblack>]);
recipes.addShapeless("standard dye 39",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<minecraft:dye:0>]);
recipes.addShapeless("standard dye 40",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<quark:root_flower:1>]);

recipes.addShapeless("plant partition 1",<harvestcraft:flaxitem>*4,[<biomesoplenty:double_plant:0>]);

recipes.addShapeless("plant fiber 1",<betterwithmods:material:3>*4,[<ore:cropFlax>, <ore:cropFlax>, <ore:cropFlax>, <ore:cropFlax>]);
recipes.addShapeless("plant fiber 2",<betterwithmods:material:3>*4,[<ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]);

//Mill recipes
mods.betterwithmods.Mill.addRecipe([<aether_legacy:purple_flower>],[<minecraft:dye:5>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:8>],[<minecraft:dye:5>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_1:0>],[<minecraft:dye:5>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:1>],[<minecraft:dye:6>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:3>],[<minecraft:dye:6>*2]);
#mods.betterwithmods.Mill.addRecipe([<mod_lavacow:glowshroom>],[<minecraft:dye:6>*2]);
mods.betterwithmods.Mill.addRecipe([<aether_legacy:white_flower>],[<minecraft:dye:7>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:3>],[<minecraft:dye:7>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:0>],[<minecraft:dye:7>*2]);
mods.betterwithmods.Mill.addRecipe([<betternether:gray_mold>],[<minecraft:dye:7>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:12>],[<minecraft:dye:8>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:ash>],[<minecraft:dye:8>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:13>],[<minecraft:dye:9>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:6>],[<minecraft:dye:9>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_1:3>],[<minecraft:dye:9>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:mushroom:3>],[<minecraft:dye:10>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_1:4>],[<minecraft:dye:12>*2]);
mods.betterwithmods.Mill.addRecipe([<harvestcraft:flaxitem>],[<minecraft:dye:12>*2,<betterwithmods:material:3>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:double_plant:0>],[<minecraft:dye:12>*4,<betterwithmods:material:3>*4]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:4>],[<minecraft:dye:12>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:7>],[<minecraft:dye:13>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:5>],[<minecraft:dye:14>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:15>],[<minecraft:dye:14>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:mushroom:2>],[<biomesoplenty:blue_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_1:2>],[<biomesoplenty:blue_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<minecraftfuture:flowerblue>],[<biomesoplenty:blue_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<quark:root_flower:0>],[<biomesoplenty:blue_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:mushroom:4>],[<biomesoplenty:brown_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:double_plant:1>],[<biomesoplenty:brown_dye>*4]);
mods.betterwithmods.Mill.addRecipe([<minecraft:dye:3>],[<biomesoplenty:brown_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:plant_1:4>],[<biomesoplenty:brown_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:plant_0:9>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:plant_0:14>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<minecraftfuture:flowerwhite>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<minecraft:dye:15>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<quark:root_flower:2>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:plant_0:10>],[<biomesoplenty:black_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:plant_0:2>],[<biomesoplenty:black_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<minecraftfuture:flowerblack>],[<biomesoplenty:black_dye>*2,<quark:black_ash>*4]);
mods.betterwithmods.Mill.addRecipe([<minecraft:dye:0>],[<biomesoplenty:black_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<quark:root_flower:1>],[<biomesoplenty:black_dye>*2]);

mods.betterwithmods.Mill.addRecipe([<harvestcraft:cottonitem>],[<betterwithmods:material:3>]);

//Mixed dyes recipes
recipes.addShapeless("green dye", <biomesoplenty:green_dye>*2,
 [<ore:dyeBlue>,<ore:dyeYellow>]);
 recipes.addShapeless("green from lyme",<biomesoplenty:green_dye>*2,
 [<ore:dyeBlack>,<ore:dyeLime>]);
recipes.addShapeless("cyan dye",<minecraft:dye:6>*2,
 [<ore:dyeGreen>,<ore:dyeBlue>]);
