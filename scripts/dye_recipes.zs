import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

val DArrayHide = [<minecraftfuture:dye>,<minecraftfuture:dye:1>,<minecraftfuture:dye:2>,<minecraftfuture:dye:3>,<quark:root_dye>,<quark:root_dye:1>,<quark:root_dye:2>] as IItemStack[];

for dyes in DArrayHide {
    mods.jei.JEI.removeAndHide(dyes);
}

val DArray = [<minecraft:dye:1>,<minecraft:dye:5>,<minecraft:dye:6>,<minecraft:dye:7>,<minecraft:dye:8>,<minecraft:dye:9>,<minecraft:dye:10>,<minecraft:dye:11>,<minecraft:dye:12>,<minecraft:dye:13>,<minecraft:dye:14>,<biomesoplenty:blue_dye>,<biomesoplenty:brown_dye>,<biomesoplenty:green_dye>,<biomesoplenty:white_dye>,<biomesoplenty:black_dye>] as IItemStack[];
//Removed vanilla recipes
for dyes in DArray {
    //defines the variable "dyes" with each element of dyeArray
    //Just use this variable now!
    recipes.remove(dyes);
}

recipes.removeByRecipeName("harvestcraft:string_cropsisal");
recipes.removeByRecipeName("harvestcraft:string_cropkenaf");
recipes.removeByRecipeName("harvestcraft:string_cropjute");
recipes.removeByRecipeName("harvestcraft:string_cropflax");
recipes.removeByRecipeName("harvestcraft:string_cropcotton");
mods.betterwithmods.Mill.remove([<minecraft:dye:2>]);

//Mortar and pestle recipes
recipes.addShapeless("standard_dye_1 ",<minecraft:dye:5>,[<ore:toolMortarandpestle>,<aether_legacy:purple_flower>]);
recipes.addShapeless("standard_dye_2 ",<minecraft:dye:5>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:8>]);
recipes.addShapeless("standard_dye_3 ",<minecraft:dye:5>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:0>]);
recipes.addShapeless("standard_dye_4 ",<minecraft:dye:6>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:1>]);
recipes.addShapeless("standard_dye_5 ",<minecraft:dye:6>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:3>]);
recipes.addShapeless("standard_dye_6 ",<minecraft:dye:6>,[<ore:toolMortarandpestle>,<mod_lavacow:glowshroom>]);
recipes.addShapeless("standard_dye_9 ",<minecraft:dye:7>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:0>]);
recipes.addShapeless("standard_dye_10",<minecraft:dye:7>,[<ore:toolMortarandpestle>,<betternether:gray_mold>]);
recipes.addShapeless("standard_dye_11",<minecraft:dye:8>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:12>]);
recipes.addShapeless("standard_dye_12",<minecraft:dye:8>,[<ore:toolMortarandpestle>,<biomesoplenty:ash>]);
recipes.addShapeless("standard_dye_13",<minecraft:dye:9>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:13>]);
recipes.addShapeless("standard_dye_14",<minecraft:dye:9>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:6>]);
recipes.addShapeless("standard_dye_15",<minecraft:dye:9>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:3>]);
recipes.addShapeless("standard_dye_16",<minecraft:dye:10>,[<ore:toolMortarandpestle>,<biomesoplenty:mushroom:3>]);
recipes.addShapeless("standard_dye_17",<minecraft:dye:12>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:4>]);
recipes.addShapeless("standard_dye_18",<minecraft:dye:12>*2,[<ore:toolMortarandpestle>,<biomesoplenty:double_plant:0>]);
recipes.addShapeless("standard_dye_19",<minecraft:dye:12>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:4>]);
recipes.addShapeless("standard_dye_20",<minecraft:dye:13>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:7>]);
recipes.addShapeless("standard_dye_21",<minecraft:dye:14>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:5>]);
recipes.addShapeless("standard_dye_22",<minecraft:dye:14>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:15>]);
recipes.addShapeless("standard_dye_23",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:mushroom:2>]);
recipes.addShapeless("standard_dye_24",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:2>]);
recipes.addShapeless("standard_dye_25",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<minecraftfuture:flowerblue>]);
recipes.addShapeless("standard_dye_26",<biomesoplenty:blue_dye>,[<ore:toolMortarandpestle>,<quark:root_flower:0>]);
recipes.addShapeless("standard_dye_27",<biomesoplenty:brown_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:mushroom:4>]);
recipes.addShapeless("standard_dye_28",<biomesoplenty:brown_dye>*2,[<ore:toolMortarandpestle>,<biomesoplenty:double_plant:1>]);
recipes.addShapeless("standard_dye_30",<biomesoplenty:brown_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:plant_1:4>]);
recipes.addShapeless("standard_dye_7",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<aether_legacy:white_flower>]);
recipes.addShapeless("standard_dye_31",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:9>]);
recipes.addShapeless("standard_dye_32",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:14>]);
recipes.addShapeless("standard_dye_33",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<minecraftfuture:flowerwhite>]);
recipes.addShapeless("standard_dye_34",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<minecraft:dye:15>]);
recipes.addShapeless("standard_dye_35",<biomesoplenty:white_dye>,[<ore:toolMortarandpestle>,<quark:root_flower:2>]);
recipes.addShapeless("standard_dye_36",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:10>]);
recipes.addShapeless("standard_dye_37",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:2>]);
recipes.addShapeless("standard_dye_38",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<minecraftfuture:flowerblack>]);
recipes.addShapeless("standard_dye_39",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<minecraft:dye:0>]);
recipes.addShapeless("standard_dye_40",<biomesoplenty:black_dye>,[<ore:toolMortarandpestle>,<quark:root_flower:1>]);
recipes.addShapeless("goldenrod_dye",<minecraft:dye:11>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:1>]);
recipes.addShapeless("bromeliad_dye",<minecraft:dye:1>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_0:11>]);
recipes.addShapeless("red_mold_dye",<minecraft:dye:1>,[<ore:toolMortarandpestle>,<betternether:red_mold>]);
recipes.addShapeless("rose_dye",<minecraft:dye:1>,[<ore:toolMortarandpestle>,<biomesoplenty:flower_1:5>]);
recipes.addShapeless("rafflesia_dye",<minecraft:dye:1>,[<ore:toolMortarandpestle>,<biomesoplenty:plant_1:10>]);

recipes.addShapeless("plant_partition_1",<harvestcraft:flaxseeditem>*3,[<biomesoplenty:double_plant:0>]);

//Fiber, twine string and pulp
recipes.addShapeless("plant_fiber_flax",<betterwithmods:material:3>*4,[<ore:cropFlax>, <ore:cropFlax>, <ore:cropFlax>,<ore:cropFlax>, <ore:cropFlax>]);
recipes.addShapeless("plant_fiber_cotton",<betterwithmods:material:3>*4,[<ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>, <ore:cropCotton>]);
recipes.addShapeless("plant_fiber_sisal",<betterwithmods:material:3>*4,[<ore:cropSisal>, <ore:cropSisal>, <ore:cropSisal>,<ore:cropSisal>]);

recipes.removeByRecipeName("harvestcraft:string:cropflax");
recipes.removeByRecipeName("harvestcraft:string:cropcotton");
recipes.removeByRecipeName("harvestcraft:string:cropsisal");
recipes.removeByRecipeName("harvestcraft:string:cropkenaf");
recipes.removeByRecipeName("harvestcraft:string:cropjute");

recipes.addShaped("harvest_twine_1",<pyrotech:material:14>*8, [[<betterwithmods:material:2>, <betterwithmods:material:2>],[<betterwithmods:material:2>]]); #Hemp is still the best material for making STRONG plant fiber and textiles.
recipes.addShaped("harvest_twine_2",<pyrotech:material:14>*4, [[<harvestcraft:flaxitem>, <harvestcraft:flaxitem>],[<harvestcraft:flaxitem>]]); #Flax is very good for making textiles, not as durable as hemp but third to none, also good for blue dye.
recipes.addShaped("harvest_twine_3",<pyrotech:material:14>*6, [[<harvestcraft:sisalitem>, <harvestcraft:sisalitem>],[<harvestcraft:sisalitem>]]); #AKA henequen is a very durable dry "palm", pretty good for fiber and string since its leaves are big and strong.
#Kenaf has good fiber, but it's used for paper, not textiles. SEE Pirotech Anvil.zs.
#Jute is pretty durable but needs to be dried, then macerated to get any value out of it. Effort comes with higher yield. SEE Pyrotech Other.zs.
recipes.addShaped("harvest_twine_4",<pyrotech:material:14>*2, [[<harvestcraft:cottonitem>, <harvestcraft:cottonitem>],[<harvestcraft:cottonitem>]]); #Cotton is pretty good but not the most resilient, it is still incredibly comfortable.


//Mill recipes
mods.betterwithmods.Mill.remove([<betterwithmods:material:3>]);

mods.betterwithmods.Mill.addRecipe([<aether_legacy:purple_flower>],[<minecraft:dye:5>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:8>],[<minecraft:dye:5>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_1:0>],[<minecraft:dye:5>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:1>],[<minecraft:dye:6>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:3>],[<minecraft:dye:6>*2]);
mods.betterwithmods.Mill.addRecipe([<mod_lavacow:glowshroom>],[<minecraft:dye:6>*2]);
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
mods.betterwithmods.Mill.addRecipe([<harvestcraft:flaxitem>],[<minecraft:dye:12>*2,<betterwithmods:material:3>*3,<pyrotech:material:12>*4]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:double_plant:0>],[<minecraft:dye:12>*3,<betterwithmods:material:3>*4,<pyrotech:material:12>*6]);
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
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:plant_1:4>],[<biomesoplenty:brown_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<minecraftfuture:flowerwhite>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<minecraft:dye:15>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<quark:root_flower:2>],[<biomesoplenty:white_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<minecraftfuture:flowerblack>],[<biomesoplenty:black_dye>*2,<quark:black_ash>*4]);
mods.betterwithmods.Mill.addRecipe([<minecraft:dye:0>],[<biomesoplenty:black_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<quark:root_flower:1>],[<biomesoplenty:black_dye>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_1:1>],[<minecraft:dye:11>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_0:11>],[<minecraft:dye:1>*2]);
mods.betterwithmods.Mill.addRecipe([<betternether:red_mold>],[<minecraft:dye:1>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:flower_1:5>],[<minecraft:dye:1>*2]);
mods.betterwithmods.Mill.addRecipe([<biomesoplenty:plant_1:10>],[<minecraft:dye:1>*2]);

mods.betterwithmods.Mill.addRecipe([<betterwithmods:material:2>],[<betterwithmods:material:3>*4,<minecraft:string>*3,<pyrotech:material:12>*2]);
mods.betterwithmods.Mill.addRecipe([<harvestcraft:cottonitem>],[<betterwithmods:material:3>,<minecraft:string>,<pyrotech:material:12>*5]);
mods.betterwithmods.Mill.addRecipe([<harvestcraft:sisalitem>],[<betterwithmods:material:3>*3,<minecraft:string>*5]);


//Mixed dyes recipes
recipes.addShapeless("green_dye", <biomesoplenty:green_dye>*2,
 [<ore:dyeBlue>,<ore:dyeYellow>]);
recipes.addShapeless("green_from_lime",<biomesoplenty:green_dye>*2,
 [<ore:dyeLime>,<ore:dyeBlack>]);
recipes.addShapeless("cyan_dye",<minecraft:dye:6>*2,
 [<ore:dyeGreen>,<ore:dyeBlue>]);
recipes.addShapeless("lime_from_green",<minecraft:dye:10>*2,
 [<ore:dyeGreen>,<ore:dyeWhite>]);
recipes.addShapeless("purple_dye",<minecraft:dye:5>*2,
 [<ore:dyeRed>,<ore:dyeBlue>]);
recipes.addShapeless("magenta_dye",<minecraft:dye:13>*2,
 [<ore:dyePurple>,<ore:dyePink>]);
recipes.addShapeless("blue_from_light_blue",<biomesoplenty:blue_dye>*2,
 [<ore:dyeLightBlue>,<ore:dyeBlack>]);
recipes.addShapeless("light_blue_from_blue",<minecraft:dye:12>*2,
 [<ore:dyeBlue>,<ore:dyeWhite>]);
recipes.addShapeless("red_from_pink",<minecraft:dye:1>*2,
 [<ore:dyePink>,<ore:dyeBlack>]);
recipes.addShapeless("pink_from_red",<minecraft:dye:9>*2,
 [<ore:dyeRed>,<ore:dyeBlack>]);
recipes.addShapeless("orange_dye",<minecraft:dye:14>*2,
 [<ore:dyeRed>,<ore:dyeYellow>]);
recipes.addShaped("gray_from_black",<minecraft:dye:8>*2,
 [[<ore:dyeBlack>,<ore:dyeWhite>]]);
recipes.addShapeless("light_gray_from_gray",<minecraft:dye:7>*2,
 [<ore:dyeGray>,<ore:dyeWhite>]);
recipes.addShapeless("white_from_light_gray",<biomesoplenty:white_dye>*2,
 [<ore:dyeLightGray>,<ore:dyeWhite>]);
recipes.addShaped("light_gray_from_white",<minecraft:dye:7>*2,
 [[<ore:dyeWhite>,<ore:dyeBlack>]]);
recipes.addShapeless("gray_from_light_gray",<minecraft:dye:8>*2,
 [<ore:dyeLightGray>,<ore:dyeBlack>]);
recipes.addShapeless("black_from_gray",<biomesoplenty:black_dye>*2,
 [<ore:dyeGray>,<ore:dyeBlack>]);
recipes.addShapeless("brown_dye",<biomesoplenty:brown_dye>*3,
 [<ore:dyeRed>,<ore:dyeBlue>,<ore:dyeYellow>]);
recipes.addShapeless("brown_dye_orange",<biomesoplenty:brown_dye>*2,
 [<ore:dyeBlue>,<ore:dyeOrange>]);
recipes.addShapeless("brown_dye_green",<biomesoplenty:brown_dye>*2,
 [<ore:dyeRed>,<ore:dyeGreen>]);
recipes.addShapeless("brown_dye_purple",<biomesoplenty:brown_dye>*2,
 [<ore:dyeYellow>,<ore:dyePurple>]);
 
//Other plant recipes

recipes.addShapeless("cut_rose",<biomesoplenty:flower_1:5>*3, //Recipe for classic (BoP-1.5) rose
 [<simpleores:onyx_shears>|<simpleores:adamantium_shears>|<simpleores:mythril_shears>|<minecraft:shears>.anyDamage().transformDamage(),<minecraft:double_plant:4>]);
 
recipes.addShaped("flowerblack",<minecraftfuture:flowerblack>, //Recipe for wither rose
[[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
[<quark:black_ash>, <biomesoplenty:flower_1:5>, <quark:black_ash>],
[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]]);

recipes.addShaped("regeneration_garden",<dungeontactics:flower_sanguine>, //Recipe for sanguine rose
[[<scalinghealth:crystalshard>, <minecraftfuture:flowerblack>, <scalinghealth:crystalshard>],
[<minecraftfuture:flowerblack>, <betterwithaddons:material:3>, <minecraftfuture:flowerblack>],
[<scalinghealth:crystalshard>, <minecraftfuture:flowerblack>, <scalinghealth:crystalshard>]]);
