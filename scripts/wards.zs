import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<wards:ward>);
recipes.addShaped("wards_ward", <wards:ward>,
  [[null,<minecraft:obsidian>,null],
  [<ore:gemDiamond>,<minecraft:obsidian>,<ore:gemDiamond>],
  [<ore:stoneSlab>,<ore:cobblestone>,<ore:stoneSlab>]]);

RecipeBuilder.get("mage")
  .setShapeless([<contenttweaker:vis_speck>, <minecraft:paper>])
  .addOutput(<wards:enchanted_paper>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
