import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByRecipeName("qualitytools:reforging_station");
recipes.removeByRecipeName("undergroundbiomes:vanilla_button");

recipes.addShaped("forgiving tool reforging station", <qualitytools:reforging_station>,[
	[<ore:hammerTool>, null, <quark:black_ash>],
    [<ore:stoneSlab>, <ore:anvilAny>, <ore:stoneSlab>],
    [<ore:ingotSteel>, <ore:obsidian>, <ore:ingotSteel>]
]);

recipes.addShapeless("gravel_to_flint",<minecraft:flint>*2,[<ore:gravel>, <ore:gravel>]);

mods.jei.JEI.removeAndHide(<endreborn:tool_hammer_iron>);
recipes.addShapeless("popped_chorus_fruit", <minecraft:chorus_fruit_popped>, [<minecraft:purpur_block>, <ore:hammerTool>.transformDamage()]);
