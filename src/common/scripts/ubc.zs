import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;

recipes.removeByRecipeName("undergroundbiomes:vanilla_button");

// Remove charbiotite
JEI.removeAndHide(<undergroundbiomes:lignite_coal>);

// barbed wire
val brick_block as IItemStack = <minecraft:brick_block>;
brick_block.hardness = 10;
val brick_slab as IItemStack = <minecraft:stone_slab:4>;
brick_slab.hardness = 2;
val brick_stairs as IItemStack = <minecraft:brick_stairs>;
brick_stairs.hardness = 6;

