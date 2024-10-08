import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<astikorcarts:wheel>);
recipes.addShaped("wagon_wheel",<astikorcarts:wheel>,[
	[<betterwithmods:moulding_wood>,<minecraft:stick>,<betterwithmods:moulding_wood>],
	[<minecraft:stick>,<ore:nuggetSteel>,<minecraft:stick>],
	[<betterwithmods:moulding_wood>,<minecraft:stick>,<betterwithmods:moulding_wood>]
]);

recipes.remove(<astikorcarts:cargocart>);
recipes.addShaped("wagon_cart",<astikorcarts:cargocart>,[
	[<betterwithmods:siding_wood>,<ore:chestWood>,<betterwithmods:siding_wood>],
	[<betterwithmods:siding_wood>,<ore:nuggetSteel>,<betterwithmods:siding_wood>],
	[<astikorcarts:wheel>,<betterwithmods:moulding_wood>,<astikorcarts:wheel>]
]);

recipes.remove(<astikorcarts:plowcart>);
recipes.addShaped("wagon_plow",<astikorcarts:plowcart>,[
	[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>],
	[<betterwithmods:siding_wood>,<ore:nuggetSteel>,<betterwithmods:siding_wood>],
	[<astikorcarts:wheel>,<minecraft:stick>,<astikorcarts:wheel>]
]);

recipes.remove(<astikorcarts:mobcart>);
recipes.addShaped("wagon_mob",<astikorcarts:mobcart>,[
	[<betterwithmods:siding_wood>,null,<betterwithmods:siding_wood>],
	[<ore:nuggetSteel>,null,<ore:nuggetSteel>],
	[<astikorcarts:wheel>,<betterwithmods:moulding_wood>,<astikorcarts:wheel>]
]);