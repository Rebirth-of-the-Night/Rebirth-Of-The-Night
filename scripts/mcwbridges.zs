import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

// Wood bridges (to be converted)
// recipes.addShaped("mcwbridges:stone_brick_bridge", <mcwbridges:stone_brick_bridge> * 4, [[<minecraft:stone_slab:5>, null, <minecraft:stone_slab:5>], [<minecraft:stone_slab:5>, <minecraft:stone_slab:5>, <minecraft:stone_slab:5>]]);


// oak bridge -> generic wood
recipes.remove(<mcwbridges:oak_log_bridge_middle>);
recipes.addShaped("genericWoodBridge", <mcwbridges:oak_log_bridge_middle>*4,[
	[<ore:genericFences>, null, <ore:genericFences>],
	[<ore:genericWoodSlabs>, <ore:genericWoodSlabs>, <ore:genericWoodSlabs>]
]);

recipes.remove(<mcwbridges:oak_rail_bridge>);
recipes.addShaped("genericRailBridge", <mcwbridges:oak_rail_bridge>*4,[
	[<ore:genericFences>, null, <ore:genericFences>],
	[<ore:genericFences>, <ore:genericWoodSlabs>, <ore:genericFences>]
]);

// Stone bridge -> generic stone
recipes.remove(<mcwbridges:mossy_stone_brick_bridge>*3);
recipes.addShaped("mossyStoneBrick_Bridge", <mcwbridges:mossy_stone_brick_bridge>*4,[
	[<ore:mossyStoneBricks>, null, <ore:mossyStoneBricks>],
	[<ore:mossyStoneBricks>, <ore:mossyStoneBricks>, <ore:mossyStoneBricks>]
]);

recipes.remove(<mcwbridges:stone_brick_bridge>*4);
recipes.addShaped("genericStoneSlabBridge", <mcwbridges:stone_brick_bridge>, [
	[<ore:genericWoodSlabs>, null, <ore:genericWoodSlabs>],
	[<ore:genericWoodSlabs>, <ore:genericWoodSlabs>, <ore:genericWoodSlabs>]
]);

// Metal bridge recipes
recipes.addShaped("tin_bridge", <mcwbridges:most1>,[
	[<ore:nuggetTin>, null, <ore:nuggetTin>],
	[<ore:nuggetTin>, null, <ore:nuggetTin>],
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]
]);
recipes.addShaped("iron_bridge", <mcwbridges:most1>*3,[
	[<ore:nuggetIron>, null, <ore:nuggetIron>],
	[<ore:nuggetIron>, null, <ore:nuggetIron>],
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
recipes.addShaped("steel_bridge", <mcwbridges:most1>*8,[
	[<ore:nuggetSteel>, null, <ore:nuggetSteel>],
	[<ore:nuggetSteel>, null, <ore:nuggetSteel>],
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

// rope bridges
recipes.remove(<mcwbridges:rope_oak_bridge>);
recipes.addShaped("bridgeStack_generic_4", <mcwbridges:rope_oak_bridge>*4,[
	[<minecraft:string>, null, <minecraft:string>],
	[<ore:genericWoodSlabs>, <ore:genericWoodSlabs>, <ore:genericWoodSlabs>]
]);
recipes.addShaped("bridgeStack_generic", <mcwbridges:rope_oak_bridge>*32,[
	[<quark:rope>, null, <quark:rope>],
	[<ore:genericPlanks>, <ore:genericPlanks>, <ore:genericPlanks>]
]);

recipes.remove(<mcwbridges:rope_oak_bridge_end>);
recipes.addShaped("bridgeEnd_generic", <mcwbridges:rope_oak_bridge_end>*4,[
	[<minecraft:string>, null, <minecraft:string>],
	[<ore:genericFences>, null, <ore:genericFences>],
	[<ore:genericWoodSlabs>, <ore:genericWoodSlabs>, <ore:genericWoodSlabs>]
]);

recipes.addShaped("bridgeStack_birch", <mcwbridges:rope_birch_bridge>*32,[
	[<quark:rope>, null, <quark:rope>],
	[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]
]);
recipes.addShaped("bridgeStack_spruce", <mcwbridges:rope_spruce_bridge>*32,[
	[<quark:rope>, null, <quark:rope>],
	[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>]
]);
recipes.addShaped("bridgeStack_jungle", <mcwbridges:rope_jungle_bridge>*32,[
	[<quark:rope>, null, <quark:rope>],
	[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>]
]);
recipes.addShaped("bridgeStack_acacia", <mcwbridges:rope_acacia_bridge>*32,[
	[<quark:rope>, null, <quark:rope>],
	[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>]
]);
recipes.addShaped("bridgeStack_dark_oak", <mcwbridges:rope_dark_oak_bridge>*32,[
	[<quark:rope>, null, <quark:rope>],
	[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>]
]);

// actual bamboo bridges
recipes.remove(<mcwbridges:bamboo_bridge>);
recipes.addShaped("bridge_bamboo", <mcwbridges:bamboo_bridge>*2,[
	[<ore:cropBamboo>, <ore:durableFiber>, <ore:cropBamboo>],
	[<ore:cropBamboo>, <ore:cropBamboo>, <ore:cropBamboo>]
]);

recipes.remove(<mcwbridges:dry_bamboo_bridge>);
recipes.addShaped("bridge_dry_bamboo", <mcwbridges:dry_bamboo_bridge>*2,[
	[<minecraft:stick>, <ore:durableFiber>, <minecraft:stick>],
	[<ore:cropBamboo>, <ore:cropBamboo>, <ore:cropBamboo>]
]);
