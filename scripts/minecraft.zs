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

recipes.remove(<dynamictrees:dirtbucket>);
recipes.addShapeless("dirt_bucket",<dynamictrees:dirtbucket>,[<minecraft:bucket>,<ore:dirt>]);

recipes.remove(<sereneseasons:season_sensor_spring>);
recipes.addShaped("season_sensor",<sereneseasons:season_sensor_spring>,[
    [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
    [<minecraft:quartz>,<sereneseasons:season_clock>,<minecraft:quartz>],
    [<ore:stoneSlab>,<ore:stoneSlab>,<ore:stoneSlab>]
]);

recipes.removeByRecipeName("aether_legacy:saddle");
recipes.removeByRecipeName("animania:saddle");
recipes.removeByRecipeName("minecraft:rabbit_stew_from_red_mushroom");
recipes.removeByRecipeName("minecraft:rabbit_stew_from_brown_mushroom");
recipes.addShaped("minecraft_rabbit_stew_from_mushroom", <minecraft:rabbit_stew>,
  [[null,<minecraft:cooked_rabbit>,null],
  [<minecraft:carrot>,<minecraft:baked_potato>,<ore:listAllmushroom>],
  [null,<minecraft:bowl>,null]]);
recipes.remove(<betteranimalsplus:goatcheese>);
recipes.addShapeless("betteranimalsplus_milk_to_cheese", <betteranimalsplus:goatcheese>*3, 
[<betteranimalsplus:goatmilk>, <ore:listAllmushroom>]);
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
recipes.removeByRecipeName("minecraft:repeater");
recipes.removeByRecipeName("minecraft:bone_meal_from_block");

recipes.remove(<minecraft:tnt>);
recipes.addShaped("tnt",<minecraft:tnt>,[
    [<minecraft:gunpowder>,<ore:sand>,<minecraft:gunpowder>],
    [<ore:sand>,<minecraft:gunpowder>,<ore:sand>],
    [<minecraft:gunpowder>,<ore:sand>,<minecraft:gunpowder>]
]);

val coarseMatArray = [<minecraft:dirt:0>,<biomesoplenty:dirt:2>,<biomesoplenty:dirt:1>,<biomesoplenty:dirt:0>] as IItemStack[];
val coarseDirtArray = [<minecraft:dirt:1>,<biomesoplenty:dirt:10>,<biomesoplenty:dirt:9>,<biomesoplenty:dirt:8>] as IItemStack[];

for i,dirt in coarseDirtArray{
    recipes.remove(dirt);
    recipes.addShaped(dirt,[
        [coarseMatArray[i],<ore:gravel>],
        [<ore:gravel>,coarseMatArray[i]]
    ]);
}

recipes.remove(<minecraft:fish:0>);
recipes.remove(<minecraft:stone_slab:5>);
recipes.addShaped("stone_brick_slab",<minecraft:stone_slab:5>*6,[
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>]
]);
recipes.remove(<minecraft:stone_brick_stairs>);
recipes.addShapedMirrored("stone_brick_stairs_brick",<minecraft:stone_brick_stairs>*8,[
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,null,null],
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,null],
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>]
]);
recipes.addShapedMirrored("stone_brick_stairs_slab",<minecraft:stone_brick_stairs>*4,[
    [<minecraft:stone_slab:5>,null,null],
    [<minecraft:stone_slab:5>,<minecraft:stone_slab:5>,null],
    [<minecraft:stone_slab:5>,<minecraft:stone_slab:5>,<minecraft:stone_slab:5>]
]);
recipes.addShapeless("stone_brick_from_stairs",<minecraft:stonebrick:0>*3,[<minecraft:stone_brick_stairs>,<minecraft:stone_brick_stairs>,<minecraft:stone_brick_stairs>,<minecraft:stone_brick_stairs>]);

recipes.remove(<minecraft:armor_stand>);
recipes.addShaped("armor_stand",<minecraft:armor_stand>,[
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    [null,<ore:stickWood>,null],
    [<ore:stickWood>,<ore:stoneSlab>,<ore:stickWood>]
]);

recipes.remove(<minecraft:fishing_rod>);
recipes.addShaped("fishing_rod",<minecraft:fishing_rod>,[
    [null,null,<ore:stickWood>],
    [null,<ore:stickWood>,<minecraft:string>],
    [<ore:stickWood>,<minecraft:iron_nugget>|<contenttweaker:material_part:6>,<minecraft:string>]
]);


// Rail Overhaul

recipes.remove(<minecraft:detector_rail>);
recipes.addShaped("detector_rail",<minecraft:detector_rail>*6,[
    [<minecraft:iron_ingot>,null,<minecraft:iron_ingot>],
    [<minecraft:iron_ingot>,<ore:pressurePlateWood>,<minecraft:iron_ingot>],
    [<minecraft:iron_ingot>,<minecraft:redstone>,<minecraft:iron_ingot>]
]);
recipes.addShaped("tinrail",<minecraft:rail>*8,[
    [<simpleores:tin_ingot>,null,<simpleores:tin_ingot>],
    [<simpleores:tin_ingot>,<ore:stickWood>,<simpleores:tin_ingot>],
    [<simpleores:tin_ingot>,null,<simpleores:tin_ingot>]
]);
recipes.addShaped("steelrail",<minecraft:rail>*32,[
    [<dungeontactics:steel_ingot>,null,<dungeontactics:steel_ingot>],
    [<dungeontactics:steel_ingot>,<ore:stickWood>,<dungeontactics:steel_ingot>],
    [<dungeontactics:steel_ingot>,null,<dungeontactics:steel_ingot>]
]);

recipes.remove(<chutes:chute_wood>);
recipes.addShaped("wooden_chute",<chutes:chute_wood>*16,[
    [null,<ore:barkWood>,null],
    [<ore:barkWood>,null,<ore:barkWood>],
    [null,<ore:barkWood>,null]
]);

// other tin uses
recipes.remove(<sereneseasons:season_clock>);

recipes.addShaped("tintripwirehook", <minecraft:tripwire_hook> * 2,[
	[null, <simpleores:tin_ingot>, null],
	[null, <ore:stickWood>, null],
	[null, <ore:plankWood>, null]
]);

recipes.addShaped("tincompass", <minecraft:compass>,[
	[null, <simpleores:tin_ingot>, null],
	[<simpleores:tin_ingot>, <minecraft:redstone>, <simpleores:tin_ingot>],
	[null, <simpleores:tin_ingot>, null]
]);

recipes.addShaped("seasonclock1", <sereneseasons:season_clock>, [
	[<minecraft:quartz>, <simpleores:tin_ingot>, <minecraft:quartz>],
	[<simpleores:tin_ingot>, <minecraft:redstone>, <simpleores:tin_ingot>],
	[<minecraft:quartz>, <simpleores:tin_ingot>, <minecraft:quartz>]
]);

// new bucket recipe
recipes.addShaped("tin_bucket", <minecraft:bucket>,[
	[null, null, null],
    [<simpleores:tin_ingot>, null, <simpleores:tin_ingot>],
    [null, <simpleores:tin_ingot>, null]
]);

recipes.remove(<minecraft:concrete_powder:*>);
recipes.addShapeless("white_concrete_powder",<minecraft:concrete_powder:0>*8,[<ore:dyeWhite>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("orange_concrete_powder",<minecraft:concrete_powder:1>*8,[<ore:dyeOrange>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("magenta_concrete_powder",<minecraft:concrete_powder:2>*8,[<ore:dyeMagenta>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("light_blue_concrete_powder",<minecraft:concrete_powder:3>*8,[<ore:dyeLightBlue>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("yellow_concrete_powder",<minecraft:concrete_powder:4>*8,[<ore:dyeYellow>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("lime_concrete_powder",<minecraft:concrete_powder:5>*8,[<ore:dyeLime>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("pink_concrete_powder",<minecraft:concrete_powder:6>*8,[<ore:dyePink>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("gray_concrete_powder",<minecraft:concrete_powder:7>*8,[<ore:dyeGray>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("light_gray_concrete_powder",<minecraft:concrete_powder:8>*8,[<ore:dyeLightGray>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("cyan_concrete_powder",<minecraft:concrete_powder:9>*8,[<ore:dyeCyan>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("purple_concrete_powder",<minecraft:concrete_powder:10>*8,[<ore:dyePurple>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("blue_concrete_powder",<minecraft:concrete_powder:11>*8,[<ore:dyeBlue>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("brown_concrete_powder",<minecraft:concrete_powder:12>*8,[<ore:dyeBrown>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("green_concrete_powder",<minecraft:concrete_powder:13>*8,[<ore:dyeGreen>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("red_concrete_powder",<minecraft:concrete_powder:14>*8,[<ore:dyeRed>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("black_concrete_powder",<minecraft:concrete_powder:15>*8,[<ore:dyeBlack>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);


mods.rockytweaks.Anvil.remove(<minecraft:wooden_sword>);

mods.ltt.LootTable.removeGlobalItem("minecraft:barrier");

//Chain Recipes
var chainlink = <iceandfire:chain_link>;
var chain = <quark:chain>;
var bigchain = <iceandfire:chain>;
var decochain = <rustic:chain>;

recipes.removeByRecipeName("iceandfire:chain");
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

recipes.addShapeless("Quark_chain", <quark:chain>, 
[chainlink, chainlink]);

recipes.addShaped("iceandfire_chain", bigchain,[
	[<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>],
	[chain, chainlink, chain],
	[<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>]
]);

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

//Wireless Redstone
recipes.removeByRecipeName("lwr:recwirelessremote");
recipes.removeByRecipeName("lwr:recwirelessreciever");
recipes.removeByRecipeName("lwr:recwirelesstransmitter");
recipes.addShaped("wireless_remote",<lwr:itemwirelessremote>, [[null, <minecraft:redstone_torch>, null],[<simpleores:tin_ingot>, <contenttweaker:order_rune>.anyDamage().transformDamage(), <simpleores:tin_ingot>], [<simpleores:tin_ingot>, <betterwithmods:material:34>, <simpleores:tin_ingot>]]);
recipes.addShaped("wireless_reciever",<lwr:blockwirelessreciever>, [[null, <contenttweaker:order_rune>.anyDamage().transformDamage(), null],[null, <minecraft:ender_pearl>, null], [<simpleores:tin_ingot>, <simpleores:tin_ingot>, <simpleores:tin_ingot>]]);
recipes.addShaped("wireless_transmitter",<lwr:blockwirelesstransmitter>, [[null, <minecraft:ender_pearl>, null],[null, <contenttweaker:order_rune>.anyDamage().transformDamage(), null], [<simpleores:tin_ingot>, <simpleores:tin_ingot>, <simpleores:tin_ingot>]]);

val flint = <minecraft:flint>;
val stick = <ore:stickWood>;

recipes.addShaped("flintstone_axe", <minecraft:stone_axe>,[
	[flint, flint, null],
    [flint, stick, null],
    [null, stick, null]
]);

recipes.addShaped("flintstone_hoe", <minecraft:stone_hoe>,[
	[flint, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.addShaped("flintstone_shovel", <minecraft:stone_shovel>,[
	[null, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.addShaped("flintstone_pickaxe", <minecraft:stone_pickaxe>,[
	[flint, flint, flint],
    [null, stick, null],
    [null, stick, null]
]);

var woodenDoorMat = <betternether:stalagnate_planks>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>;

recipes.addShaped("wooden_door",<minecraft:wooden_door>,[
    [woodenDoorMat,woodenDoorMat],
    [woodenDoorMat,woodenDoorMat],
    [woodenDoorMat,woodenDoorMat]
]);

var woodenBoatMat = <betternether:stalagnate_planks>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>|<betternether:reeds_block>|<rustic:planks>|<rustic:planks:1>|<twilightforest:twilight_oak_planks>|<twilightforest:canopy_planks>|<twilightforest:mangrove_planks>|<twilightforest:dark_planks>|<twilightforest:time_planks>|<twilightforest:trans_planks>|<twilightforest:mine_planks>|<twilightforest:sort_planks>|<aether_legacy:skyroot_plank>;

recipes.addShaped("wooden_boat",<minecraft:boat>,[
    [woodenBoatMat,null,woodenBoatMat],
    [woodenBoatMat,woodenBoatMat,woodenBoatMat]
]);

var woodenButtonMat = <biomesoplenty:planks_0>|<biomesoplenty:planks_0:1>|<biomesoplenty:planks_0:2>|<biomesoplenty:planks_0:3>|<biomesoplenty:planks_0:4>|<biomesoplenty:planks_0:5>|<biomesoplenty:planks_0:6>|<biomesoplenty:planks_0:7>|<biomesoplenty:planks_0:8>|<biomesoplenty:planks_0:9>|<biomesoplenty:planks_0:10>|<biomesoplenty:planks_0:11>|<biomesoplenty:planks_0:12>|<biomesoplenty:planks_0:13>|
<biomesoplenty:planks_0:14>|<biomesoplenty:planks_0:15>|<rustic:planks>|<rustic:planks:1>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>|<twilightforest:twilight_oak_planks>|<twilightforest:canopy_planks>|<twilightforest:mangrove_planks>|<twilightforest:dark_planks>|<twilightforest:time_planks>|<twilightforest:trans_planks>|<twilightforest:mine_planks>|<twilightforest:sort_planks>;

recipes.addShapeless("wooden_button",<minecraft:wooden_button>,[woodenButtonMat]);

mods.jei.JEI.removeAndHide(<minecraft:shield>);
mods.ltt.LootTable.removeGlobalItem("minecraft:shield");


var potions = <minecraft:potion>;
var potions_splash = <minecraft:splash_potion>;
var potions_lingering = <minecraft:lingering_potion>;

potions.maxStackSize = 8;
potions_splash.maxStackSize = 8;
potions_lingering.maxStackSize = 8;

<dungeontactics:bone_cestus>.displayName = "Holy Stake";
recipes.addShaped("Holy Stake", <dungeontactics:bone_cestus>, 
[[null, <iceandfire:silver_nugget>, <contenttweaker:aether_rune>.anyDamage().transformDamage()],
[<iceandfire:silver_nugget>, <betterwithmods:stake>, <iceandfire:silver_nugget>], 
[<iceandfire:silver_nugget>, <iceandfire:silver_nugget>, null]]);

//Ore Dictionary Entries
<ore:plankWood>.add(<aether_legacy:skyroot_plank>);
<ore:sand>.add(<minecraft:sand:1>);

val dirt = <ore:dirt>;
dirt.addItems([<biomesoplenty:dirt:1>,<biomesoplenty:dirt:2>]);

val wool = <ore:wool>;
wool.remove(<minecraft:wool>);

val trapdoorWood = <ore:trapdoorWood>;
trapdoorWood.addItems([<twilightforest:twilight_oak_trapdoor>,<twilightforest:canopy_trapdoor>,<twilightforest:mangrove_trapdoor>,<twilightforest:dark_trapdoor>,<twilightforest:time_trapdoor>,<twilightforest:trans_trapdoor>,<twilightforest:mine_trapdoor>,<twilightforest:sort_trapdoor>]);

val pressurePlateWood = <ore:pressurePlateWood>;
pressurePlateWood.addItems([<aether_legacy:skyroot_pressure_plate>,<betternether:stalagnate_planks_plate>,<betternether:reeds_plate>,<twilightforest:twilight_oak_plate>,<twilightforest:canopy_plate>,<twilightforest:mangrove_plate>,<twilightforest:dark_plate>,<twilightforest:time_plate>,<twilightforest:trans_plate>,<twilightforest:mine_plate>,<twilightforest:sort_plate>]);

val buttonWood = <ore:buttonWood>;
buttonWood.addItems([<aether_legacy:skyroot_button>,<betternether:reeds_button>,<betternether:stalagnate_planks_button>]);

val allStoneSlab = <ore:stoneSlab>;
allStoneSlab.addItems([<minecraft:stone_slab:*>, <undergroundbiomes:igneous_stone_halfslab:*>, <undergroundbiomes:metamorphic_stone_halfslab:*>, <undergroundbiomes:igneous_cobble_halfslab:*>, <undergroundbiomes:metamorphic_cobble_halfslab:*>, <undergroundbiomes:sedimentary_stone_halfslab:*>, <quark:sandstone_smooth_slab:*>, <quark:red_sandstone_smooth_slab:*>, <biomesoplenty:other_slab:1>, <minecraft:stone_slab2:*>, <aether_legacy:holystone_slab:*>, <aether_legacy:mossy_holystone_slab:*>, <quark:fire_stone_slab:*>, <quark:icy_stone_slab:*>, <quark:cobbed_stone_slab:*>, <quark:soul_sandstone_slab:*>, <minecraft:purpur_slab:*>, <aether_legacy:carved_slab:*>, <aether_legacy:angelic_slab:*>, <aether_legacy:hellfire_slab:*>, <aether_legacy:holystone_brick_slab:*>, <betternether:nether_brick_tile_slab_half:*>, <netherex:red_nether_brick_slab:*>, <netherex:gloomy_nether_brick_slab:*>, <netherex:lively_nether_brick_slab:*>, <netherex:fiery_nether_brick_slab:*>, <netherex:icy_nether_brick_slab:*>, <netherex:basalt_slab:*>, <netherex:smooth_basalt_slab:*>, <netherex:basalt_brick_slab:*>, <netherex:basalt_pillar_slab:*>, <quark:biotite_slab:*>, <quark:fire_stone_brick_slab:*>, <quark:icy_stone_brick_slab:*>, <quark:elder_prismarine_slab:*>, <quark:elder_prismarine_bricks_slab:*>, <quark:elder_prismarine_dark_slab:*>, <quark:sandstone_bricks_slab:*>, <quark:red_sandstone_bricks_slab:*>, <quark:soul_sandstone_smooth_slab:*>, <quark:soul_sandstone_bricks_slab:*>, <quark:sandy_bricks_slab:*>, <quark:stone_granite_slab:*>, <quark:stone_diorite_slab:*>, <quark:stone_andesite_slab:*>, <quark:end_bricks_slab:*>, <quark:prismarine_slab:*>, <quark:prismarine_bricks_slab:*>, <quark:prismarine_dark_slab:*>, <quark:cobblestone_mossy_slab:*>, <quark:stonebrick_mossy_slab:*>, <quark:charred_nether_brick_slab:*>, <quark:stone_granite_bricks_slab:*>, <quark:stone_diorite_bricks_slab:*>, <quark:stone_andesite_bricks_slab:*>, <quark:midori_block_slab:*>, <quark:magma_bricks_slab:*>, <quark:duskbound_block_slab:*>, <quark:polished_netherrack_bricks_slab:*>, <undergroundbiomes:igneous_brick_halfslab:*>, <undergroundbiomes:metamorphic_brick_halfslab:*>]);

val StoneHugeBrick = <ore:StoneHugeBrick>;
StoneHugeBrick.addItems([<undergroundbiomes:igneous_brick:2>,<undergroundbiomes:igneous_brick:3>,<undergroundbiomes:igneous_brick:4>,<undergroundbiomes:igneous_brick:5>,<undergroundbiomes:igneous_brick:6>,<undergroundbiomes:igneous_brick:7>,<undergroundbiomes:metamorphic_brick>,<undergroundbiomes:metamorphic_brick:2>,<undergroundbiomes:metamorphic_brick:3>,<undergroundbiomes:metamorphic_brick:5>,<undergroundbiomes:metamorphic_brick:6>,<minecraft:stonebrick>,<quark:biome_brick>,<quark:world_stone_bricks>,<quark:world_stone_bricks:1>,<undergroundbiomes:metamorphic_brick:7>,<quark:biome_brick:1>,<quark:world_stone_bricks:2>,<undergroundbiomes:igneous_brick:1>,<undergroundbiomes:metamorphic_brick:1>,<undergroundbiomes:igneous_brick>,<undergroundbiomes:metamorphic_brick:4>]);

val toolAxe = <ore:toolAxe>;
toolAxe.addItems([<minecraft:wooden_axe:*>,<aether_legacy:skyroot_axe:*>,<aether_legacy:holystone_axe:*>,<aether_legacy:zanite_axe:*>,<aether_legacy:gravitite_axe:*>,<aether_legacy:valkyrie_axe:*>,<atop:mud_axe:*>,<betterwithmods:steel_axe:*>,<mowziesmobs:wrought_axe:*>,<netherex:frosted_amedian_axe:*>,<simpleores:copper_axe:*>,<simpleores:mythril_axe:*>,<simpleores:adamantium_axe:*>,<simpleores:onyx_axe:*>,<twilightforest:ironwood_axe:*>,<twilightforest:steeleaf_axe:*>,<twilightforest:minotaur_axe_gold:*>,<twilightforest:minotaur_axe:*>,<twilightforest:knightmetal_axe:*>,<spartancompat:battleaxe_onyx:*>,<spartancompat:battleaxe_skyroot:*>,<spartancompat:battleaxe_holystone:*>,<spartancompat:battleaxe_zanite:*>,<spartancompat:battleaxe_gravitite:*>,<spartancompat:battleaxe_soulforged_steel:*>,<spartanfire:battleaxe_dragonbone:*>,<spartanfire:battleaxe_fire_dragonbone:*>,<spartanfire:battleaxe_ice_dragonbone:*>,<spartanfire:battleaxe_jungle:*>,<spartanfire:battleaxe_desert:*>,<spartanfire:battleaxe_jungle_venom:*>,<spartanfire:battleaxe_desert_venom:*>,<spartanfire:battleaxe_ice_dragonsteel:*>,<spartanfire:battleaxe_fire_dragonsteel:*>,<spartanweaponry:battleaxe_stone:*>,<spartanweaponry:battleaxe_iron:*>,<spartanweaponry:battleaxe_gold:*>,<spartanweaponry:battleaxe_diamond:*>,<spartanweaponry:battleaxe_bronze:*>,<spartanweaponry:battleaxe_silver:*>]);

val hammerTool = <ore:hammerTool>;
hammerTool.addItems([<aether_legacy:notch_hammer:*>,<pyrotech:stone_hammer:*>,<pyrotech:iron_hammer:*>,<pyrotech:diamond_hammer:*>,<pyrotech:obsidian_hammer:*>]);

val anvilAny = <ore:anvilAny>;
anvilAny.addItems([<minecraft:anvil>,<betterwithmods:steel_anvil>,<pyrotech:anvil_granite>]);

val vine = <ore:vine>;
vine.addItems([<biomesoplenty:willow_vine>,<biomesoplenty:ivy>]);

val twine = <ore:twine>;
twine.add(<betterwithmods:material:3>);

val durableFiber = <ore:durableFiber>;
durableFiber.addAll(<ore:fiberHemp>);
durableFiber.add(<betterwithmods:material:3>);
durableFiber.add(<pyrotech:material:26>);

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
flower.addItems([<biomesoplenty:flower_0:*>,<biomesoplenty:plant_1:10>,<biomesoplenty:double_plant:0>,<iceandfire:fire_lily>,<iceandfire:frost_lily>,<minecraftfuture:flowerwhite>,<minecraftfuture:flowerblue>,<minecraftfuture:flowerblack>,<aether_legacy:purple_flower>,<aether_legacy:white_flower>,<minecraft:double_plant:0>,<minecraft:double_plant:1>,<minecraft:double_plant:4>,<minecraft:double_plant:5>,<biomesoplenty:flower_1:*>,<endreborn:crop_ender_flower>]);

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

rawMeat.addItems([<betterwithmods:mystery_meat>,<betterwithmods:bat_wing>,<mod_lavacow:mousse>,<mod_lavacow:canepork>,<mod_lavacow:frozenthigh>,<betterwithmods:wolf_chop>]);
rawMeat.addAll(<ore:rawBeef>);
rawMeat.addAll(<ore:rawChicken>);
rawMeat.addAll(<ore:rawMutton>);
rawMeat.addAll(<ore:rawFrog>);
rawMeat.addAll(<ore:rawFish>);
rawMeat.addAll(<ore:rawVenison>);

val cookedMeat = <ore:listAllmeatcooked>;
cookedMeat.addItems([<betterwithmods:cooked_mystery_meat>,<betterwithmods:cooked_bat_wing>,<mod_lavacow:meatball>,<betterwithmods:cooked_wolf_chop>]);
cookedMeat.addAll(<ore:cookedBeef>);
cookedMeat.addAll(<ore:cookedChicken>);
cookedMeat.addAll(<ore:cookedMutton>);
cookedMeat.addAll(<ore:cookedFrog>);
cookedMeat.addAll(<ore:cookedFish>);
cookedMeat.addAll(<ore:cookedVenison>);

val nitrogen = <ore:mulchNitrogen>;
nitrogen.addAll(<ore:listAllmeat>);
nitrogen.addAll(<ore:listAllbeefraw>);
nitrogen.addAll(<ore:listAllmeatraw>);


val anyAsh = <ore:dustAsh>;
anyAsh.add(<biomesoplenty:ash>);

val componentWheel = <ore:componentWheel>;
componentWheel.addItems([<animania:wheel>,<betterwithmods:material>,<betterwithmods:material:48>]);

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

val runes = <ore:runeItem>;
runes.addItems([<contenttweaker:fae_rune>,<contenttweaker:chaos_rune>,<contenttweaker:mind_rune>,<contenttweaker:balance_rune>,<contenttweaker:water_rune>,<contenttweaker:creation_rune>,<contenttweaker:holding_rune>,<contenttweaker:order_rune>,<contenttweaker:nature_rune>,<contenttweaker:plague_rune>,<contenttweaker:illusion_rune>,<contenttweaker:trans_rune>,<contenttweaker:air_rune>,<contenttweaker:knowledge_rune>,<contenttweaker:disint_rune>,<contenttweaker:draconic_rune>,<contenttweaker:blank_rune>,<contenttweaker:strength_rune>,<contenttweaker:aether_rune>,<contenttweaker:luna_rune>,<contenttweaker:poison_rune>,<contenttweaker:energy_rune>,<contenttweaker:sol_rune>,<contenttweaker:nether_rune>,<contenttweaker:life_rune>,<contenttweaker:time_rune>,<contenttweaker:fire_rune>,<contenttweaker:soul_rune>,<contenttweaker:death_rune>,<contenttweaker:earth_rune>,<contenttweaker:arcane_rune>,<endreborn:item_end_rune>,<quark:rune>]
);


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
/*recipes.addShapeless("lunarin_SFS", <contenttweaker:lunarinsfsbrick>*24,
	[<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>]
);
*/
mods.betterwithmods.Anvil.addShapeless(<contenttweaker:lunarinsfsbrick>*24, 
[<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>]
);

recipes.addShapeless("lunarin_crystal_heart", <contenttweaker:lunarinheartbrick>*24,
	[<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>]
);
//Should've been farlander since it's a gem, oh whatever
recipes.addShapeless("lunarin_rime", <contenttweaker:lunarinrimebrick>*24,
	[<ore:gemRime>, <ore:gemRime>, <ore:gemRime>, <ore:gemRime>, <ore:gemRime>, <ore:gemRime>]
);
recipes.addShapeless("lunarin_fiery", <contenttweaker:lunarinfierybrick>*24,
	[<ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>]
);
recipes.addShapeless("witheredblock_to_dust>", <quark:black_ash>*9, 
   [<contenttweaker:witheredblock>]
);
recipes.addShaped("dust_to_witheredblock", <contenttweaker:witheredblock>,[
	[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
    [<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
    [<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]
]);

// Enchanting Table change

recipes.remove(<minecraft:enchanting_table>);

recipes.addShaped("enchanting_table", <minecraft:enchanting_table>, [[null, <minecraft:book>, null],[<minecraft:diamond>, <contenttweaker:luna_orb>, <minecraft:diamond>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

//Lifting methods
recipes.addShaped("auto_ladder_iron", <advancedliftingmethods:powered_ladder>*4, 
[[<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>],
[<ore:ingotElectrum>,<betterwithmods:material:36>,<ore:ingotElectrum>],
[<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>]]);
recipes.addShaped("auto_ladder_tin", <advancedliftingmethods:powered_ladder>*1, 
[[<ore:ingotTin>,<ore:dustRedstone>,<ore:ingotTin>],
[<ore:ingotElectrum>,<betterwithmods:material:36>,<ore:ingotElectrum>],
[<ore:ingotTin>,<ore:dustRedstone>,<ore:ingotTin>]]);
recipes.addShaped("auto_ladder_steel", <advancedliftingmethods:powered_ladder>*8,
[[<ore:ingotSteel>,<ore:dustRedstone>,<ore:ingotSteel>],
[<ore:ingotElectrum>,<betterwithmods:material:36>,<ore:ingotElectrum>],
[<ore:ingotSteel>,<ore:dustRedstone>,<ore:ingotSteel>]]);