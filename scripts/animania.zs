import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<animania:block_mud>);

recipes.removeByRecipeName("animania:straw");
recipes.removeByRecipeName("animania:bed");
recipes.remove(<animania:item_wagon>);
recipes.addShaped("covered_wagon",<animania:item_wagon>,[
	[<ore:wool>,<ore:wool>,<ore:plankWood>],
	[<ore:bed>,<ore:plankWood>,<ore:chestWood>],
	[<animania:wheel>,<animania:item_cart>,<animania:wheel>]
]);