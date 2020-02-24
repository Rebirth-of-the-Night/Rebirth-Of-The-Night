import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

//Removed iron recipes
recipes.remove(<mcwbridges:iron_rod>);
recipes.remove(<mcwbridges:iron_armrest>);
recipes.remove(<mcwbridges:iron_platform>);

//Added material recipes
recipes.addShaped("Tin bridge armrest", <mcwbridges:iron_armrest>*6,[
	[<ore:ingotTin>],
  [<ore:ingotTin>]
]);
recipes.addShaped("Tin bridge platform", <mcwbridges:iron_platform>*2,[
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
	
]);
//QoL recipes
recipes.addShaped("quarkRope_hempFibers", <quark:rope>*6,[
	[<betterwithmods:material:3>, <betterwithmods:material:3>, <betterwithmods:material:3>],
	[<betterwithmods:material:3>, null, <betterwithmods:material:3>],
	[<betterwithmods:material:3>, <betterwithmods:material:3>, <betterwithmods:material:3>]
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
