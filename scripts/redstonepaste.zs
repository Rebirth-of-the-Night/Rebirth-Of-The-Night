import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

recipes.remove(<redstonepaste:redstonepaste>);
recipes.addShapeless("redstone_paste",<redstonepaste:redstonepaste>,[<minecraft:redstone>,<ore:slimeball>]);

recipes.remove(<redstonepaste:stickyrepeater>);
recipes.addShapeless("sticky_repeater",<redstonepaste:stickyrepeater>,[<minecraft:repeater>,<ore:slimeball>]);

recipes.remove(<redstonepaste:stickycomparator>);
recipes.addShapeless("sticky_comparator",<redstonepaste:stickycomparator>,[<minecraft:comparator>,<ore:slimeball>]);