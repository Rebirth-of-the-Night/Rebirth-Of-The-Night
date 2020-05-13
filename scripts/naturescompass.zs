import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<naturescompass:naturescompass>);
recipes.addShaped(<naturescompass:naturescompass>, [
    [<ore:durableFiber>, <contenttweaker:earth_rune>, <ore:durableFiber>],
    [<ore:logWood>, <minecraft:compass>, <ore:logWood>], 
    [<ore:durableFiber>, <ore:logWood>, <ore:durableFiber>]
]);
