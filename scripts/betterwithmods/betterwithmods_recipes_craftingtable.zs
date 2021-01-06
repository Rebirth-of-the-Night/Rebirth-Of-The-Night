import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Redstone Latch
recipes.remove(<betterwithmods:material:34>);

val latch = <betterwithmods:material:34>;
val copper = <ore:ingotCopper>;
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
  
val cattail = <biomesoplenty:plant_1:4>; 
val wicker = <betterwithmods:wicker>;
val driedf = <pyrotech:material:13>;
val rice = <harvestcraft:riceitem>;

recipes.remove(<betterwithmods:bucket>);
recipes.addShaped("well_bucket", <betterwithmods:bucket>,
  [[<betterwithmods:rope>],
  [<pyrotech:bucket_stone>|<minecraft:bucket>]]);

recipes.addShaped("wicker1", wicker*2,
  [[cattail,cattail],
  [cattail,cattail]]);
  
recipes.addShaped("wicker2", wicker*2,
  [[driedf,driedf,driedf],
  [driedf,driedf,driedf]]);
  
recipes.addShaped("wicker3", wicker*3,
  [[rice,rice,rice],
  [rice,rice,rice]]);
    	
recipes.removeByRecipeName("betterwithmods:items/material/material.hemp_fibers");
recipes.addShapeless("bwm_fiber_return", <betterwithmods:material:3>*3,
[<betterwithmods:rope>]);

//powerful hibachi
recipes.removeByRecipeName("betterwithmods:blocks/redstone/hibachi");

val hellfire = <betterwithmods:material:17>;
val stone = <ore:stone>;
val heating = <betterwithmods:material:27>;
val crstone = <pyrotech:material:36>;
recipes.addShaped("blocks/redstone/hibachi", <betterwithmods:hibachi>,
  [[hellfire,hellfire,hellfire],
  [stone,heating,stone],
  [stone,crstone,stone]]);
  
//Dynamite
recipes.removeShapeless(<betterwithmods:dynamite>);

recipes.addShapeless("betterwithmodsDynamite", <betterwithmods:dynamite>*64, 
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

//Cauldron
recipes.remove(<betterwithmods:cooking_pot:1>);

val cooking_cauldron = <betterwithmods:cooking_pot:1>;
val cauldron = <minecraft:cauldron>;
val whisk = <ore:bone>;
val bucket = <pyrotech:bucket_wood>|<pyrotech:bucket_clay>|<pyrotech:bucket_stone>|<minecraft:bucket>;

recipes.addShaped("cooking_cauldron", cooking_cauldron,
  [[whisk],
  [bucket],
  [cauldron]]);

//Turntable uses Moulding
//recipes.remove(<betterwithmods:single_machine:3>);
//recipes.addShaped("turntable", <betterwithmods:single_machine:3>,
//  [[<betterwithmods:moulding_wood>,<betterwithmods:moulding_wood>,<betterwithmods:moulding_wood>],
//  [<ore:stone>,<minecraft:clock>,<ore:stone>],
//  [<ore:stone>,<ore:gearWood>,<ore:stone>]]);

//Vine Trap + Mossy
recipes.remove(<betterwithmods:vine_trap>);
recipes.addShaped("vine_trap", <betterwithmods:vine_trap>,
  [[null,null,null],
  [<ore:vine>,<ore:vine>,<ore:vine>],
  [null,null,null]]);

recipes.remove(<fairylights:garland>);
recipes.addShaped("vine_garland", <fairylights:garland>,
  [[null,null,null],
  [<ore:ingotIron>,<ore:vine>,<ore:ingotIron>],
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

// Oredict fixes

recipes.remove(<betterwithmods:raw_pastry:0>);
recipes.addShaped("cake_batter",<betterwithmods:raw_pastry:0>,[
  [<ore:listAllsugar>,<ore:listAllsugar>,<ore:listAllsugar>],
  [<ore:listAllmilk>,<ore:listAllegg>,<ore:listAllmilk>],
  [<ore:foodFlour>,<ore:foodFlour>,<ore:foodFlour>]
]);

recipes.remove(<betterwithmods:raw_pastry:1>);
recipes.addShapeless("oven_ready_pumpkin_pie",<betterwithmods:raw_pastry:1>,[<minecraft:pumpkin>,<ore:listAllsugar>,<ore:listAllegg>,<ore:foodFlour>]);