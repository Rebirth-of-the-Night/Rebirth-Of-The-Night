import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);

brewing.addBrew(<minecraft:splash_potion>, <minecraft:emerald>, <minecraft:experience_bottle>);

//for charcoal see pyrotech_recipes_kiln.zs
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
mods.jei.JEI.addDescription(<minecraft:rotten_flesh>,"...they will rise just to seek the surface once again as the night falls.");

//Ore Dictionary Entries
val allStoneSlab = <ore:stoneSlab>;
allStoneSlab.addItems([<minecraft:stone_slab:*>, <undergroundbiomes:igneous_stone_halfslab:*>, <undergroundbiomes:metamorphic_stone_halfslab:*>, <undergroundbiomes:igneous_cobble_halfslab:*>, <undergroundbiomes:metamorphic_cobble_halfslab:*>, <undergroundbiomes:sedimentary_stone_halfslab:*>, <quark:sandstone_smooth_slab:*>, <quark:red_sandstone_smooth_slab:0>, <biomesoplenty:other_slab:1>]);

val hammerTool = <ore:hammerTool>;
hammerTool.addItems([<aether_legacy:notch_hammer>,<endreborn:tool_hammer_iron>,<pyrotech:stone_hammer>]);

val anvilAny = <ore:anvilAny>;
anvilAny.addItems([<minecraft:anvil>,<betterwithmods:steel_anvil>,<pyrotech:anvil_granite>]);

//ContentTweaker extra blocks recipes
//All Lunarin bricks
recipes.remove(<villagenames:lunaringoldbrick>);
recipes.remove(<villagenames:lunarinironbrick>);

recipes.addShapeless("lunarin iron", <villagenames:lunarinironbrick>*24,
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>,<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
);
recipes.addShapeless("lunarin bronze", <contenttweaker:lunarinbronzebrick>*24,
 [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]
);
recipes.addShapeless("lunarin silver", <contenttweaker:lunarinsilverbrick>*24,
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]
);
recipes.addShapeless("lunarin gold", <villagenames:lunaringoldbrick>*24,
	[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
);
recipes.addShapeless("lunarin viridium", <contenttweaker:lunarinviridiumbrick>*24,
	[<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>,<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>]
);
recipes.addShapeless("lunarin mythril", <contenttweaker:lunarinmythrilbrick>*24,
	[<ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>]
);
recipes.addShapeless("lunarin endorium", <contenttweaker:lunarinendoriumbrick>*24,
	[<endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>]
);
recipes.addShapeless("lunarin steel", <contenttweaker:lunarinsteelbrick>*24,
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
);
recipes.addShapeless("lunarin SFS", <contenttweaker:lunarinsfsbrick>*24,
	[<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>]
);
recipes.addShapeless("lunarin crystal heart", <contenttweaker:lunarinheartbrick>*24,
	[<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>]
);
//Should've been farlander since it's a gem, oh whatever
recipes.addShapeless("lunarin rime", <contenttweaker:lunarinrimebrick>*24,
	[<ore:gemRime>, <ore:gemRime>, <ore:gemRime>, <ore:gemRime>, <ore:gemRime>, <ore:gemRime>]
);
recipes.addShapeless("lunarin fiery", <contenttweaker:lunarinfierybrick>*24,
	[<ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>]
);
recipes.addShapeless("witheredblock to dust>", <quark:black_ash>*9, 
   [<contenttweaker:witheredblock>]
);
recipes.addShaped("dust to witheredblock", <contenttweaker:witheredblock>,[
	[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
    [<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
    [<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]
]);

//Simple mod recipes
recipes.removeByRecipeName("qualitytools:reforging_station");

recipes.addShaped("forgiving tool reforging station", <qualitytools:reforging_station>,[
	[<ore:hammerTool>, null, <quark:black_ash>],
    	[<ore:stoneSlab>, <ore:anvilAny>, <ore:stoneSlab>],
    	[<ore:ingotSteel>, <ore:obsidian>, <ore:ingotSteel>]
]);
