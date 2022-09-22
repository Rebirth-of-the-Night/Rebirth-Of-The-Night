import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val leather_sheet = <pyrotech:material:38>;

recipes.remove(<toolbelt:belt>);
recipes.addShaped(<toolbelt:belt>, [
    [null, <ore:durableFiber>, null],
    [<toolbelt:pouch>, <pyrotech:material:40>, <toolbelt:pouch>],
    [null, <ore:genericMetal>, null]
]);

recipes.remove(<toolbelt:pouch>);
recipes.addShaped(<toolbelt:pouch>, [
    [null, null, null],
    [<betterwithmods:material:8>, <ore:genericMetal>, <betterwithmods:material:8>],
    [<ore:durableFiber>, leather_sheet, <ore:durableFiber>]
]);

