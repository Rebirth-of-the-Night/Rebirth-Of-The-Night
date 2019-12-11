import crafttweaker.item.IIngredient;


mods.jei.JEI.removeAndHide(<minecraftfuture:honey_block>);
mods.jei.JEI.removeAndHide(<minecraftfuture:honeycomb_block>);
mods.jei.JEI.removeAndHide(<minecraftfuture:honey_bottle>);
mods.jei.JEI.removeAndHide(<minecraftfuture:honeycomb>);
mods.jei.JEI.removeAndHide(<minecraftfuture:bee_nest>);
mods.jei.JEI.removeAndHide(<minecraftfuture:bee_hive>);


mods.jei.JEI.removeAndHide(<minecraftfuture:lantern>);
recipes.remove(<minecraftfuture:stonecutter>);

var a = <minecraft:stone>;
var b = <dungeontactics:silver_ingot>;


recipes.addShaped("Stone Cutter", <minecraftfuture:stonecutter>,[
	[null, null, null],
    [null, b, null],
    [a, a, a]
]);