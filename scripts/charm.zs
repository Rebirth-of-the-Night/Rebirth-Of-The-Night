import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<charm:rune_portal_frame:*>);
JEI.removeAndHide(<charm:rune_portal>);
JEI.removeAndHide(<charm:bound_compass>);
JEI.removeAndHide(<charm:totem_of_returning>);

recipes.remove(<charm:iron_lantern>);
recipes.addShaped("metal_oil_lantern", <charm:iron_lantern>, [
    [<ore:genericMetalNuggets>, <iceandfire:chain_link>, <ore:genericMetalNuggets>],
    [<minecraft:stick>, <betterwithaddons:decomat>, <minecraft:stick>],
    [<ore:genericMetalNuggets>,<ore:genericMetalNuggets>,<ore:genericMetalNuggets>,]
]);
recipes.remove(<charm:gold_lantern>);
recipes.addShaped("gold_oil_lantern", <charm:gold_lantern>, [
    [<minecraft:gold_nugget>, <iceandfire:chain_link>, <minecraft:gold_nugget>],
    [<minecraft:stick>, <betterwithaddons:decomat>, <minecraft:stick>],
    [<minecraft:gold_nugget>,<minecraft:gold_nugget>,<minecraft:gold_nugget>,]
]);

recipes.addShapeless("bound_compass_unbind", <minecraft:compass>, [<charm:bound_compass>]);