#loader preinit
import contentcreator.block.GenericBlock;
////////////////////////
//////// Stairs ////////
////////////////////////
//////// String name, IBlockState block

//// Underground Biomes

GenericBlock.createStairs("limestone_cobblestone_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("chalk_cobblestone_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("siltstone_cobblestone_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("dolomite_cobblestone_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("greywacke_cobblestone_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("chert_cobblestone_stairs", <blockstate:minecraft:stone_stairs>).register();

GenericBlock.createStairs("limestone_brick_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("chalk_brick_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("siltstone_brick_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("dolomite_brick_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("greywacke_brick_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("chert_brick_stairs", <blockstate:minecraft:stone_stairs>).register();

//// Content Tweaker
// Blendrein
GenericBlock.createStairs("blendrein_stairs", <blockstate:minecraft:stone_stairs>).register();
// Coade
GenericBlock.createStairs("coade_stone_polished_stairs", <blockstate:minecraft:stone_stairs>).register();
// Corrugated Ferrought
GenericBlock.createStairs("ferrought_corrugated_stairs", <blockstate:minecraft:stone_stairs>).register();
// Ferrought Plate
GenericBlock.createStairs("ferrought_plate_stairs", <blockstate:minecraft:stone_stairs>).register();

///////////////////////
//////// Slabs ////////
///////////////////////
//////// String name, IBlockState block


//// Underground Biomes

GenericBlock.createSlab(<blockmaterial:rock>, "limestone_cobblestone_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "chalk_cobblestone_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "siltstone_cobblestone_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "dolomite_cobblestone_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "greywacke_cobblestone_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "chert_cobblestone_slab").register();

GenericBlock.createSlab(<blockmaterial:rock>, "limestone_brick_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "chalk_brick_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "siltstone_brick_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "dolomite_brick_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "greywacke_brick_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "chert_brick_slab").register();

//// Content Tweaker
// Blendrein
GenericBlock.createSlab(<blockmaterial:rock>, "blendrein_slab").register();
// Coade
GenericBlock.createSlab(<blockmaterial:rock>, "coade_stone_polished_slab").register();
GenericBlock.createSlab(<blockmaterial:rock>, "coade_stone_ornate_slab").register();
// Corrugated Ferrought
GenericBlock.createSlab(<blockmaterial:iron>, "ferrought_corrugated_slab").register();
// Ferrought Plate
GenericBlock.createSlab(<blockmaterial:iron>, "ferrought_plate_slab").register();