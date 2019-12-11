import crafttweaker.item.IIngredient;

//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);

brewing.addBrew(<minecraft:splash_potion>, <minecraft:emerald>, <minecraft:experience_bottle>);

furnace.remove(<minecraft:coal:1>);


recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);

var chainlink = <iceandfire:chain_link>;


recipes.addShaped("Chainmail Helmet", <minecraft:chainmail_helmet>,[
	[chainlink, chainlink, chainlink],
    [chainlink, null, chainlink],
    [null, null, null]
]);

recipes.addShaped("Chainmail Chestplate", <minecraft:chainmail_chestplate>,[
	[chainlink, null, chainlink],
    [chainlink, chainlink, chainlink],
    [chainlink, chainlink, chainlink]
]);

recipes.addShaped("Chainmail Leggings", <minecraft:chainmail_leggings>,[
	[chainlink, chainlink, chainlink],
    [chainlink, null, chainlink],
    [chainlink, null, chainlink]
]);

recipes.addShaped("Chainmail Boots", <minecraft:chainmail_boots>,[
	[null, null, null],
    [chainlink, null, chainlink],
    [chainlink, null, chainlink]
]);