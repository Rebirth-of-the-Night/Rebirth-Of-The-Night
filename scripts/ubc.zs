import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.removeByRecipeName("undergroundbiomes:vanilla_button");
recipes.removeByRecipeName("undergroundbiomes:vanilla_sandstone");

// Remove charbiotite
JEI.removeAndHide(<undergroundbiomes:lignite_coal>);

// Because ubc is not smart with its ore generation, there needs to be at least one ore - otherwise it crashes
// But we can hide it anyway...
var stone_types as [string] = [
    "igneous",
    "metamorphic",
    "sedimentary"
] as [string];
for type in stone_types {
    JEI.removeAndHide(itemUtils.getItem("undergroundbiomes:"~type~"_stone_endreborn_block_wolframium_ore"));
}

val anySandstone as IIngredient = <undergroundbiomes:igneous_sandstone:*>|<undergroundbiomes:metamorphic_sandstone:*>|<undergroundbiomes:sedimentary_sandstone:*> as IIngredient;

RecipeBuilder.get("mage")
  .setName("ubc_sandstone_to_sandstone")
  .setShaped([
    [anySandstone,anySandstone,anySandstone],
    [anySandstone,<contenttweaker:vis_speck>,anySandstone],
    [anySandstone,anySandstone,anySandstone]])
  .addTool(<contenttweaker:nature_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<minecraft:sandstone>*9)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.removeByRecipeName("undergroundbiomes:bone_fossil_bone_meal");
recipes.addShapeless("bone_fossil_to_bone_meal", <minecraft:flint>*2, [<undergroundbiomes:fossil_piece:0>|<undergroundbiomes:fossil_piece:1>|<undergroundbiomes:fossil_piece:2>|<undergroundbiomes:fossil_piece:3>|<undergroundbiomes:fossil_piece:4>|<undergroundbiomes:fossil_piece:5>|<undergroundbiomes:fossil_piece:6>|<undergroundbiomes:fossil_piece:7>]);