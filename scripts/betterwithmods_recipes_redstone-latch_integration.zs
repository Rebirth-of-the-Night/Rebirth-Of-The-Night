import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Values
recipes.remove(<betterwithmods:material:34>);

val latch = <betterwithmods:material:34>;
val copper = <simpleores:copper_ingot>;
val gnugg = <minecraft:gold_nugget>;
val rstone = <minecraft:redstone>;

recipes.addShaped("Latch", latch,
 [[null,gnugg,null],
  [gnugg,copper,gnugg],
  [null,rstone,null]]);