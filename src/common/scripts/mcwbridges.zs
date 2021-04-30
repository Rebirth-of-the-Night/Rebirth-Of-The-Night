import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

JEI.removeAndHide(<mcwbridges:iron_rod>);

//Removed iron recipes
recipes.remove(<mcwbridges:iron_rod>);
recipes.remove(<mcwbridges:iron_armrest>);
recipes.remove(<mcwbridges:iron_platform>);
recipes.remove(<ore:durableFiber>);

//Added material recipes
recipes.addShaped("tin_bridge_armrest", <mcwbridges:iron_armrest>*3,[
	[<ore:ingotTin>],
  [<ore:ingotTin>]
]);
recipes.addShaped("tin_bridge_platform", <mcwbridges:iron_platform>*1,[
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
]);

recipes.addShaped("iron_bridge_armrest", <mcwbridges:iron_armrest>*6,[
	[<ore:ingotIron>],
  [<ore:ingotIron>]
]);
recipes.addShaped("iron_bridge_platform", <mcwbridges:iron_platform>*2,[
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
]);

recipes.addShaped("steel_bridge_armrest", <mcwbridges:iron_armrest>*12,[
	[<ore:ingotSteel>],
  [<ore:ingotSteel>]
]);
recipes.addShaped("steel_bridge_platform", <mcwbridges:iron_platform>*4,[
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
]);

//rope bridges
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