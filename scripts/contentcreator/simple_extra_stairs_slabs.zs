#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
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
//////// IMaterial, string

val rock = Mat.rock();
val iron = Mat.iron();

//// Underground Biomes

GenericBlock.createSlab(rock, "limestone_cobblestone_slab").register();
GenericBlock.createSlab(rock, "chalk_cobblestone_slab").register();
GenericBlock.createSlab(rock, "siltstone_cobblestone_slab").register();
GenericBlock.createSlab(rock, "dolomite_cobblestone_slab").register();
GenericBlock.createSlab(rock, "greywacke_cobblestone_slab").register();
GenericBlock.createSlab(rock, "chert_cobblestone_slab").register();

GenericBlock.createSlab(rock, "limestone_brick_slab").register();
GenericBlock.createSlab(rock, "chalk_brick_slab").register();
GenericBlock.createSlab(rock, "siltstone_brick_slab").register();
GenericBlock.createSlab(rock, "dolomite_brick_slab").register();
GenericBlock.createSlab(rock, "greywacke_brick_slab").register();
GenericBlock.createSlab(rock, "chert_brick_slab").register();

//// Content Tweaker
// Blendrein
GenericBlock.createSlab(rock, "blendrein_slab").register();
// Coade
GenericBlock.createSlab(rock, "coade_stone_polished_slab").register();
GenericBlock.createSlab(rock, "coade_stone_ornate_slab").register();
// Corrugated Ferrought
GenericBlock.createSlab(iron, "ferrought_corrugated_slab").register();
// Ferrought Plate
GenericBlock.createSlab(iron, "ferrought_plate_slab").register();