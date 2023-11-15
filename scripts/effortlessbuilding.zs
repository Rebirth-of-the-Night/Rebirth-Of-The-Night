import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<effortlessbuilding:reach_upgrade1>);
recipes.remove(<effortlessbuilding:reach_upgrade2>);
recipes.remove(<effortlessbuilding:reach_upgrade3>);
recipes.addShapeless("architects_tools",<effortlessbuilding:reach_upgrade1>,[<cyclicmagic:carbon_paper>,<ore:artisansQuill>,<ore:artisansCarver>,<quark:trowel>,<pyrotech:flint_hammer>]);