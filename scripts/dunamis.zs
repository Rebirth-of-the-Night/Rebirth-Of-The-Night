import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

//Magicked Lens
RecipeBuilder.get("mage")
  .setShaped([
    [<hitwithaxe:bark:41>, <contenttweaker:pristine_diamond>, <hitwithaxe:bark:41>],
    [<ore:dustElectrum>.firstItem, <betternether:quartz_glass_framed_pane>, <ore:dustElectrum>.firstItem],
    [<hitwithaxe:bark:41>, <contenttweaker:pristine_diamond>, <hitwithaxe:bark:41>]])
  .addTool(<contenttweaker:order_rune>, 1)
  .addTool(<contenttweaker:balance_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<contenttweaker:magicked_lens>)
  .create();

//Unattuned Focus
RecipeBuilder.get("mage")
  .setShaped([
    [<biomesoplenty:log_1:5>, <contenttweaker:slider_eye>, <biomesoplenty:log_1:5>],
    [<biomesoplenty:log_1:5>, null, <biomesoplenty:log_1:5>],
    [<biomesoplenty:log_1:5>, <contenttweaker:magicked_lens>, <biomesoplenty:log_1:5>]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:mind_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<contenttweaker:unattuned_focus>)
  .create();

// runes

# inert

RecipeBuilder.get("mage")
  .setShapeless([<contenttweaker:vis_speck>, <ore:stone>])
  .addOutput(<contenttweaker:blank_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# mundane

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:luna_quintessence>*4]])
  .addOutput(<contenttweaker:luna_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:sol_quintessence>*4]])
  .addOutput(<contenttweaker:sol_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:water_quintessence>*4]])
  .addOutput(<contenttweaker:water_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:air_quintessence>*4]])
  .addOutput(<contenttweaker:air_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:fire_quintessence>*4]])
  .addOutput(<contenttweaker:fire_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:earth_quintessence>*4]])
  .addOutput(<contenttweaker:earth_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# arcane

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:disint_quintessence>*6]])
  .addOutput(<contenttweaker:disint_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:strength_quintessence>*6]])
  .addOutput(<contenttweaker:strength_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:poison_quintessence>*6]])
  .addOutput(<contenttweaker:poison_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:energy_quintessence>*6]])
  .addOutput(<contenttweaker:energy_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:life_quintessence>*6]])
  .addOutput(<contenttweaker:life_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:soul_quintessence>*6]])
  .addOutput(<contenttweaker:soul_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:death_quintessence>*6]])
  .addOutput(<contenttweaker:death_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:chaos_quintessence>*6]])
  .addOutput(<contenttweaker:chaos_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:knowledge_quintessence>*6]])
  .addOutput(<contenttweaker:knowledge_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:mind_quintessence>*6]])
  .addOutput(<contenttweaker:mind_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:balance_quintessence>*6]])
  .addOutput(<contenttweaker:balance_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:creation_quintessence>*6]])
  .addOutput(<contenttweaker:creation_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:order_quintessence>*6]])
  .addOutput(<contenttweaker:order_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:nature_quintessence>*6]])
  .addOutput(<contenttweaker:nature_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:illusion_quintessence>*6]])
  .addOutput(<contenttweaker:illusion_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:trans_quintessence>*6]])
  .addOutput(<contenttweaker:trans_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:arcane_quintessence>*6]])
  .addOutput(<contenttweaker:arcane_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# mystical

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:fae_quintessence>*8]])
  .addOutput(<contenttweaker:fae_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:holding_quintessence>*8]])
  .addOutput(<contenttweaker:holding_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:plague_quintessence>*8]])
  .addOutput(<contenttweaker:plague_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:draconic_quintessence>*8]])
  .addOutput(<contenttweaker:draconic_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:aether_quintessence>*8]])
  .addOutput(<contenttweaker:aether_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:nether_quintessence>*8]])
  .addOutput(<contenttweaker:nether_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>],
    [<contenttweaker:end_quintessence>*8]])
  .addOutput(<endreborn:item_end_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();