import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Redstone Latch
recipes.remove(<betterwithmods:material:34>);

val latch = <betterwithmods:material:34>;
val copper = <simpleores:copper_ingot>;
val gnugg = <minecraft:gold_nugget>;
val rstone = <minecraft:redstone>;

recipes.addShaped("Latch", latch,
 [[null,gnugg,null],
  [gnugg,copper,gnugg],
  [null,rstone,null]]);
  
  //Dynamite
recipes.removeshapeless(<betterwithmods:dynamite>);

recipes.addShapeless("betterwithmods dynamite", <betterwithmods:dynamite>, 
[<ore:paper>, <ore:paper>, <ore:paper>, 
<betterwithmods:material:28>, <betterwithmods:material:29>, <spartanweaponry:material:2>]);
