import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

//Magic Bomb used to break the barrier to the Beneath

RecipeBuilder.get("mage")
.setShaped([
  [<betternether:cincinnasite>, <minecraft:light_weighted_pressure_plate>, <betternether:cincinnasite>],
  [<minecraft:gold_ingot>, <contenttweaker:volatile_magic>, <minecraft:gold_ingot>],
  [<betternether:cincinnasite>, <minecraft:gold_ingot>, <betternether:cincinnasite>]])
.addTool(<contenttweaker:disint_rune>, 1)
.addTool(<contenttweaker:energy_rune>, 1)
.addOutput(<contenttweaker:magic_bomb>)
.setMinimumTier(1)
.setMaximumTier(1)
.create();

// Inventory Expander
recipes.remove(<cyclicmagic:inventory_food>);
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:volatile_core>, <contenttweaker:mercurial_ooze>, <contenttweaker:volatile_core>],
    [<contenttweaker:mercurial_ooze>, <deadmanssatchel:deadmanssatchel>, <contenttweaker:mercurial_ooze>],
    [<nyx:meteor_dust>, <contenttweaker:volatile_core>, <nyx:meteor_dust>]])
  .addTool(<contenttweaker:mind_rune>, 1)
  .addTool(<contenttweaker:creation_rune>, 1)
  .addOutput(<cyclicmagic:inventory_food>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Animated Brain
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <simpleores:adamantium_ingot>, <contenttweaker:vis_speck>],
    [<simpleores:adamantium_ingot>, <contenttweaker:brain>, <simpleores:adamantium_ingot>],
    [<contenttweaker:vis_speck>, <simpleores:adamantium_ingot>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:mind_rune>, 1)
  .addTool(<contenttweaker:nature_rune>, 1)
  .addOutput(<contenttweaker:animated_brain>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();