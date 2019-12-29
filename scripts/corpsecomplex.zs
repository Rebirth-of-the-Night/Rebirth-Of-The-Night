import crafttweaker.item.IIngredient;

recipes.remove(<corpsecomplex:scroll>);

var enderpearl = <minecraft:ender_pearl>;
var emerald = <minecraft:emerald>;
var paper = <minecraft:paper>;

recipes.addShaped("Grave Scroll 1", <corpsecomplex:scroll>,[
	[paper, enderpearl, paper],
    [enderpearl, emerald, enderpearl],
    [paper, enderpearl, paper]
]);