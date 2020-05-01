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
  
//Funnier rope
recipes.remove(<betterwithmods:rope>);

val rope = <betterwithmods:rope>;
val dfiber = <ore:durableFiber>;

recipes.addShaped("benign_rope", rope*2,
  [[dfiber,dfiber],
  [dfiber,dfiber],
  [dfiber,dfiber]]);
  
recipes.removeByRecipeName("betterwithmods:items/material/material.hemp_fibers");
recipes.addShapeless("bwm_fiber_return", <betterwithmods:material:3>*3,
[<betterwithmods:rope>]);

//Dynamite
recipes.removeShapeless(<betterwithmods:dynamite>);

recipes.addShapeless("betterwithmodsDynamite", <betterwithmods:dynamite>, 
[<ore:paper>, <ore:paper>, <ore:paper>, 
<betterwithmods:material:28>, <betterwithmods:material:29>, <spartanweaponry:material:2>]);

//Put wind sail recipe using slabs above recipe using siding so noobs dont ask questions
recipes.remove(<betterwithmods:material:11>);

val sail = <betterwithmods:material:11>;
val cloth = <betterwithmods:material:4>;
val slab = <ore:slabWood>;
val siding = <betterwithmods:siding_wood:*>;

recipes.addShaped("Wind Sail Slab", <betterwithmods:material:11>,
  [[cloth,cloth,cloth],
  [cloth,cloth,cloth],
  [slab,slab,slab]]);

recipes.addShaped("Wind Sail Siding", <betterwithmods:material:11>,
  [[cloth,cloth,cloth],
  [cloth,cloth,cloth],
  [siding,siding,siding]]);  

//Vine Trap + Mossy
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

recipes.addShapeless("moss_stone",<minecraft:mossy_cobblestone>, [<minecraft:cobblestone>, <ore:vine>]);
recipes.addShapeless("mossy_holystone",<aether_legacy:mossy_holystone>, [<aether_legacy:holystone>, <ore:vine>]);
recipes.addShapeless("mossy_stone_bricks",<minecraft:stonebrick:1>, [<minecraft:stonebrick:0>, <ore:vine>]);
recipes.addShapeless("mossy_white_stone_bricks",<betterwithaddons:whitebrick:1>, [<betterwithaddons:whitebrick:0>, <ore:vine>]);
recipes.addShapeless("mossy_towerwood",<twilightforest:tower_wood:3>, [<twilightforest:tower_wood:0>, <ore:vine>]);
recipes.addShapeless("mossy_castle_brick",<twilightforest:castle_brick:4>, [<twilightforest:castle_brick:0>, <ore:vine>]);
recipes.addShapeless("mossy_etched_nagastone",<twilightforest:etched_nagastone_mossy>, [<twilightforest:etched_nagastone>, <ore:vine>]);