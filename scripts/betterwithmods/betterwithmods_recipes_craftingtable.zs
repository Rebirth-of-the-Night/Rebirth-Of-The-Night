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
recipes.removeShapeless(<betterwithmods:dynamite>);

recipes.addShapeless("betterwithmodsDynamite", <betterwithmods:dynamite>, 
[<ore:paper>, <ore:paper>, <ore:paper>, 
<betterwithmods:material:28>, <betterwithmods:material:29>, <spartanweaponry:material:2>]);

 //Vine Trap
//recipes.replaceAllOccurences(<minecraft:vine>, <ore:vine>, <*>);
recipes.remove(<betterwithmods:vine_trap>);
recipes.addShaped("vine_trap", <betterwithmods:vine_trap>,
  [[null,null,null],
  [<ore:vine>,<ore:vine>,<ore:vine>],
  [null,null,null]]);

recipes.remove(<fairylights:garland>);
recipes.addShaped("vine_garland", <fairylights:garland>,
  [[null,null,null],
  [<minecraft:iron_ingot>,<ore:vine>,<minecraft:iron_ingot>],
  [null,null,null]]);

recipes.remove(<rats:marbled_cheese_brick_mossy>);
recipes.addShapeless("mossy_marbled_cheese_brick", <rats:marbled_cheese_brick_mossy>, 
[<rats:marbled_cheese_brick>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:7>);
recipes.addShapeless("dacite_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:7>, 
[<undergroundbiomes:igneous_cobble:7>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:7>);
recipes.addShapeless("migmatite_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:7>, 
[<undergroundbiomes:metamorphic_cobble:7>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:1>);
recipes.addShapeless("mossy_chalk", <undergroundbiomes:sedimentary_stone_mossy:1>, 
[<undergroundbiomes:sedimentary_stone:1>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:2>);
recipes.addShapeless("marble_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:2>, 
[<undergroundbiomes:metamorphic_cobble:2>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:7>);
recipes.addShapeless("mossy_chert", <undergroundbiomes:sedimentary_stone_mossy:7>, 
[<undergroundbiomes:sedimentary_stone:7>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:0>);
recipes.addShapeless("red_granite_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:0>, 
[<undergroundbiomes:igneous_cobble:0>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:3>);
recipes.addShapeless("quartzite_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:3>, 
[<undergroundbiomes:metamorphic_cobble:3>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:0>);
recipes.addShapeless("mossy_limestone", <undergroundbiomes:sedimentary_stone_mossy:0>, 
[<undergroundbiomes:sedimentary_stone:0>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:3>);
recipes.addShapeless("mossy_siltstone", <undergroundbiomes:sedimentary_stone_mossy:3>, 
[<undergroundbiomes:sedimentary_stone:3>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:2>);
recipes.addShapeless("mossy_shale", <undergroundbiomes:sedimentary_stone_mossy:2>, 
[<undergroundbiomes:sedimentary_stone:2>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:6>);
recipes.addShapeless("mossy_greywacke", <undergroundbiomes:sedimentary_stone_mossy:6>, 
[<undergroundbiomes:sedimentary_stone:6>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:4>);
recipes.addShapeless("mossy_lignite_block", <undergroundbiomes:sedimentary_stone_mossy:4>, 
[<undergroundbiomes:sedimentary_stone:4>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:4>);
recipes.addShapeless("blue_schist_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:4>, 
[<undergroundbiomes:metamorphic_cobble:4>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:3>);
recipes.addShapeless("andesite_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:3>, 
[<undergroundbiomes:igneous_cobble:3>, <ore:vine>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_mossy:5>);
recipes.addShapeless("mossy_dolomite", <undergroundbiomes:sedimentary_stone_mossy:5>, 
[<undergroundbiomes:sedimentary_stone:5>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:6>);
recipes.addShapeless("komatiite_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:6>, 
[<undergroundbiomes:igneous_cobble:6>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:4>);
recipes.addShapeless("gabbro_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:4>, 
[<undergroundbiomes:igneous_cobble:4>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:1>);
recipes.addShapeless("black_granite_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:1>, 
[<undergroundbiomes:igneous_cobble:1>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:2>);
recipes.addShapeless("rhyolite_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:2>, 
[<undergroundbiomes:igneous_cobble:2>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:1>);
recipes.addShapeless("eclogite_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:1>, 
[<undergroundbiomes:metamorphic_cobble:1>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:0>);
recipes.addShapeless("gneiss_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:0>, 
[<undergroundbiomes:metamorphic_cobble:0>, <ore:vine>]);

recipes.remove(<undergroundbiomes:igneous_cobble_mossy:5>);
recipes.addShapeless("basalt_mossy_cobblestone", <undergroundbiomes:igneous_cobble_mossy:5>, 
[<undergroundbiomes:igneous_cobble:5>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:5>);
recipes.addShapeless("green_schist_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:5>, 
[<undergroundbiomes:metamorphic_cobble:5>, <ore:vine>]);

recipes.remove(<undergroundbiomes:metamorphic_cobble_mossy:6>);
recipes.addShapeless("soapstone_mossy_cobblestone", <undergroundbiomes:metamorphic_cobble_mossy:6>, 
[<undergroundbiomes:metamorphic_cobble:6>, <ore:vine>]);