import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByRecipeName("qualitytools:reforging_station");

recipes.addShaped("forgiving tool reforging station", <qualitytools:reforging_station>,[
	[<ore:hammerTool>, null, <quark:black_ash>],
    [<ore:stoneSlab>, <ore:anvilAny>, <ore:stoneSlab>],
    [<ore:ingotSteel>, <ore:obsidian>, <ore:ingotSteel>]
]);

recipes.addShapeless("gravel_to_flint",<minecraft:flint>*2,[<ore:gravel>, <ore:gravel>]);

mods.jei.JEI.removeAndHide(<endreborn:tool_hammer_iron>);
recipes.addShapeless("popped_chorus_fruit", <minecraft:chorus_fruit_popped>, [<minecraft:purpur_block>, <ore:hammerTool>.transformDamage()]);
recipes.addShapeless("anyCobble",<minecraft:cobblestone>,[<ore:cobblestone>,<ore:hammerTool>.transformDamage()]);

recipes.remove(<minecraft:concrete_powder:*>);
recipes.addShapeless("white_concrete_powder",<minecraft:concrete_powder:0>,[<ore:dyeWhite>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("orange_concrete_powder",<minecraft:concrete_powder:1>,[<ore:dyeOrange>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("magenta_concrete_powder",<minecraft:concrete_powder:2>,[<ore:dyeMagenta>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("light_blue_concrete_powder",<minecraft:concrete_powder:3>,[<ore:dyeLightBlue>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("yellow_concrete_powder",<minecraft:concrete_powder:4>,[<ore:dyeYellow>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("lime_concrete_powder",<minecraft:concrete_powder:5>,[<ore:dyeLime>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("pink_concrete_powder",<minecraft:concrete_powder:6>,[<ore:dyePink>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("gray_concrete_powder",<minecraft:concrete_powder:7>,[<ore:dyeGray>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("light_gray_concrete_powder",<minecraft:concrete_powder:8>,[<ore:dyeLightGray>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("cyan_concrete_powder",<minecraft:concrete_powder:9>,[<ore:dyeCyan>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("purple_concrete_powder",<minecraft:concrete_powder:10>,[<ore:dyePurple>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("blue_concrete_powder",<minecraft:concrete_powder:11>,[<ore:dyeBlue>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("brown_concrete_powder",<minecraft:concrete_powder:12>,[<ore:dyeBrown>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("green_concrete_powder",<minecraft:concrete_powder:13>,[<ore:dyeGreen>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("red_concrete_powder",<minecraft:concrete_powder:14>,[<ore:dyeRed>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("black_concrete_powder",<minecraft:concrete_powder:15>,[<ore:dyeBlack>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);