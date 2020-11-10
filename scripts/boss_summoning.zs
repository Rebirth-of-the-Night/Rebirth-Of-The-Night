import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


RecipeBuilder.get("mage")
  .setShaped([
	[<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
	[<betterwithaddons:wrought_bars>, <betterwithaddons:ancestry_bottle>, <betterwithaddons:wrought_bars>], 
	[<betterwithaddons:wrought_bars>, <betterwithaddons:wrought_bars>, <betterwithaddons:wrought_bars>]])
  .addOutput(<multiblockmobs:soul_chassis>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.remove(<from_the_depths:block_altar_of_summoning>);
  
RecipeBuilder.get("mage")
  .setShaped([
	[<betterwithmods:candle:14>, <contenttweaker:shard_of_night>, <betterwithmods:candle:14>],
	[<endreborn:item_shard_obsidian>, <ore:Stone>, <endreborn:item_shard_obsidian>], 
	[<betterwithmods:material:17>, <betterwithmods:material:17>, <betterwithmods:material:17>]])
  .addTool(<contenttweaker:creation_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<from_the_depths:block_altar_of_summoning>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
  
recipes.addShaped(<netherex:congealed_magma_cream>, [
[<nyx:meteor_shard>, <netherex:fiery_netherrack>, <minecraft:blaze_powder>],
[<minecraft:magma_cream>, <contenttweaker:shard_of_night>, <minecraft:magma_cream>], 
[<minecraft:blaze_powder>, <netherex:fiery_netherrack>, <nyx:meteor_shard>]]);
