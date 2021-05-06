import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.rockytweaks.Anvil;

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <betterwithmods:material:3>, <contenttweaker:vis_sliver>],
    [<betterwithmods:material:6>, <minecraft:ender_pearl>, <betterwithmods:material:6>],
    [<contenttweaker:vis_sliver>, <betterwithmods:material:6>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<deadmanssatchel:deadmanssatchel>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

Anvil.remove([<dungeontactics:magic_pouch>]);