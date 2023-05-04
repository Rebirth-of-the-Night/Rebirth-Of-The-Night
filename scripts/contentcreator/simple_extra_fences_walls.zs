#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
////////////////////////
//////// Fences ////////
////////////////////////
//////// IMaterial, String name


///////////////////////
//////// Slabs ////////
///////////////////////
//////// IMaterial, String name

val rock = Mat.rock();
val iron = Mat.iron();

//// Underground Biomes
// Limestone cobblestone
GenericBlock.createFence(rock, "limestone_cobblestone_wall").register();

//// Content Tweaker
// Blendrein
GenericBlock.createFence(rock, "blendrein_wall").register();
// Coade
GenericBlock.createFence(rock, "coade_stone_polished_wall").register();
// Corrugated Ferrought
GenericBlock.createFence(iron, "ferrought_corrugated_wall").register();