import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeBuilder.get("mage")
  .setShapeless([<contenttweaker:vis_speck>, <minecraft:paper>])
  .addOutput(<wards:enchanted_paper>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();