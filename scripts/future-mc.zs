import crafttweaker.item.IIngredient;

mods.jei.JEI.removeAndHide(<minecraftfuture:lantern>);
recipes.remove(<minecraftfuture:stonecutter>);

var a = <minecraft:stone>;
var b = <dungeontactics:silver_ingot>;


recipes.addShaped("Stone Cutter", <minecraftfuture:stonecutter>,[
	[null, null, null],
    [null, b, null],
    [a, a, a]
]);