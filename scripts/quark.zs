#priority 9000

import scripts.shared.utils.recipeUtils.metaArray;
import scripts.shared.utils.recipeUtils.removeRecipeArray;
import scripts.shared.utils.recipeUtils.removeRecipeNameArray;
import scripts.shared.utils.arrayUtils.concatOD;
import scripts.shared.utils.arrayUtils.concatIS;
import scripts.shared.utils.arrayUtils.concatString;
import scripts.shared.sharedArrays.colors;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

val leather_sheet = <pyrotech:material:38>;
var flimsywaterbucket = <pyrotech:bucket_stone>.withTag({durability: 32767, fluids: {FluidName: "water", Amount: 1000}}).transformReplace(<pyrotech:bucket_stone>);
var qualitybucket = <minecraft:water_bucket>.transformReplace(<minecraft:bucket>);

	// removes various types of stone walls
var sWalls = [
	"brick", 
	"sandstone", 
	"stone_granite", 
	"stone_diorite", 
	"stone_andesite", 
	"red_sandstone", 
	"stonebrick", 
	"stonebrick_mossy", 
	"prismarine_rough", 
	"purpur_block"
] as string[];
removeRecipeArray(concatIS([["quark:"], sWalls, ["_wall"]]));

for i in 0 to 16 {
	JEI.removeAndHide(<quark:candle>.definition.makeStack(i));
}

JEI.removeAndHide(<quark:red_nether_brick_slab>);
JEI.removeAndHide(<quark:red_nether_brick_stairs>);
JEI.removeAndHide(<quark:nether_brick_fence_gate>);
JEI.removeAndHide(<quark:smoker>);
JEI.removeAndHide(<quark:polished_stone>);

removeRecipeNameArray(
	concatString([["quark:iron_"], ["button", "ladder", "plate_1"]]));

removeRecipeNameArray(
	concatString([["quark:stone_"], ["shovel", "pickaxe", "axe", "hoe", "slab"]]));

removeRecipeNameArray(["quark:chest_minecart", "quark:gold_button", "quark:hopper", "quark:sandy_bricks"]);

//recipes.addShapeless("sandy_bricks",<quark:sandy_bricks>,[<contenttweaker:brick_minecraft_clay>,<ore:sand>]); Brick replacement

recipes.remove(<quark:backpack>);
recipes.remove(<quark:pipe>);
recipes.remove(<quark:iron_plate>);
recipes.removeByRecipeName("quark:iron_plate_2");

recipes.addShaped("midori_block",<quark:midori_block>,[
	[<betterwithaddons:material:2>,<betterwithaddons:material:2>],
	[<betterwithaddons:material:2>,<betterwithaddons:material:2>]
]);

recipes.remove(<quark:paper_wall>);
recipes.addShaped("paper_wall",<quark:paper_wall>,[
	[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
	[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],
	[<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]
]);

//Immersive plating
recipes.addShaped("steel_plate", <quark:iron_plate>*24,
 [[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],
  [<ore:ingotSteel>,<minetraps:nails:*>,<ore:ingotSteel>],
  [<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]]);
recipes.addShaped("iron_plate_2_0",<quark:iron_plate:1>*8,[
   [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>],
    [<quark:iron_plate>,flimsywaterbucket,<quark:iron_plate>],
    [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>]
]);
recipes.addShaped("iron_plate_2_1",<quark:iron_plate:1>*8,[
   [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>],
    [<quark:iron_plate>,qualitybucket,<quark:iron_plate>],
    [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>]
]);
recipes.addShaped("iron_plate", <contenttweaker:iron_plate>*24, [
	[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],
	[<minecraft:iron_ingot>,<minetraps:nails:*>,<minecraft:iron_ingot>],
	[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]
]);
recipes.addShaped("brass_plate", <contenttweaker:brass_plate>*24, [
	[<ore:ingotBrass>,<ore:ingotBrass>,<ore:ingotBrass>],
	[<ore:ingotBrass>,<minetraps:nails:*>,<ore:ingotBrass>],
	[<ore:ingotBrass>,<ore:ingotBrass>,<ore:ingotBrass>]
]);
recipes.addShaped("tin_plate", <contenttweaker:tin_plate>*24, [
	[<ore:ingotTin>,<ore:ingotTin>,<ore:ingotTin>],
	[<ore:ingotTin>,<minetraps:nails:*>,<ore:ingotTin>],
	[<ore:ingotTin>,<ore:ingotTin>,<ore:ingotTin>]
]);
recipes.addShaped("sfs_plate", <netherex:worn_iron>*24, [
	[<ore:ingotSoulforgedSteel>,<ore:ingotSoulforgedSteel>,<ore:ingotSoulforgedSteel>],
	[<ore:ingotSoulforgedSteel>,<minetraps:nails:*>,<ore:ingotSoulforgedSteel>],
	[<ore:ingotSoulforgedSteel>,<ore:ingotSoulforgedSteel>,<ore:ingotSoulforgedSteel>]
]);


recipes.addShaped("quark_backpack", <quark:backpack>.withTag({Quality: {}}),[
	[leather_sheet, leather_sheet, leather_sheet],
    [<betterwithmods:material:8>, <ore:chestWood>, <betterwithmods:material:8>],
   	[leather_sheet, leather_sheet, leather_sheet]
]);

recipes.addShaped("tin_ladder", <quark:iron_ladder>*12,[
	[<ore:ingotTin>, null, <ore:ingotTin>],
   	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
    [<ore:ingotTin>, null, <ore:ingotTin>]
]);

recipes.addShapeless("sugar_block_return", <minecraft:sugar> * 7, [<quark:sugar_block>]);

val durableFiber = <ore:durableFiber>;

recipes.addShaped("iDidItImACTUALLYFiberNow", <quark:rope>*6,[
	[durableFiber, durableFiber, durableFiber],
	[durableFiber, null, durableFiber],
	[durableFiber, durableFiber, durableFiber]
]);

recipes.addShapeless("tome_to_enchanted_paper", <wards:enchanted_paper>*9,[<quark:ancient_tome:*>]);
recipes.addShapeless("petal_soulcompass", <quark:soul_compass>,[<biomesoplenty:terrestrial_artifact> ,<minecraft:compass>]);

recipes.remove(<quark:bark:*>);
val logs as IItemStack[] = [<minecraft:log:0>, <minecraft:log:1>, <minecraft:log:2>, <minecraft:log:3>, <minecraft:log2:0>, <minecraft:log2:1>] as IItemStack[];

for i, log in logs {
	recipes.addShapeless("quark_bark"~i, <quark:bark>.definition.makeStack(i) * 6,
		[log, log, log, log, log, log]
	);
}

// Arrows
recipes.remove(<quark:arrow_explosive>);
recipes.addShapeless("explosive_arrows",<quark:arrow_explosive>*4,[<minecraft:arrow>,<minecraft:arrow>,<minecraft:arrow>,<minecraft:arrow>,<betterwithmods:mining_charge>]);

/*
val crystalMats as IIngredient[][] = [
	[<contenttweaker:phosphophyllite>, <ore:gemDiamond>],
	[<scalinghealth:crystalshard>, <ore:gemRuby>],
	[<minecraft:blaze_powder>, <iceandfire:myrmex_desert_resin>],
	[<minecraft:glowstone_dust>, <aether_legacy:ambrosium_shard>],
	[<iceandfire:myrmex_jungle_resin>, <ore:gemPeridot>, <ore:gemEmerald>],
	[<minecraft:dye:4>, <ore:gemSapphire>],
	[<endreborn:item_advanced_ender_pearl>, <aether_legacy:zanite_gemstone>],
	[<rotn_blocks:exorite_crystal>],
	[<ore:gemOnyx>, <endreborn:dragon_scales>]
] as IIngredient[][];
// Easier Crystals 
for i, crystalArr in crystalMats {
	for j, mat in crystalArr {
		recipes.addShapeless("Quark_crystal_"~i~"-"~j, <quark:crystal>.definition.makeStack(i) * 3,
			[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, mat]
		);
	}
}
*/

// SFS ROD
recipes.remove(<quark:iron_rod>);

recipes.addShaped("sfs_rod", <quark:iron_rod>,[
	[<betterwithmods:material:14>],
    [<minecraft:end_rod>]
]);

// Soul Powder
recipes.remove(<quark:soul_powder>);

// Soul Bead
RecipeBuilder.get("mage")
  .setShaped([
    [<quark:soul_powder>, <contenttweaker:vis_sliver>, <quark:soul_powder>],
    [<contenttweaker:vis_sliver>, <betterwithmods:material:38>, <contenttweaker:vis_sliver>],
    [<quark:soul_powder>, <contenttweaker:vis_sliver>, <quark:soul_powder>]])
  .addTool(<contenttweaker:soul_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:soul_bead>)
  .create();

recipes.removeByRecipeName("quark:wheat");
recipes.removeByRecipeName("quark:color_slime_4");
recipes.removeByRecipeName("quark:slime");

	// slimeballs into slimeblocks and vice versa
	
	// slime color array
var slm = ["red", "blue", "black", "purple", "yellow"] as string[];

	// combines strings, then turns them into ingredients and arranges them in a crafting table.
	// loops until all colors have been done
for i in 0 to slm.length {
	var qs = itemUtils.getItem("quark:color_slime", i);
	var bs as IIngredient;
	
	if(slm[i]=="blue") {
		bs = <betterslimes:blue_slime>|<mod_lavacow:silky_sludge>;
	} else { bs = itemUtils.getItem("betterslimes:" + slm[i] + "_slime"); }
	
	var bsa = [bs,bs,bs] as IIngredient[];

	if(slm[i] != "black") {
		recipes.addShaped(slm[i] + "_slime_block",qs,[bsa,bsa,bsa]);
	}
	recipes.addShapeless(slm[i] + "_slimeball",(bs.items[0])*9,[qs]);
}

recipes.remove(<quark:redstone_randomizer>);
recipes.addShaped("quark_randomizer", <quark:redstone_randomizer>, [
	[null, <minecraft:redstone_torch>, null],
	[<minecraft:redstone_torch>, <cyclicmagic:dice>, <minecraft:redstone_torch>],
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);

// runes
val qrune = <quark:rune:*>;

// Because so many people dunno its use.
qrune.addTooltip("Colors enchanted items in an anvil.");
// qrune.addTooltip("Currently bugged, sorry :(");

# remove all original quark rune recipes
recipes.remove(qrune);

# make quark runes non stackable
qrune.maxStackSize = 1;

# recipes for quark runes
var runes = metaArray("quark:rune", 0, 15) as IItemStack[];
var dyes = concatOD([["dye"], colors]);

for i in 0 to runes.length {
	RecipeBuilder.get("mage")
	  .setShaped([
		[<contenttweaker:vis_speck>],
		[<contenttweaker:blank_rune>],
		[dyes[i]]])
	  .addTool(<contenttweaker:illusion_rune>, 1)
	  .setMinimumTier(1)
	  .setMaximumTier(1)
	  .addOutput(runes[i])
	  .create();
}

  RecipeBuilder.get("mage")
  .setShapeless([
    <ore:dyeLightBlue>, 
    <ore:dyeRed>, 
    <ore:dyeLime>, 
    <ore:dyeYellow>, 
    <contenttweaker:blank_rune>, 
    <ore:dyeBlue>, 
    <ore:dyeMagenta>, 
    <ore:dyeOrange>, 
    <ore:dyeWhite>])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:16>)
  .create();

recipes.remove(<quark:quartz_wall>);
recipes.addShaped("dark_quartz_wall", <quark:quartz_wall> * 6, [
  [null, <ore:dyeBlack>|<ore:dyeGray>|<ore:dyeLightGray>, null],
  [<ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>],
  [<ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>]
]);

recipes.addShaped("framed_glass_steel", <quark:framed_glass>*8,
 [[<ore:blockGlassColorless>,<ore:ingotSteel>,<ore:blockGlassColorless>],
  [<ore:ingotSteel>,<ore:blockGlassColorless>,<ore:ingotSteel>],
  [<ore:blockGlassColorless>,<ore:ingotSteel>,<ore:blockGlassColorless>]]);

// oredict magicite

val oreMagicite = <ore:magicite>;
var crystals = metaArray("quark:crystal", 0, 8) as IItemStack[];

for i in crystals {
	oreMagicite.add(i);
}

<quark:crystal>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:1>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:2>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:3>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:4>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:5>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:6>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:7>.asBlock().definition.lightLevel = 0.1;
<quark:crystal:8>.asBlock().definition.lightLevel = 0.1;


// cheaper buttons

recipes.remove(<quark:iron_button>);
recipes.addShapeless("iron_button",<quark:iron_button>, [<ore:buttonStone>,<minecraft:iron_nugget>]);

recipes.remove(<quark:gold_button>);
recipes.addShapeless("gold_button",<quark:gold_button>, [<ore:buttonStone>,<minecraft:gold_nugget>]);
