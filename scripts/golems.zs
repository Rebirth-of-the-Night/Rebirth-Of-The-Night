import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

recipes.remove(<golems:golem_paper>);

var magicpowder = <dungeontactics:magic_powder>;
var feather = <minecraft:feather>;
var paper = <minecraft:paper>;
var dyeBlack = <ore:dyeBlack>;
var redstone = <minecraft:redstone>;


recipes.addShaped("Golem Spell", <golems:golem_paper>,[
	[magicpowder, null, null],
    [feather, redstone, null],
    [paper, dyeBlack, null]
]);
