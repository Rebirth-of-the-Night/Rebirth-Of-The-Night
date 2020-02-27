import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);

brewing.addBrew(<minecraft:splash_potion>, <minecraft:emerald>, <minecraft:experience_bottle>);

//for charcoal see pyrotech_recipes_kiln.zs
furnace.remove(<minecraft:coal:1>);


recipes.removeByRecipeName("aether_legacy:saddle");
recipes.removeByRecipeName("animania:saddle");
recipes.removeByRecipeName("minecraft:rabbit_stew_from_red_mushroom");
recipes.replaceAllOccurences(<minecraft:brown_mushroom>, <ore:listAllmushroom>, <*>.only(function(item) {
    return !isNull(item) & !<minecraft:fermented_spider_eye>.matches(item);
}));
recipes.replaceAllOccurences(<minecraft:red_mushroom>, <ore:listAllmushroom>, <minecraftfuture:suspiciousstew>);
recipes.replaceAllOccurences(<minecraft:red_mushroom>, <ore:listAllmushroom>, <betternether:stalagnate_bowl_mushroom>);

recipes.removeByRecipeName("minecraft:cake");

recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);

mods.ltt.LootTable.removeGlobalItem("minecraft:barrier");

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
mods.jei.JEI.addDescription(<minecraft:rotten_flesh>,"...and they will rise only to seek the surface again as each night falls...");





//Ore Dictionary Entries
val cobble = <ore:cobblestone>;
cobble.add(<minecraft:flint>);

val allStoneSlab = <ore:stoneSlab>;
allStoneSlab.addItems([<minecraft:stone_slab:*>, <undergroundbiomes:igneous_stone_halfslab:*>, <undergroundbiomes:metamorphic_stone_halfslab:*>, <undergroundbiomes:igneous_cobble_halfslab:*>, <undergroundbiomes:metamorphic_cobble_halfslab:*>, <undergroundbiomes:sedimentary_stone_halfslab:*>, <quark:sandstone_smooth_slab:*>, <quark:red_sandstone_smooth_slab:0>, <biomesoplenty:other_slab:1>]);

val StoneHugeBrick = <ore:StoneHugeBrick>;
StoneHugeBrick.addItems([<undergroundbiomes:igneous_brick:2>,<undergroundbiomes:igneous_brick:3>,<undergroundbiomes:igneous_brick:4>,<undergroundbiomes:igneous_brick:5>,<undergroundbiomes:igneous_brick:6>,<undergroundbiomes:igneous_brick:7>,<undergroundbiomes:metamorphic_brick>,<undergroundbiomes:metamorphic_brick:2>,<undergroundbiomes:metamorphic_brick:3>,<undergroundbiomes:metamorphic_brick:5>,<undergroundbiomes:metamorphic_brick:6>,<minecraft:stonebrick>,<quark:biome_brick>,<quark:world_stone_bricks>,<quark:world_stone_bricks:1>,<undergroundbiomes:metamorphic_brick:7>,<endreborn:end_bricks_glow>,<quark:biome_brick:1>,<quark:world_stone_bricks:2>,<undergroundbiomes:igneous_brick:1>,<undergroundbiomes:metamorphic_brick:1>,<undergroundbiomes:igneous_brick>,<undergroundbiomes:metamorphic_brick:4>]);

val hammerTool = <ore:hammerTool>;
hammerTool.addItems([<aether_legacy:notch_hammer>,<endreborn:tool_hammer_iron>,<pyrotech:stone_hammer>]);

val anvilAny = <ore:anvilAny>;
anvilAny.addItems([<minecraft:anvil>,<betterwithmods:steel_anvil>,<pyrotech:anvil_granite>]);

val vine = <ore:vine>;
vine.addItems([<biomesoplenty:willow_vine>,<biomesoplenty:ivy>]);

val fang = <ore:fang>;
fang.addItems([<mod_lavacow:sharptooth>,<mowziesmobs:naga_fang>,<iceandfire:sea_serpent_fang>,<netherex:coolmar_spider_fang>]);

val coal = <ore:gemCoal>;
coal.addItems([<minecraft:coal>,<betterwithmods:material:1>]);

val qualityGem = <ore:Gem_highQuality>;
qualityGem.addItems([<minecraft:diamond>,<minecraft:emerald>,<simpleores:onyx_gem>,<netherex:amethyst_crystal>,<biomesoplenty:gem>,<aether_legacy:zanite_gemstone>,<quark:biotite>]);

val viridiumOre = <ore:oreViridium>;
viridiumOre.addItems([<simpleores:adamantium_ore>,<undergroundbiomes:igneous_stone_simpleores_adamantium_ore>,<undergroundbiomes:metamorphic_stone_simpleores_adamantium_ore:4>,<undergroundbiomes:sedimentary_stone_simpleores_adamantium_ore>]);

val viridiumIngot = <ore:ingotViridium>;
viridiumIngot.add(<simpleores:adamantium_ingot>);

val biotiteOre = <ore:oreBiotite>;
biotiteOre.add(<quark:biotite_ore>);

val redstone = <ore:gemRedstone>;
redstone.add(<minecraft:redstone>);

val mushroom = <ore:mushroomAny>;
mushroom.addItems([<biomesoplenty:mushroom>,<biomesoplenty:mushroom:1>,<biomesoplenty:mushroom:2>,<biomesoplenty:mushroom:3>,<biomesoplenty:mushroom:4>,<harvestcraft:whitemushroomitem>,<rustic:deathstalk_mushroom>,<rustic:mooncap_mushroom>]);

val rawMeat = <ore:listAllmeatraw>;
rawMeat.add(<primitivemobs:dodo>);

val cookedMeat = <ore:listAllmeatcooked>;
cookedMeat.add(<primitivemobs:cooked_dodo>);

val rawChicken = <ore:listAllchickenraw>;
rawChicken.addItems([<primitivemobs:dodo>,<animania:raw_prime_chicken>,<animania:raw_peacock>,<animania:raw_prime_peacock>]);

val cookedChicken = <ore:listAllchickencooked>;
cookedChicken.addItems([<primitivemobs:cooked_dodo>,<animania:cooked_prime_chicken>,<animania:cooked_peacock>,<animania:cooked_prime_peacock>]);

val rawMutton = <ore:listAllmuttonraw>;
rawMutton.add(<animania:raw_prime_mutton>);

val cookedMutton = <ore:listAllmuttoncooked>;
cookedMutton.add(<animania:cooked_prime_mutton>);

val rawFrog = <ore:listAllfrograw>;
rawFrog.addItems([<animania:raw_frog_legs>,<harvestcraft:frograwitem>]);

val scaleChestplate = <ore:scaleChestplate>;
scaleChestplate.addItems([<iceandfire:armor_red_chestplate>,<iceandfire:armor_green_chestplate>,<iceandfire:armor_bronze_chestplate>,<iceandfire:armor_gray_chestplate>]);

val scaleHelmet = <ore:scaleHelmet>;
scaleHelmet.addItems([<iceandfire:armor_red_helmet>,<iceandfire:armor_green_helmet>,<iceandfire:armor_bronze_helmet>,<iceandfire:armor_gray_helmet>]);

val scaleLeggings = <ore:scaleLeggings>;
scaleLeggings.addItems([<iceandfire:armor_red_leggings>,<iceandfire:armor_green_leggings>,<iceandfire:armor_bronze_leggings>,<iceandfire:armor_gray_leggings>]);

val scaleBoots = <ore:scaleBoots>;
scaleBoots.addItems([<iceandfire:armor_red_boots>,<iceandfire:armor_green_boots>,<iceandfire:armor_bronze_boots>,<iceandfire:armor_gray_boots>]);

val scaleLightChestplate = <ore:scaleLightChestplate>;
scaleLightChestplate.addItems([<iceandfire:armor_blue_chestplate>,<iceandfire:armor_white_chestplate>,<iceandfire:armor_sapphire_chestplate>,<iceandfire:armor_silver_chestplate>]);

val scaleLightHelmet = <ore:scaleLightHelmet>;
scaleLightHelmet.addItems([<iceandfire:armor_blue_helmet>,<iceandfire:armor_white_helmet>,<iceandfire:armor_sapphire_helmet>,<iceandfire:armor_silver_helmet>]);

val scaleLightLeggings = <ore:scaleLightLeggings>;
scaleLightLeggings.addItems([<iceandfire:armor_blue_leggings>,<iceandfire:armor_white_leggings>,<iceandfire:armor_sapphire_leggings>,<iceandfire:armor_silver_leggings>]);

val scaleLightBoots = <ore:scaleLightBoots>;
scaleLightBoots.addItems([<iceandfire:armor_blue_boots>,<iceandfire:armor_white_boots>,<iceandfire:armor_sapphire_boots>,<iceandfire:armor_silver_boots>]);



val trollChestplate = <ore:trollChestplate>;
trollChestplate.addItems([<iceandfire:mountain_troll_leather_chestplate>,<iceandfire:forest_troll_leather_chestplate>,<iceandfire:frost_troll_leather_chestplate>]);

val trollHelmet = <ore:trollHelmet>;
trollHelmet.addItems([<iceandfire:mountain_troll_leather_helmet>,<iceandfire:forest_troll_leather_helmet>,<iceandfire:frost_troll_leather_helmet>]);

val trollLeggings = <ore:trollLeggings>;
trollLeggings.addItems([<iceandfire:mountain_troll_leather_leggings>,<iceandfire:forest_troll_leather_leggings>,<iceandfire:frost_troll_leather_leggings>]);

val trollBoots = <ore:trollBoots>;
trollBoots.addItems([<iceandfire:mountain_troll_leather_boots>,<iceandfire:forest_troll_leather_boots>,<iceandfire:frost_troll_leather_boots>]);


val deathWormChestplate = <ore:deathWormChestplate>;
deathWormChestplate.addItems([<iceandfire:deathworm_yellow_chestplate>,<iceandfire:deathworm_white_chestplate>,<iceandfire:deathworm_red_chestplate>]);

val deathWormHelmet = <ore:deathWormHelmet>;
deathWormHelmet.addItems([<iceandfire:deathworm_yellow_helmet>,<iceandfire:deathworm_white_helmet>,<iceandfire:deathworm_red_helmet>]);

val deathWormLeggings = <ore:deathWormLeggings>;
deathWormLeggings.addItems([<iceandfire:deathworm_yellow_leggings>,<iceandfire:deathworm_white_leggings>,<iceandfire:deathworm_red_leggings>]);

val deathWormBoots = <ore:deathWormBoots>;
deathWormBoots.addItems([<iceandfire:deathworm_yellow_boots>,<iceandfire:deathworm_white_boots>,<iceandfire:deathworm_red_boots>]);


val tideChestplate = <ore:tideChestplate>;
tideChestplate.addItems([<iceandfire:tide_blue_chestplate>,<iceandfire:tide_bronze_chestplate>,<iceandfire:tide_green_chestplate>,<iceandfire:tide_red_chestplate>,<iceandfire:tide_purple_chestplate>,<iceandfire:tide_teal_chestplate>]);

val tideHelmet = <ore:tideHelmet>;
tideHelmet.addItems([<iceandfire:tide_blue_helmet>,<iceandfire:tide_bronze_helmet>,<iceandfire:tide_green_helmet>,<iceandfire:tide_red_helmet>,<iceandfire:tide_purple_helmet>,<iceandfire:tide_teal_helmet>]);

val tideLeggings = <ore:tideLeggings>;
tideLeggings.addItems([<iceandfire:tide_blue_leggings>,<iceandfire:tide_bronze_leggings>,<iceandfire:tide_green_leggings>,<iceandfire:tide_red_leggings>,<iceandfire:tide_purple_leggings>,<iceandfire:tide_teal_leggings>]);

val tideBoots = <ore:tideBoots>;
tideBoots.addItems([<iceandfire:tide_blue_boots>,<iceandfire:tide_bronze_boots>,<iceandfire:tide_green_boots>,<iceandfire:tide_red_boots>,<iceandfire:tide_purple_boots>,<iceandfire:tide_teal_boots>]);


val myrmexChestplate = <ore:myrmexChestplate>;
myrmexChestplate.addItems([<iceandfire:myrmex_jungle_chestplate>,<iceandfire:myrmex_desert_chestplate>]);

val myrmexHelmet = <ore:myrmexHelmet>;
myrmexHelmet.addItems([<iceandfire:myrmex_jungle_helmet>,<iceandfire:myrmex_desert_helmet>]);

val myrmexLeggings = <ore:myrmexLeggings>;
myrmexLeggings.addItems([<iceandfire:myrmex_jungle_leggings>,<iceandfire:myrmex_desert_leggings>]);

val myrmexBoots = <ore:myrmexBoots>;
myrmexBoots.addItems([<iceandfire:myrmex_jungle_boots>,<iceandfire:myrmex_desert_boots>]);


//ContentTweaker extra blocks recipes
//All Lunarin bricks
recipes.remove(<villagenames:lunaringoldbrick>);
recipes.remove(<villagenames:lunarinironbrick>);
recipes.removeByRecipeName("villagenames:lunaringoldbrick_toingots");
recipes.removeByRecipeName("villagenames:lunarinironbrick_toingots");

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
