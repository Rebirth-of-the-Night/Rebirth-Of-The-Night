import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<toolbelt:belt>);
recipes.addShaped(<toolbelt:belt>, [
    [null, <ore:durableFiber>, null],
    [<toolbelt:pouch>, <betterwithmods:material:9>, <toolbelt:pouch>],
    [null, <ore:ingotIron>, null]
]);

recipes.remove(<toolbelt:pouch>);
recipes.addShaped(<toolbelt:pouch>, [
    [null, null, null],
    [<betterwithmods:material:8>, <ore:ingotIron>, <betterwithmods:material:8>],
    [<ore:durableFiber>, <betterwithmods:material:32>, <ore:durableFiber>]
]);

