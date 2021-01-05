import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<charm:crate:*>);
JEI.removeAndHide(<charm:crate_sealed:*>);
JEI.removeAndHide(<charm:rune_portal_frame:*>);

recipes.remove(<charm:bookshelf_chest>);
recipes.addShaped("bookshelf_chest",<charm:bookshelf_chest>,[
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:bookshelf>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);