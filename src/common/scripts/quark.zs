import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

for i in 0 to 16 {
	JEI.removeAndHide(<quark:candle>.definition.makeStack(i));
}

JEI.removeAndHide(<quark:brick_wall>);
JEI.removeAndHide(<quark:stone_granite_wall>);
JEI.removeAndHide(<quark:stone_diorite_wall>);
JEI.removeAndHide(<quark:stone_andesite_wall>);
JEI.removeAndHide(<quark:sandstone_wall>);
JEI.removeAndHide(<quark:red_sandstone_wall>);
JEI.removeAndHide(<quark:stonebrick_wall>);
JEI.removeAndHide(<quark:stonebrick_mossy_wall>);
JEI.removeAndHide(<quark:prismarine_rough_wall>);
JEI.removeAndHide(<quark:red_nether_brick_slab>);
JEI.removeAndHide(<quark:purpur_block_wall>);
JEI.removeAndHide(<quark:red_nether_brick_stairs>);
JEI.removeAndHide(<quark:nether_brick_fence_gate>);
JEI.removeAndHide(<quark:smoker>);

<quark:rune:*>.addTooltip("Colors enchanted items in an anvil."); // Because so many people dunno its use.

recipes.removeByRecipeName("quark:chest_minecart");
recipes.removeByRecipeName("quark:stone_shovel");
recipes.removeByRecipeName("quark:stone_pickaxe");
recipes.removeByRecipeName("quark:stone_axe");
recipes.removeByRecipeName("quark:stone_hoe");
recipes.removeByRecipeName("quark:iron_button");
recipes.removeByRecipeName("quark:gold_button");
recipes.removeByRecipeName("quark:iron_plate_1");
recipes.removeByRecipeName("quark:iron_ladder");
recipes.removeByRecipeName("quark:hopper");
recipes.removeByRecipeName("quark:sandy_bricks");
recipes.addShapeless("sandy_bricks",<quark:sandy_bricks>,[<minecraft:brick_block>,<ore:sand>]);

recipes.remove(<quark:backpack>);
recipes.remove(<quark:pipe>);
recipes.remove(<quark:iron_plate>);

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
recipes.addShaped("iron plate", <quark:iron_plate>*24,
 [[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
  [<ore:ingotIron>,<minetraps:nails:*>,<ore:ingotIron>],
  [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>]]);

recipes.addShaped("Quark Backpack", <quark:backpack>.withTag({Quality: {}}),[
	[<betterwithmods:material:6>, <betterwithmods:material:6>, <betterwithmods:material:6>],
    [<betterwithmods:material:8>, <ore:chestWood>, <betterwithmods:material:8>],
   	[<betterwithmods:material:6>, <betterwithmods:material:6>, <betterwithmods:material:6>]
]);

recipes.addShaped("Tin Ladder", <quark:iron_ladder>*12,[
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

recipes.remove(<quark:bark:*>);
val logs as IItemStack[] = [<minecraft:log:0>, <minecraft:log:1>, <minecraft:log:2>, <minecraft:log:3>, <minecraft:log2:0>, <minecraft:log2:1>] as IItemStack[];

for i, log in logs {
	recipes.addShapeless("Quark Bark"~i, <quark:bark>.definition.makeStack(i) * 6,
		[log, log, log, log, log, log]
	);
}

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

// Slime Blocks
recipes.removeByRecipeName("quark:color_slime_4");
recipes.removeByRecipeName("quark:slime");

recipes.addShaped("red_slime_block",<quark:color_slime:0>,[
	[<betterslimes:red_slime>,<betterslimes:red_slime>,<betterslimes:red_slime>],
	[<betterslimes:red_slime>,<betterslimes:red_slime>,<betterslimes:red_slime>],
	[<betterslimes:red_slime>,<betterslimes:red_slime>,<betterslimes:red_slime>]
]);
recipes.addShapeless("red_slimeball",<betterslimes:red_slime>*9,[<quark:color_slime:0>]);

var blueSlimeList = <betterslimes:blue_slime>|<mod_lavacow:silky_sludge>;
recipes.addShaped("blue_slime_block",<quark:color_slime:1>,[
	[blueSlimeList,blueSlimeList,blueSlimeList],
	[blueSlimeList,blueSlimeList,blueSlimeList],
	[blueSlimeList,blueSlimeList,blueSlimeList]
]);
recipes.addShapeless("blue_slimeball",<betterslimes:blue_slime>*9,[<quark:color_slime:1>]);

recipes.addShaped("magenta_slime_block",<quark:color_slime:3>,[
	[<betterslimes:purple_slime>,<betterslimes:purple_slime>,<betterslimes:purple_slime>],
	[<betterslimes:purple_slime>,<betterslimes:purple_slime>,<betterslimes:purple_slime>],
	[<betterslimes:purple_slime>,<betterslimes:purple_slime>,<betterslimes:purple_slime>]
]);
recipes.addShapeless("purple_slimeball",<betterslimes:purple_slime>*9,[<quark:color_slime:3>]);

recipes.addShaped("yellow_slime_block",<quark:color_slime:4>,[
	[<betterslimes:yellow_slime>,<betterslimes:yellow_slime>,<betterslimes:yellow_slime>],
	[<betterslimes:yellow_slime>,<betterslimes:yellow_slime>,<betterslimes:yellow_slime>],
	[<betterslimes:yellow_slime>,<betterslimes:yellow_slime>,<betterslimes:yellow_slime>]
]);
recipes.addShapeless("yellow_slimeball",<betterslimes:yellow_slime>*9,[<quark:color_slime:4>]);

recipes.addShapeless("black_slimeball",<betterslimes:black_slime>*9,[<quark:color_slime:2>]);

recipes.remove(<quark:redstone_randomizer>);
recipes.addShaped("quark_randomizer", <quark:redstone_randomizer>, [
	[null, <minecraft:redstone_torch>, null],
	[<minecraft:redstone_torch>, <cyclicmagic:dice>, <minecraft:redstone_torch>],
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);

// runes

# remove all original quark rune recipes
recipes.remove(<quark:rune:*>);

# make quark runes non stackable
val quarkrune = (<quark:rune:*>);
quarkrune.maxStackSize = 1;

# recipes for quark runes

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeWhite>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:0>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeOrange>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:1>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeMagenta>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:2>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeLightBlue>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:3>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeYellow>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:4>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeLime>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:5>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyePink>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:6>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeGray>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:7>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeLightGray>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:8>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeCyan>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:9>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyePurple>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:10>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeBlue>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:11>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeBrown>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:12>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeGreen>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:13>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeRed>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:14>)
  .create();

  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<ore:dyeBlack>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<quark:rune:15>)
  .create();

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
