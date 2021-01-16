import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;

recipes.removeByRecipeName("undergroundbiomes:vanilla_button");

// Remove charbiotite
JEI.removeAndHide(<undergroundbiomes:lignite_coal>);

<undergroundbiomes:igneous_brick:0>.asBlock().definition.resistance = 25;
<undergroundbiomes:igneous_brick:1>.asBlock().definition.resistance = 23;
<undergroundbiomes:igneous_brick:2>.asBlock().definition.resistance = 20;
<undergroundbiomes:igneous_brick:3>.asBlock().definition.resistance = 20;
<undergroundbiomes:igneous_brick:4>.asBlock().definition.resistance = 20;
<undergroundbiomes:igneous_brick:5>.asBlock().definition.resistance = 20;
<undergroundbiomes:igneous_brick:6>.asBlock().definition.resistance = 20;
<undergroundbiomes:igneous_brick:7>.asBlock().definition.resistance = 20;

<undergroundbiomes:metamorphic_brick:0>.asBlock().definition.resistance = 20;
<undergroundbiomes:metamorphic_brick:1>.asBlock().definition.resistance = 20;
<undergroundbiomes:metamorphic_brick:2>.asBlock().definition.resistance = 20;
<undergroundbiomes:metamorphic_brick:3>.asBlock().definition.resistance = 20;
<undergroundbiomes:metamorphic_brick:4>.asBlock().definition.resistance = 20;
<undergroundbiomes:metamorphic_brick:5>.asBlock().definition.resistance = 20;
<undergroundbiomes:metamorphic_brick:6>.asBlock().definition.resistance = 20;
<undergroundbiomes:metamorphic_brick:7>.asBlock().definition.resistance = 20;

// barbed wire
val brick_block as IItemStack = <minecraft:brick_block>;
brick_block.hardness = 10;
val brick_slab as IItemStack = <minecraft:stone_slab:4>;
brick_slab.hardness = 2;
val brick_stairs as IItemStack = <minecraft:brick_stairs>;
brick_stairs.hardness = 6;

