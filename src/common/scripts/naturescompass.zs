import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<naturescompass:naturescompass>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:durableFiber>, <ore:logWood>, <ore:durableFiber>],
    [<ore:treeLeaves>, <minecraft:compass>, <ore:treeLeaves>],
    [<ore:durableFiber>, <ore:logWood>, <ore:durableFiber>]])
  .addTool(<contenttweaker:earth_rune>, 1)
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addOutput(<naturescompass:naturescompass>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();