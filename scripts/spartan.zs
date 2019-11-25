import crafttweaker.item.IIngredient;

recipes.remove(<spartanweaponry:battleaxe_lead>);
recipes.remove(<spartanshields:shield_basic_lead>);



var onyxrod = <simpleores:onyx_rod>;
var mythril = <simpleores:mythril_ingot>;


recipes.addShaped("Mythril Battleaxe", <spartanweaponry:battleaxe_lead>.withTag({RepairCost: 0, display: {Name: "Mythril Battleaxe"}}),[
	[mythril, mythril, mythril],
    [mythril, onyxrod, mythril],
    [null, onyxrod, null]
]);

recipes.addShaped("Mythril Shield", <spartanshields:shield_basic_lead>.withTag({RepairCost: 0, display: {Name: "Mythril Shield"}}),[
	[mythril, mythril, mythril],
    [mythril, mythril, mythril],
    [null, mythril, null]
]);
