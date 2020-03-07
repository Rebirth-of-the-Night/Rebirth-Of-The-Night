import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

val hammer = <endreborn:tool_hammer_iron>;

recipes.addShapeless("anyCobble",<minecraft:cobblestone>,[<ore:cobblestone>,hammer.anyDamage().transformDamage()]);

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