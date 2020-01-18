import crafttweaker.item.IIngredient;

//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);

brewing.addBrew(<minecraft:splash_potion>, <minecraft:emerald>, <minecraft:experience_bottle>);

furnace.remove(<minecraft:coal:1>);



recipes.removeByRecipeName("aether_legacy:saddle");
recipes.removeByRecipeName("animania:saddle");

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

mods.jei.JEI.removeAndHide(<minecraft:shield>);

var potions = <minecraft:potion>;
var potions_splash = <minecraft:splash_potion>;
var potions_lingering = <minecraft:lingering_potion>;

potions.maxStackSize = 8;
potions_splash.maxStackSize = 8;
potions_lingering.maxStackSize = 8;

//lore
mods.jei.JEI.addDescription(<minecraft:rotten_flesh>,"...they will rise again just to seek the surface once again as the night falls.");
