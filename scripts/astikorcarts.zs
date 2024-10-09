import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<astikorcarts:wheel>);
recipes.addShaped("wagon_wheel",<astikorcarts:wheel>,[
	[<ore:plankWood>,<minecraft:stick>,<ore:plankWood>],
	[<minecraft:stick>,<ore:nuggetSteel>,<minecraft:stick>],
	[<ore:plankWood>,<minecraft:stick>,<ore:plankWood>]
]);

recipes.remove(<astikorcarts:cargocart>);
recipes.addShaped("wagon_cart",<astikorcarts:cargocart>,[
	[<ore:plankWood>,<ore:chestWood>,<ore:plankWood>],
	[<ore:plankWood>,<ore:nuggetSteel>,<ore:plankWood>],
	[<astikorcarts:wheel>,<ore:plankWood>,<astikorcarts:wheel>]
]);

recipes.remove(<astikorcarts:plowcart>);
recipes.addShaped("wagon_plow",<astikorcarts:plowcart>,[
	[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>],
	[<ore:plankWood>,<ore:nuggetSteel>,<ore:plankWood>],
	[<astikorcarts:wheel>,<minecraft:stick>,<astikorcarts:wheel>]
]);

recipes.remove(<astikorcarts:mobcart>);
recipes.addShaped("wagon_mob",<astikorcarts:mobcart>,[
	[<ore:plankWood>,null,<ore:plankWood>],
	[<ore:nuggetSteel>,null,<ore:nuggetSteel>],
	[<astikorcarts:wheel>,<ore:plankWood>,<astikorcarts:wheel>]
]);