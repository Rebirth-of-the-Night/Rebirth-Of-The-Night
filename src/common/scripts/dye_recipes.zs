import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.betterwithmods.Mill;
import mods.advancedmortars.Mortar;

val DArrayHide = [
    <futuremc:dye>,
    <futuremc:dye:1>,
    <futuremc:dye:2>,
    <futuremc:dye:3>,
    <quark:root_dye>,
    <quark:root_dye:1>,
    <quark:root_dye:2>
] as IItemStack[];

for dye in DArrayHide {
    JEI.removeAndHide(dye);
}

val DArray = [
    <minecraft:dye:1>,
    <minecraft:dye:5>,
    <minecraft:dye:6>,
    <minecraft:dye:7>,
    <minecraft:dye:8>,
    <minecraft:dye:9>,
    <minecraft:dye:10>,
    <minecraft:dye:11>,
    <minecraft:dye:12>,
    <minecraft:dye:13>,
    <minecraft:dye:14>,
    <biomesoplenty:blue_dye>,
    <biomesoplenty:brown_dye>,
    <biomesoplenty:green_dye>,
    <biomesoplenty:white_dye>,
    <biomesoplenty:black_dye>
] as IItemStack[];

for dye in DArray {
    recipes.remove(dye);
}

recipes.removeByRecipeName("harvestcraft:string_cropsisal");
recipes.removeByRecipeName("harvestcraft:string_cropkenaf");
recipes.removeByRecipeName("harvestcraft:string_cropjute");
recipes.removeByRecipeName("harvestcraft:string_cropflax");
recipes.removeByRecipeName("harvestcraft:string_cropcotton");
recipes.removeByRecipeName("harvestcraft:string_listallfiber");
Mill.remove([<minecraft:dye:2>]);

// Mortar recipes
Mortar.addRecipe(["diamond"], <minecraft:dye:5>, 3, <minecraft:dye:5>, 0.15, [<aether_legacy:purple_flower>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:5>, 3, <minecraft:dye:5>, 0.15, [<biomesoplenty:flower_0:8>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:5>, 3, <minecraft:dye:5>, 0.15, [<biomesoplenty:flower_1:0>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:6>, 3, <minecraft:dye:6>, 0.15, [<biomesoplenty:flower_0:1>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:6>, 3, <minecraft:dye:6>, 0.15, [<biomesoplenty:flower_0:3>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:6>, 3, <minecraft:dye:6>, 0.15, [<mod_lavacow:glowshroom>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:7>, 3, <minecraft:dye:7>, 0.15, [<biomesoplenty:flower_0:0>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:7>, 3, <minecraft:dye:7>, 0.15, [<betternether:gray_mold>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:8>, 3, <minecraft:dye:8>, 0.15, [<biomesoplenty:flower_0:12>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:8>, 3, <minecraft:dye:8>, 0.15, [<biomesoplenty:ash>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:9>, 3, <minecraft:dye:9>, 0.15, [<biomesoplenty:flower_0:13>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:9>, 3, <minecraft:dye:9>, 0.15, [<biomesoplenty:flower_0:6>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:9>, 3, <minecraft:dye:9>, 0.15, [<biomesoplenty:flower_1:3>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:10>, 3, <minecraft:dye:10>, 0.15, [<biomesoplenty:mushroom:3>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:12>, 3, <minecraft:dye:12>, 0.15, [<biomesoplenty:flower_1:4>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:12>, 3, <minecraft:dye:12>, 0.75, [<biomesoplenty:double_plant:0>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:12>, 3, <minecraft:dye:12>, 0.15, [<biomesoplenty:flower_0:4>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:13>, 3, <minecraft:dye:13>, 0.15, [<biomesoplenty:flower_0:7>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:14>, 3, <minecraft:dye:14>, 0.15, [<biomesoplenty:flower_0:5>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:14>, 3, <minecraft:dye:14>, 0.15, [<biomesoplenty:flower_0:15>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:blue_dye>, 3, <biomesoplenty:blue_dye>, 0.15, [<biomesoplenty:mushroom:2>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:blue_dye>, 3, <biomesoplenty:blue_dye>, 0.15, [<biomesoplenty:flower_1:2>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:blue_dye>, 3, <biomesoplenty:blue_dye>, 0.15, [<futuremc:cornflower>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:blue_dye>, 3, <biomesoplenty:blue_dye>, 0.15, [<quark:root_flower:0>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:brown_dye>, 3, <biomesoplenty:brown_dye>, 0.15, [<biomesoplenty:mushroom:4>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:brown_dye>, 3, <biomesoplenty:brown_dye>, 0.75, [<biomesoplenty:double_plant:1>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:brown_dye>, 3, <biomesoplenty:brown_dye>, 0.15, [<biomesoplenty:plant_1:4>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:white_dye>, 3, <biomesoplenty:white_dye>, 0.15, [<aether_legacy:white_flower>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:white_dye>, 3, <biomesoplenty:white_dye>, 0.15, [<biomesoplenty:flower_0:9>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:white_dye>, 3, <biomesoplenty:white_dye>, 0.15, [<biomesoplenty:flower_0:14>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:white_dye>, 3, <biomesoplenty:white_dye>, 0.15, [<futuremc:lily_of_the_valley>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:white_dye>, 3, <biomesoplenty:white_dye>, 0.15, [<minecraft:dye:15>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:white_dye>, 3, <biomesoplenty:white_dye>, 0.15, [<quark:root_flower:2>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:black_dye>, 3, <biomesoplenty:black_dye>, 0.15, [<biomesoplenty:flower_0:10>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:black_dye>, 3, <biomesoplenty:black_dye>, 0.15, [<biomesoplenty:flower_0:2>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:black_dye>, 3, <biomesoplenty:black_dye>, 0.15, [<futuremc:wither_rose>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:black_dye>, 3, <biomesoplenty:black_dye>, 0.15, [<minecraft:dye:0>]);
Mortar.addRecipe(["diamond"], <biomesoplenty:black_dye>, 3, <biomesoplenty:black_dye>, 0.15, [<quark:root_flower:1>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:11>, 3, <minecraft:dye:11>, 0.15, [<biomesoplenty:flower_1:1>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:1>, 3, <minecraft:dye:1>, 0.15, [<biomesoplenty:flower_0:11>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:1>, 3, <minecraft:dye:1>, 0.15, [<betternether:red_mold>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:1>, 3, <minecraft:dye:1>, 0.15, [<biomesoplenty:flower_1:5>]);
Mortar.addRecipe(["diamond"], <minecraft:dye:1>, 3, <minecraft:dye:1>, 0.15, [<biomesoplenty:plant_1:10>]);

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
Mill.remove([<betterwithmods:material:3>]);

Mill.addRecipe([<aether_legacy:purple_flower>],[<minecraft:dye:5>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:8>],[<minecraft:dye:5>*2]);
Mill.addRecipe([<biomesoplenty:flower_1:0>],[<minecraft:dye:5>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:1>],[<minecraft:dye:6>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:3>],[<minecraft:dye:6>*2]);
Mill.addRecipe([<mod_lavacow:glowshroom>],[<minecraft:dye:6>*2]);
Mill.addRecipe([<aether_legacy:white_flower>],[<minecraft:dye:7>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:3>],[<minecraft:dye:7>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:0>],[<minecraft:dye:7>*2]);
Mill.addRecipe([<betternether:gray_mold>],[<minecraft:dye:7>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:12>],[<minecraft:dye:8>*2]);
Mill.addRecipe([<biomesoplenty:ash>],[<minecraft:dye:8>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:13>],[<minecraft:dye:9>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:6>],[<minecraft:dye:9>*2]);
Mill.addRecipe([<biomesoplenty:flower_1:3>],[<minecraft:dye:9>*2]);
Mill.addRecipe([<biomesoplenty:mushroom:3>],[<minecraft:dye:10>*2]);
Mill.addRecipe([<biomesoplenty:flower_1:4>],[<minecraft:dye:12>*2]);
Mill.addRecipe([<harvestcraft:flaxitem>],[<minecraft:dye:12>*2,<betterwithmods:material:3>*3,<pyrotech:material:12>*4]);
Mill.addRecipe([<biomesoplenty:double_plant:0>],[<minecraft:dye:12>*3,<betterwithmods:material:3>*4,<pyrotech:material:12>*6]);
Mill.addRecipe([<biomesoplenty:flower_0:4>],[<minecraft:dye:12>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:7>],[<minecraft:dye:13>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:5>],[<minecraft:dye:14>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:15>],[<minecraft:dye:14>*2]);
Mill.addRecipe([<biomesoplenty:mushroom:2>],[<biomesoplenty:blue_dye>*2]);
Mill.addRecipe([<biomesoplenty:flower_1:2>],[<biomesoplenty:blue_dye>*2]);
Mill.addRecipe([<futuremc:cornflower>],[<biomesoplenty:blue_dye>*2]);
Mill.addRecipe([<quark:root_flower:0>],[<biomesoplenty:blue_dye>*2]);
Mill.addRecipe([<biomesoplenty:mushroom:4>],[<biomesoplenty:brown_dye>*2]);
Mill.addRecipe([<biomesoplenty:double_plant:1>],[<biomesoplenty:brown_dye>*4]);
Mill.addRecipe([<biomesoplenty:plant_1:4>],[<biomesoplenty:brown_dye>*2]);
Mill.addRecipe([<futuremc:lily_of_the_valley>],[<biomesoplenty:white_dye>*2]);
Mill.addRecipe([<minecraft:dye:15>],[<biomesoplenty:white_dye>*2]);
Mill.addRecipe([<quark:root_flower:2>],[<biomesoplenty:white_dye>*2]);
Mill.addRecipe([<futuremc:wither_rose>],[<biomesoplenty:black_dye>*2,<quark:black_ash>*4]);
Mill.addRecipe([<minecraft:dye:0>],[<biomesoplenty:black_dye>*2]);
Mill.addRecipe([<quark:root_flower:1>],[<biomesoplenty:black_dye>*2]);
Mill.addRecipe([<biomesoplenty:flower_1:1>],[<minecraft:dye:11>*2]);
Mill.addRecipe([<biomesoplenty:flower_0:11>],[<minecraft:dye:1>*2]);
Mill.addRecipe([<betternether:red_mold>],[<minecraft:dye:1>*2]);
Mill.addRecipe([<biomesoplenty:flower_1:5>],[<minecraft:dye:1>*2]);
Mill.addRecipe([<biomesoplenty:plant_1:10>],[<minecraft:dye:1>*2]);

Mill.addRecipe([<betterwithmods:material:2>],[<betterwithmods:material:3>*4,<minecraft:string>*3,<pyrotech:material:12>*2]);
Mill.addRecipe([<harvestcraft:cottonitem>],[<betterwithmods:material:3>,<minecraft:string>,<pyrotech:material:12>*5]);
Mill.addRecipe([<harvestcraft:sisalitem>],[<betterwithmods:material:3>*3,<minecraft:string>*5]);


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
 
recipes.addShaped("wither_rose",<futuremc:wither_rose>, //Recipe for wither rose
[[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
[<quark:black_ash>, <biomesoplenty:flower_1:5>, <quark:black_ash>],
[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]]);

recipes.addShaped("regeneration_garden",<dungeontactics:flower_sanguine>, //Recipe for sanguine rose
[[<scalinghealth:crystalshard>, <futuremc:wither_rose>, <scalinghealth:crystalshard>],
[<futuremc:wither_rose>, <betterwithaddons:material:3>, <futuremc:wither_rose>],
[<scalinghealth:crystalshard>, <futuremc:wither_rose>, <scalinghealth:crystalshard>]]);
