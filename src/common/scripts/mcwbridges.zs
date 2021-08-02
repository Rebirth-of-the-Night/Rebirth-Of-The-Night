import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

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
recipes.addShaped("bridgeStack_oak", <mcwbridges:rope_oak_bridge>*32,[
	[<quark:rope>, null, <quark:rope>],
	[<minecraft:log>, <minecraft:log>, <minecraft:log>]
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

// actual bamboo bridge
recipes.addShaped("bridge_bamboo", <mcwbridges:bamboo_bridge>*2,[
	[<biomesoplenty:bamboo>, <ore:durableFiber>, <biomesoplenty:bamboo>],
	[<biomesoplenty:bamboo>, <biomesoplenty:bamboo>, <biomesoplenty:bamboo>]
]);
