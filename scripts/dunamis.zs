import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemCondition;
import mods.betterwithaddons.Infuser;

// Scepters
#bases

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <minecraft:dye:4>, <ore:ingotGold>],
    [<contenttweaker:vis_speck>, <ore:mundaneWood>, <minecraft:dye:4>],
    [<ore:ingotGold>, <contenttweaker:vis_speck>, <contenttweaker:vis_speck>]])
  .addOutput(<contenttweaker:scepter_base_mundane>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <betternether:cincinnasite>, <ore:ingotGravitite>],
    [<contenttweaker:vis_sliver>, <ore:arcaneWood>, <betternether:cincinnasite>],
    [<ore:ingotGravitite>, <contenttweaker:vis_sliver>, <contenttweaker:vis_sliver>]])
  .addOutput(<contenttweaker:scepter_base_arcane>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <nyx:meteor_shard>, <simpleores:mythril_ingot>],
    [<contenttweaker:vis_shard>, <ore:mysticalWood>, <nyx:meteor_shard>],
    [<simpleores:mythril_ingot>, <contenttweaker:vis_shard>, <contenttweaker:vis_shard>]])
  .addOutput(<contenttweaker:scepter_base_mystical>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Cloud Staff

# Change durability
<aether_legacy:cloud_staff>.maxDamage = 32;

# Recipe

RecipeBuilder.get("mage")
  .setShaped([
    [null, <rustic:cloudsbluff>, <contenttweaker:slider_eye>],
    [<contenttweaker:vis_speck>, <contenttweaker:scepter_base_mundane>, <rustic:cloudsbluff>],
    [<contenttweaker:pristine_diamond>, <contenttweaker:vis_speck>, null]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<aether_legacy:cloud_staff:32>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<aether_legacy:cloud_staff>,
[<aether_legacy:cloud_staff>.anyDamage(),<contenttweaker:vis_speck>], 32);

// Evocation Scepter
# Change durability
<arcaneworld:fang_wand>.maxDamage = 64;

# Recipe
recipes.remove(<arcaneworld:fang_wand>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <endreborn:item_end_essence>, <contenttweaker:voids_call>],
    [<contenttweaker:vis_sliver>, <contenttweaker:scepter_base_arcane>, <endreborn:item_end_essence>],
    [<contenttweaker:voidseen_exorite>, <contenttweaker:vis_sliver>, null]])
  .addTool(<endreborn:item_end_rune>, 1)
  .addTool(<contenttweaker:mind_rune>, 1)
  .addOutput(<arcaneworld:fang_wand:64>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<arcaneworld:fang_wand>,
[<arcaneworld:fang_wand>.anyDamage(),<contenttweaker:vis_sliver>], 64);

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