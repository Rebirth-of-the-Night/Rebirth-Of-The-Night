import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.rockytweaks.Anvil;
import mods.rockytweaks.Merchant;

//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);

brewing.addBrew(<minecraft:splash_potion>, <minecraft:emerald>, <minecraft:experience_bottle>);

//for charcoal see pyrotech_recipes_kiln.zs
furnace.remove(<minecraft:coal:1>);


recipes.removeByRecipeName("aether_legacy:saddle");
recipes.removeByRecipeName("animania:saddle");
recipes.removeByRecipeName("minecraft:rabbit_stew_from_red_mushroom");
recipes.removeByRecipeName("minecraft:rabbit_stew_from_brown_mushroom");
recipes.addShaped("minecraft_rabbit_stew_from_mushroom", <minecraft:rabbit_stew>,
  [[null,<minecraft:cooked_rabbit>,null],
  [<minecraft:carrot>,<minecraft:baked_potato>,<ore:listAllmushroom>],
  [null,<minecraft:bowl>,null]]);
recipes.remove(<betterwithmods:raw_kebab>);
recipes.addShapeless("betterwithmods_food/raw_kebab", <betterwithmods:raw_kebab>*3, 
[<ore:listAllmushroom>, <minecraft:carrot>, <ore:listAllmuttonraw>, <ore:stickWood>]);
recipes.remove(<betterwithmods:raw_omelet>);
recipes.addShapeless("betterwithmods_food/raw_omelet", <betterwithmods:raw_omelet>*2, 
[<ore:listAllegg>, <ore:listAllmushroom>, <ore:listAllmushroom>, <ore:listAllmushroom>]);
recipes.remove(<betteranimalsplus:goatcheese>);
recipes.addShapeless("betteranimalsplus_milk_to_cheese", <betteranimalsplus:goatcheese>*3, 
[<betteranimalsplus:goatmilk>, <ore:listAllmushroom>]);
recipes.remove(<betternether:stalagnate_bowl_mushroom>);
recipes.addShapeless("betternether_stalagnate_bowl_mushroom", <betternether:stalagnate_bowl_mushroom>, 
[<ore:mushroomAny>, <ore:mushroomAny>, <betternether:stalagnate_bowl>]);
recipes.remove(<minecraftfuture:suspiciousstew>);
recipes.addShapeless("minecraftfuture_stew/sustew", <minecraftfuture:suspiciousstew>, 
[<ore:mushroomAny>, <ore:mushroomAny>, <minecraft:bowl>, <ore:flower>]);
recipes.remove(<wards:ward>);
recipes.addShaped("wards_ward", <wards:ward>,
  [[null,<minecraft:obsidian>,null],
  [<minecraft:diamond>,<minecraft:obsidian>,<minecraft:diamond>],
  [<ore:stoneSlab>,<ore:cobblestone>,<ore:stoneSlab>]]);

recipes.removeByRecipeName("minecraft:cake");
recipes.removeByRecipeName("minecraft:painting");
recipes.removeByRecipeName("minecraft:purple_shulker_box");
recipes.removeByRecipeName("minecraft:yellow_wool");
recipes.removeByRecipeName("minecraft:red_wool");
recipes.removeByRecipeName("minecraft:purple_wool");
recipes.removeByRecipeName("minecraft:pink_wool");
recipes.removeByRecipeName("minecraft:orange_wool");
recipes.removeByRecipeName("minecraft:magenta_wool");
recipes.removeByRecipeName("minecraft:lime_wool");
recipes.removeByRecipeName("minecraft:light_gray_wool");
recipes.removeByRecipeName("minecraft:light_blue_wool");
recipes.removeByRecipeName("minecraft:green_wool");
recipes.removeByRecipeName("minecraft:gray_wool");
recipes.removeByRecipeName("minecraft:cyan_wool");
recipes.removeByRecipeName("minecraft:brown_wool");
recipes.removeByRecipeName("minecraft:blue_wool");
recipes.removeByRecipeName("minecraft:black_wool");
recipes.removeByRecipeName("betternether:stalagnate_workbench");
recipes.removeByRecipeName("minecraft:stone_brick_stairs");
recipes.removeByRecipeName("minecraft:stone_brick_slab");
recipes.removeByRecipeName("minecraft:repeater");

recipes.remove(<minecraft:fish:0>);

mods.rockytweaks.Anvil.remove(<minecraft:wooden_sword>);

mods.ltt.LootTable.removeGlobalItem("minecraft:barrier");

//Chain Recipes
var chainlink = <iceandfire:chain_link>;
var chain = <quark:chain>;
var bigchain = <iceandfire:chain>;
var decochain = <rustic:chain>;

recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);
recipes.remove(<quark:chain>);
recipes.remove(<iceandfire:chain_link>);

recipes.addShaped("Chainlinks", chainlink*2,[
	[null, <ore:nuggetIron>, null],
    [<ore:nuggetIron>, null, <ore:nuggetIron>],
    [null, <ore:nuggetIron>, null]
]);

recipes.addShapeless("Quark_chain", chain,
	[chainlink, chainlink]
);

recipes.addShapeless("iceandfire_chain", bigchain,
	[chain, chainlink, chain]
);

recipes.addShaped("rustic_chain", decochain*16,[
	[chainlink, chainlink, chainlink],
    [chainlink, null, chainlink],
    [chainlink, chainlink, chainlink]
]);


recipes.addShaped("Chainmail Helmet", <minecraft:chainmail_helmet>,[
	[chain, chain, chain],
    [chain, null, chain],
    [null, null, null]
]);

recipes.addShaped("Chainmail Chestplate", <minecraft:chainmail_chestplate>,[
	[chain, null, chain],
    [chain, chain, chain],
    [chain, chain, chain]
]);

recipes.addShaped("Chainmail Leggings", <minecraft:chainmail_leggings>,[
	[chain, chain, chain],
    [chain, null, chain],
    [chain, null, chain]
]);

recipes.addShaped("Chainmail Boots", <minecraft:chainmail_boots>,[
	[null, null, null],
    [chain, null, chain],
    [chain, null, chain]
]);

val flint = <minecraft:flint>;
val stick = <ore:stickWood>;

recipes.addShaped("Flintstone Axe", <minecraft:stone_axe>,[
	[flint, flint, null],
    [flint, stick, null],
    [null, stick, null]
]);

recipes.addShaped("Flintstone Hoe", <minecraft:stone_hoe>,[
	[flint, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.addShaped("Flintstone Shovel", <minecraft:stone_shovel>,[
	[null, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.addShaped("Flintstone Pickaxe", <minecraft:stone_pickaxe>,[
	[flint, flint, flint],
    [null, stick, null],
    [null, stick, null]
]);

mods.jei.JEI.removeAndHide(<minecraft:shield>);

var potions = <minecraft:potion>;
var potions_splash = <minecraft:splash_potion>;
var potions_lingering = <minecraft:lingering_potion>;

potions.maxStackSize = 8;
potions_splash.maxStackSize = 8;
potions_lingering.maxStackSize = 8;


//Ore Dictionary Entries
val buttonWood = <ore:buttonWood>;
buttonWood.addItems([<aether_legacy:skyroot_button>,<betternether:reeds_button>,<betternether:stalagnate_planks_button>]);

val allStoneSlab = <ore:stoneSlab>;
allStoneSlab.addItems([<minecraft:stone_slab:*>, <undergroundbiomes:igneous_stone_halfslab:*>, <undergroundbiomes:metamorphic_stone_halfslab:*>, <undergroundbiomes:igneous_cobble_halfslab:*>, <undergroundbiomes:metamorphic_cobble_halfslab:*>, <undergroundbiomes:sedimentary_stone_halfslab:*>, <quark:sandstone_smooth_slab:*>, <quark:red_sandstone_smooth_slab:0>, <biomesoplenty:other_slab:1>]);

val StoneHugeBrick = <ore:StoneHugeBrick>;
StoneHugeBrick.addItems([<undergroundbiomes:igneous_brick:2>,<undergroundbiomes:igneous_brick:3>,<undergroundbiomes:igneous_brick:4>,<undergroundbiomes:igneous_brick:5>,<undergroundbiomes:igneous_brick:6>,<undergroundbiomes:igneous_brick:7>,<undergroundbiomes:metamorphic_brick>,<undergroundbiomes:metamorphic_brick:2>,<undergroundbiomes:metamorphic_brick:3>,<undergroundbiomes:metamorphic_brick:5>,<undergroundbiomes:metamorphic_brick:6>,<minecraft:stonebrick>,<quark:biome_brick>,<quark:world_stone_bricks>,<quark:world_stone_bricks:1>,<undergroundbiomes:metamorphic_brick:7>,<endreborn:end_bricks_glow>,<quark:biome_brick:1>,<quark:world_stone_bricks:2>,<undergroundbiomes:igneous_brick:1>,<undergroundbiomes:metamorphic_brick:1>,<undergroundbiomes:igneous_brick>,<undergroundbiomes:metamorphic_brick:4>]);

val toolAxe = <ore:toolAxe>;
toolAxe.addItems([<minecraft:wooden_axe>,<aether_legacy:skyroot_axe>,<aether_legacy:holystone_axe>,<aether_legacy:zanite_axe>,<aether_legacy:gravitite_axe>,<aether_legacy:valkyrie_axe>,<atop:mud_axe>,<betterwithmods:steel_axe>,<mowziesmobs:wrought_axe>,<netherex:frosted_amedian_axe>,<simpleores:copper_axe>,<simpleores:mythril_axe>,<simpleores:adamantium_axe>,<simpleores:onyx_axe>,<twilightforest:ironwood_axe>,<twilightforest:steeleaf_axe>,<twilightforest:minotaur_axe_gold>,<twilightforest:minotaur_axe>,<twilightforest:knightmetal_axe>,<spartancompat:battleaxe_onyx>,<spartancompat:battleaxe_skyroot>,<spartancompat:battleaxe_holystone>,<spartancompat:battleaxe_zanite>,<spartancompat:battleaxe_gravitite>,<spartancompat:battleaxe_soulforged_steel>,<spartanfire:battleaxe_dragonbone>,<spartanfire:battleaxe_fire_dragonbone>,<spartanfire:battleaxe_ice_dragonbone>,<spartanfire:battleaxe_jungle>,<spartanfire:battleaxe_desert>,<spartanfire:battleaxe_jungle_venom>,<spartanfire:battleaxe_desert_venom>,<spartanfire:battleaxe_ice_dragonsteel>,<spartanfire:battleaxe_fire_dragonsteel>,<spartanweaponry:battleaxe_stone>,<spartanweaponry:battleaxe_iron>,<spartanweaponry:battleaxe_gold>,<spartanweaponry:battleaxe_diamond>,<spartanweaponry:battleaxe_bronze>,<spartanweaponry:battleaxe_silver>,]);

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

val glue = <ore:glue>;
glue.addItems([<mod_lavacow:silky_sludge>,<mod_lavacow:holy_sludge>]);

val flower = <ore:flower>;
flower.addItems([<biomesoplenty:flower_0:*>,<iceandfire:fire_lily>,<iceandfire:frost_lily>,<minecraftfuture:flowerwhite>,<minecraftfuture:flowerblue>,<minecraftfuture:flowerblack>,<aether_legacy:purple_flower>,<aether_legacy:white_flower>,<minecraft:double_plant:0>,<minecraft:double_plant:1>,<minecraft:double_plant:4>,<minecraft:double_plant:5>,<biomesoplenty:flower_1:*>,<endreborn:crop_ender_flower>]);

val pixieJar = <ore:jarPixieAny>;
pixieJar.addItems([<iceandfire:jar_pixie>,<iceandfire:jar_pixie:1>,<iceandfire:jar_pixie:2>,<iceandfire:jar_pixie:3>,<iceandfire:jar_pixie:4>]);

val mushroom = <ore:mushroomAny>;
mushroom.addItems([<biomesoplenty:mushroom>,<biomesoplenty:mushroom:1>,<biomesoplenty:mushroom:2>,<biomesoplenty:mushroom:3>,<biomesoplenty:mushroom:4>,<harvestcraft:whitemushroomitem>,<rustic:deathstalk_mushroom>,<rustic:mooncap_mushroom>]);

val rawBeef = <ore:listAllbeefraw>;
rawBeef.add(<twilightforest:raw_meef>);

val cookedBeef = <ore:listAllbeefcooked>;
cookedBeef.add(<twilightforest:cooked_meef>);

val rawChicken = <ore:listAllchickenraw>;
rawChicken.addItems([<primitivemobs:dodo>,<animania:raw_prime_chicken>,<animania:raw_peacock>,<animania:raw_prime_peacock>,<aether_legacy:cockatrice>,<aether_legacy:enchanted_cockatrice>]);

val cookedChicken = <ore:listAllchickencooked>;
cookedChicken.addItems([<primitivemobs:cooked_dodo>,<animania:cooked_prime_chicken>,<animania:cooked_peacock>,<animania:cooked_prime_peacock>,<aether_legacy:cooked_enchanted_cockatrice>]);

val rawMutton = <ore:listAllmuttonraw>;
rawMutton.add(<animania:raw_prime_mutton>);

val cookedMutton = <ore:listAllmuttoncooked>;
cookedMutton.add(<animania:cooked_prime_mutton>);

val rawFrog = <ore:listAllfrograw>;
rawFrog.addItems([<animania:raw_frog_legs>,<harvestcraft:frograwitem>]);

val cookedFrog = <ore:listAllfrogcooked>;
cookedFrog.addItems([<animania:cooked_frog_legs>,<harvestcraft:frogcookeditem>]);

val rawCrab = <ore:foodCrabraw>;
rawCrab.addItems([<betteranimalsplus:crab_meat_raw>,<mod_lavacow:mimic_claw>,<quark:crab_leg>]);

val cookedCrab = <ore:foodCrabcooked>;
cookedCrab.addItems([<betteranimalsplus:crab_meat_cooked>,<mod_lavacow:mimic_claw_cooked>,<quark:cooked_crab_leg>]);

val rawFish = <ore:listAllfishraw>;
rawFish.addItems([<harvestcraft:crabrawitem>,<mod_lavacow:piranha>,<mod_lavacow:zombiepiranha_item>,<mod_lavacow:cheirolepis>]);
rawFish.addAll(<ore:rawCrab>);

val cookedFish = <ore:listAllfishcooked>;
cookedFish.addItems([<harvestcraft:crabcookeditem>,<mod_lavacow:piranha_cooked>,<mod_lavacow:zombiepiranha_item_cooked>,<mod_lavacow:cheirolepis_cooked>]);
cookedFish.addAll(<ore:cookedCrab>);

val fish = <ore:fish>;
fish.addAll(<ore:listAllfishraw>);

val rawVenison = <ore:listAllvenisonraw>;
rawVenison.add(<twilightforest:raw_venison>);

val cookedVenison = <ore:listAllvenisoncooked>;
cookedVenison.add(<twilightforest:cooked_venison>);

val egg = <ore:listAllegg>;
egg.add(<betterwithmods:raw_egg>);

val rawMeat = <ore:listAllmeatraw>;
rawMeat.addItems([<betterwithmods:mystery_meat>,<betterwithmods:bat_wing>]);
rawMeat.addAll(<ore:rawBeef>);
rawMeat.addAll(<ore:rawChicken>);
rawMeat.addAll(<ore:rawMutton>);
rawMeat.addAll(<ore:rawFrog>);
rawMeat.addAll(<ore:rawFish>);
rawMeat.addAll(<ore:rawVenison>);

val cookedMeat = <ore:listAllmeatcooked>;
cookedMeat.addItems([<betterwithmods:cooked_mystery_meat>,<betterwithmods:cooked_bat_wing>]);
cookedMeat.addAll(<ore:cookedBeef>);
cookedMeat.addAll(<ore:cookedChicken>);
cookedMeat.addAll(<ore:cookedMutton>);
cookedMeat.addAll(<ore:cookedFrog>);
cookedMeat.addAll(<ore:cookedFish>);
cookedMeat.addAll(<ore:cookedVenison>);

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
//Villager Trades
//Example: Merchant.addTrade("minecraft:nitwit", "nitwit", <minecraft:emerald>, <minecraft:diamond>, <minecraft:cobblestone>, 1);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <contenttweaker:nethercoin>, <spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}), 2);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <minecraft:emerald>*12, <twilightforest:firefly>, 1);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <minecraft:emerald>*5, <betterwithaddons:shinai>, 1);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <contenttweaker:nethercoin>, <iceandfire:jar_pixie:4>, 2);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <contenttweaker:nethercoin>, <iceandfire:jar_pixie:3>, 2);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <contenttweaker:nethercoin>, <iceandfire:jar_pixie:2>, 2);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <contenttweaker:nethercoin>, <iceandfire:jar_pixie:1>, 2);
Merchant.addTrade("primitivemobs:merchant", "primitivemobs.traveling_merchant", <contenttweaker:nethercoin>, <iceandfire:jar_pixie>, 2);

Merchant.addTrade("minecraft:nitwit", "nitwit", <contenttweaker:nethercoin>, <spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}), 1);