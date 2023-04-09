#loader preinit
import contentcreator.block.GenericBlock;
////////////////////////
//////// Fences ////////
////////////////////////
//////// IMaterial, String name


///////////////////////
//////// Slabs ////////
///////////////////////
//////// IMaterial, String name

//// Underground Biomes
// Limestone cobblestone
GenericBlock.createFence(<blockmaterial:rock>, "limestone_cobblestone_wall").register();

//// Content Tweaker
// Blendrein
GenericBlock.createFence(<blockmaterial:rock>, "blendrein_wall").register();
// Coade
GenericBlock.createFence(<blockmaterial:rock>, "coade_stone_polished_wall").register();
// Corrugated Ferrought
GenericBlock.createFence(<blockmaterial:iron>, "ferrought_corrugated_wall").register();