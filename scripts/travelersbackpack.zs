import crafttweaker.item.IIngredient;


var leather = <minecraft:leather>;
var gold = <minecraft:gold_ingot>;
var sleepingbag = <travellersbackpack:sleeping_bag_bottom>;
var backpacktank = <travellersbackpack:backpack_tank>;
var qchest = <quark:custom_chest:0>;
var qchest1 = <quark:custom_chest:1>;
var qchest2 = <quark:custom_chest:2>;
var qchest3 = <quark:custom_chest:3>;
var qchest4 = <quark:custom_chest:4>;


recipes.addShaped("Travellers Backpack", <travellersbackpack:travellers_backpack>,[
	[leather, gold, leather],
    [backpacktank, qchest, backpacktank],
    [leather, sleepingbag, leather]
]);

recipes.addShaped("Travellers Backpack1", <travellersbackpack:travellers_backpack>,[
	[leather, gold, leather],
    [backpacktank, qchest1, backpacktank],
    [leather, sleepingbag, leather]
]);

recipes.addShaped("Travellers Backpack2", <travellersbackpack:travellers_backpack>,[
	[leather, gold, leather],
    [backpacktank, qchest2, backpacktank],
    [leather, sleepingbag, leather]
]);

recipes.addShaped("Travellers Backpack3", <travellersbackpack:travellers_backpack>,[
	[leather, gold, leather],
    [backpacktank, qchest3, backpacktank],
    [leather, sleepingbag, leather]
]);

recipes.addShaped("Travellers Backpack4", <travellersbackpack:travellers_backpack>,[
	[leather, gold, leather],
    [backpacktank, qchest4, backpacktank],
    [leather, sleepingbag, leather]
]);
