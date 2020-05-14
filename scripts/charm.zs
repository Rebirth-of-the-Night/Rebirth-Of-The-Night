import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

mods.jei.JEI.removeAndHide(<charm:crate:*>);
mods.jei.JEI.removeAndHide(<charm:crate_sealed:*>);

recipes.remove(<charm:bookshelf_chest>);
recipes.addShaped("bookshelf_chest",<charm:bookshelf_chest>,[
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:bookshelf>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);