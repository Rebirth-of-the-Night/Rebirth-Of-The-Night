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