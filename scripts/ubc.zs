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

// barbed wire
val brick_block as IItemStack = <contenttweaker:brick_minecraft_clay>;
brick_block.hardness = 10;
val brick_slab as IItemStack = <minecraft:stone_slab:4>;
brick_slab.hardness = 2;
val brick_stairs as IItemStack = <minecraft:brick_stairs>;
brick_stairs.hardness = 6;

