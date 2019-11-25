import crafttweaker.item.IIngredient;

recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:iron_lantern>);

var iron = <minecraft:iron_ingot>;
var gold = <minecraft:gold_ingot>;
var torch = <minecraft:torch>;
var glass = <minecraft:glass_pane>;


recipes.addShaped("Gold Lantern", <rustic:golden_lantern>,[
	[null, gold, null],
    [glass, torch, glass],
    [null, gold, null]
]);

recipes.addShaped("Iron Lantern", <rustic:iron_lantern>,[
	[null, iron, null],
    [glass, torch, glass],
    [null, iron, null]
]);