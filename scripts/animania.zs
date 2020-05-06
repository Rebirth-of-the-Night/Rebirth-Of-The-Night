import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

mods.jei.JEI.removeAndHide(<animania:block_mud>);
mods.jei.JEI.removeAndHide(<animania:riding_crop>);

recipes.removeByRecipeName("animania:straw");
recipes.removeByRecipeName("animania:bed");
recipes.remove(<animania:item_wagon>);
recipes.addShaped("covered_wagon",<animania:item_wagon>,[
	[<ore:wool>,<ore:wool>,<ore:plankWood>],
	[<ore:bed>,<ore:plankWood>,<ore:chestWood>],
	[<animania:wheel>,<animania:item_cart>,<animania:wheel>]
]);

recipes.remove(<animania:block_hamster_wheel>);
recipes.addShaped("hamster_wheel",<animania:block_hamster_wheel>,[
	[null,<minecraft:iron_ingot>,null],
	[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>],
	[<ore:stoneSlab>,<minecraft:iron_ingot>,<ore:stoneSlab>]
]);