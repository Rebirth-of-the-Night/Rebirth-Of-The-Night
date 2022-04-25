import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

JEI.removeAndHide(<golems:info_book>);

recipes.remove(<golems:golem_paper>);

RecipeBuilder.get("mage")
  .setShapeless([<wards:enchanted_paper>])
  .addTool(<contenttweaker:creation_rune>, 1)
  .addTool(<artisanworktables:artisans_quill_gold>, 1)
  .addOutput(<golems:golem_paper>)
  .create();