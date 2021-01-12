import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.horsepower.Grindstone;
import mods.horsepower.Press;

//Removed items
JEI.removeAndHide(<horsepower:chopper>);
furnace.setFuel(<horsepower:chopper>, 0);
JEI.removeAndHide(<horsepower:hand_grindstone>);

// Crafting table recipes
recipes.remove(<horsepower:press>);
recipes.addShaped("horse_press",<horsepower:press>,[
    [<minecraft:lead>,<ore:stickWood>,<minecraft:lead>],
    [<ore:plankWood>,<ore:pressurePlateWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

//Millstone recipes
Grindstone.add(<minecraft:wheat>, <betterwithmods:raw_pastry:3>, 12);
Grindstone.add(<biomesoplenty:plant_1:4>, <betterwithmods:raw_pastry:3>, 12);

Grindstone.add(<aether_legacy:purple_flower>, <minecraft:dye:5>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:8>, <minecraft:dye:5>*2, 12);
Grindstone.add(<biomesoplenty:flower_1:0>, <minecraft:dye:5>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:1>, <minecraft:dye:6>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:3>, <minecraft:dye:6>*2, 12);
Grindstone.add(<mod_lavacow:glowshroom>, <minecraft:dye:6>*2, 12);
Grindstone.add(<aether_legacy:white_flower>, <minecraft:dye:7>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:3>, <minecraft:dye:7>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:0>, <minecraft:dye:7>*2, 12);
Grindstone.add(<betternether:gray_mold>, <minecraft:dye:7>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:12>, <minecraft:dye:8>*2, 12);
Grindstone.add(<biomesoplenty:ash>, <minecraft:dye:8>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:13>, <minecraft:dye:9>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:6>, <minecraft:dye:9>*2, 12);
Grindstone.add(<biomesoplenty:flower_1:3>, <minecraft:dye:9>*2, 12);
Grindstone.add(<biomesoplenty:mushroom:3>, <minecraft:dye:10>*2, 12);
Grindstone.add(<biomesoplenty:flower_1:4>, <minecraft:dye:12>*2, 12);
Grindstone.add(<harvestcraft:flaxitem>, <betterwithmods:material:3>*2, 12,false, <minecraft:dye:12>*2, 80);
Grindstone.add(<biomesoplenty:double_plant:0>, <betterwithmods:material:3>*3, 12,false, <minecraft:dye:12>*3, 80);
Grindstone.add(<biomesoplenty:flower_0:4>, <minecraft:dye:12>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:7>, <minecraft:dye:13>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:5>, <minecraft:dye:14>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:15>, <minecraft:dye:14>*2, 12);
Grindstone.add(<biomesoplenty:mushroom:2>, <biomesoplenty:blue_dye>*2, 12);
Grindstone.add(<biomesoplenty:flower_1:2>, <biomesoplenty:blue_dye>*2, 12);
Grindstone.add(<futuremc:cornflower>, <biomesoplenty:blue_dye>*2, 12);
Grindstone.add(<quark:root_flower:0>, <biomesoplenty:blue_dye>*2, 12);
Grindstone.add(<biomesoplenty:mushroom:4>, <biomesoplenty:brown_dye>*2, 12);
Grindstone.add(<biomesoplenty:double_plant:1>, <biomesoplenty:brown_dye>*4, 12);
Grindstone.add(<biomesoplenty:plant_1:4>, <biomesoplenty:brown_dye>*2, 12);
Grindstone.add(<futuremc:lily_of_the_valley>, <biomesoplenty:white_dye>*2, 12);
Grindstone.add(<minecraft:dye:15>, <biomesoplenty:white_dye>*2, 12);
Grindstone.add(<quark:root_flower:2>, <biomesoplenty:white_dye>*2, 12);
Grindstone.add(<futuremc:wither_rose>, <biomesoplenty:black_dye>*2, 12,false, <quark:black_ash>*4, 80);
Grindstone.add(<minecraft:dye:0>, <biomesoplenty:black_dye>*2, 12);
Grindstone.add(<quark:root_flower:1>, <biomesoplenty:black_dye>*2, 12);
Grindstone.add(<biomesoplenty:flower_1:1>, <minecraft:dye:11>*2, 12);
Grindstone.add(<biomesoplenty:flower_0:11>, <minecraft:dye:1>*2, 12);
Grindstone.add(<betternether:red_mold>, <minecraft:dye:1>*2, 12);
Grindstone.add(<biomesoplenty:flower_1:5>, <minecraft:dye:1>*2, 12);
Grindstone.add(<biomesoplenty:plant_1:10>, <minecraft:dye:1>*2, 12);

Grindstone.add(<betterwithmods:material:2>, <betterwithmods:material:3>*3, 25,false, <minecraft:string>*3, 80);
Grindstone.add(<harvestcraft:cottonitem>, <minecraft:string>, 14,false, <betterwithmods:material:3>, 80);
Grindstone.add(<harvestcraft:sisalitem>, <betterwithmods:material:3>*2, 14,false, <minecraft:string>*5, 80);
Grindstone.add(<biomesoplenty:mushroom>, <biomesoplenty:shroompowder>*2, 12);
	
//Press Recipes
Press.add(<pyrotech:material:25>, <minecraft:paper>*2);