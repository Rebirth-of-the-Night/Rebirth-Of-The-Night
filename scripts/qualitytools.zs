import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<qualitytools:emerald_amulet>);
JEI.removeAndHide(<qualitytools:emerald_ring>);

recipes.remove(<qualitytools:reforging_station>);
recipes.addShaped("reforging_station", <qualitytools:reforging_station>, [
	[<ore:hammerTool>, null, <contenttweaker:vis_speck>],
    [<ore:stoneSlab>, <ore:anvilAny>, <ore:stoneSlab>],
    [<ore:ingotSteel>, <ore:obsidian>, <ore:ingotSteel>]
]);
