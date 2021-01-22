import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;


RecipeBuilder.get("mage")
  .setShaped([
	[<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
	[<betterwithaddons:wrought_bars>, <minecraft:dye:4>, <betterwithaddons:wrought_bars>], 
	[<betterwithaddons:wrought_bars>, <betterwithaddons:wrought_bars>, <betterwithaddons:wrought_bars>]])
  .addOutput(<multiblockmobs:soul_chassis>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  //.addRequirement(GameStages.anyOf(["slayersjournal"]))
  .create();

recipes.remove(<from_the_depths:block_altar_of_summoning>);
  
RecipeBuilder.get("mage")
  .setShaped([
	[<betterwithmods:candle:14>, <contenttweaker:shard_of_night>, <betterwithmods:candle:14>],
	[<endreborn:item_shard_obsidian>, <ore:stone>, <endreborn:item_shard_obsidian>], 
	[<betterwithmods:material:17>, <betterwithmods:material:17>, <betterwithmods:material:17>]])
  .addTool(<contenttweaker:creation_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<from_the_depths:block_altar_of_summoning>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  //.addRequirement(GameStages.anyOf(["killedHarvester"]))
  .create();
 