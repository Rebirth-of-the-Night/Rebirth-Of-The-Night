import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.rockytweaks.Anvil;

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <betterwithmods:material:3>, <contenttweaker:vis_speck>],
    [<ore:hideTanned>, <ore:anyQuintessence>, <ore:hideTanned>],
    [<contenttweaker:vis_speck>, <ore:hideTanned>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<deadmanssatchel:deadmanssatchel>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

Anvil.remove([<dungeontactics:magic_pouch>]);