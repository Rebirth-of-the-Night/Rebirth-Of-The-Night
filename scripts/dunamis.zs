import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

// Inert Charm

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <minecraft:clay_ball>, <contenttweaker:vis_speck>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<contenttweaker:vis_speck>, <minecraft:clay_ball>, <contenttweaker:vis_speck>]])
  .addOutput(<contenttweaker:blank_charm>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

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
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:luna_quintessence>*4])
  .addOutput(<contenttweaker:luna_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:sol_quintessence>*4])
  .addOutput(<contenttweaker:sol_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:water_quintessence>*4])
  .addOutput(<contenttweaker:water_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:air_quintessence>*4])
  .addOutput(<contenttweaker:air_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:fire_quintessence>*4])
  .addOutput(<contenttweaker:fire_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:earth_quintessence>*4])
  .addOutput(<contenttweaker:earth_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# arcane

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:disint_quintessence>*6])
  .addOutput(<contenttweaker:disint_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:strength_quintessence>*6])
  .addOutput(<contenttweaker:strength_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:poison_quintessence>*6])
  .addOutput(<contenttweaker:poison_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:energy_quintessence>*6])
  .addOutput(<contenttweaker:energy_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:life_quintessence>*6])
  .addOutput(<contenttweaker:life_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:soul_quintessence>*6])
  .addOutput(<contenttweaker:soul_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:death_quintessence>*6])
  .addOutput(<contenttweaker:death_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:chaos_quintessence>*6])
  .addOutput(<contenttweaker:chaos_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:knowledge_quintessence>*6])
  .addOutput(<contenttweaker:knowledge_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:mind_quintessence>*6])
  .addOutput(<contenttweaker:mind_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:balance_quintessence>*6])
  .addOutput(<contenttweaker:balance_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:creation_quintessence>*6])
  .addOutput(<contenttweaker:creation_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:order_quintessence>*6])
  .addOutput(<contenttweaker:order_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:nature_quintessence>*6])
  .addOutput(<contenttweaker:nature_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:illusion_quintessence>*6])
  .addOutput(<contenttweaker:illusion_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:trans_quintessence>*6])
  .addOutput(<contenttweaker:trans_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:arcane_quintessence>*6])
  .addOutput(<contenttweaker:arcane_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# mystical

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:fae_quintessence>*8])
  .addOutput(<contenttweaker:fae_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:holding_quintessence>*8])
  .addOutput(<contenttweaker:holding_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:plague_quintessence>*8])
  .addOutput(<contenttweaker:plague_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:draconic_quintessence>*8])
  .addOutput(<contenttweaker:draconic_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:aether_quintessence>*8])
  .addOutput(<contenttweaker:aether_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:nether_quintessence>*8])
  .addOutput(<contenttweaker:nether_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:end_quintessence>*8])
  .addOutput(<endreborn:item_end_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();