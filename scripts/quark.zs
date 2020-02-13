import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<quark:chain>);

mods.jei.JEI.removeAndHide(<quark:candle:0>);
mods.jei.JEI.removeAndHide(<quark:candle:1>);
mods.jei.JEI.removeAndHide(<quark:candle:2>);
mods.jei.JEI.removeAndHide(<quark:candle:3>);
mods.jei.JEI.removeAndHide(<quark:candle:4>);
mods.jei.JEI.removeAndHide(<quark:candle:5>);
mods.jei.JEI.removeAndHide(<quark:candle:6>);
mods.jei.JEI.removeAndHide(<quark:candle:7>);
mods.jei.JEI.removeAndHide(<quark:candle:8>);
mods.jei.JEI.removeAndHide(<quark:candle:9>);
mods.jei.JEI.removeAndHide(<quark:candle:10>);
mods.jei.JEI.removeAndHide(<quark:candle:11>);
mods.jei.JEI.removeAndHide(<quark:candle:12>);
mods.jei.JEI.removeAndHide(<quark:candle:13>);
mods.jei.JEI.removeAndHide(<quark:candle:14>);
mods.jei.JEI.removeAndHide(<quark:candle:15>);


recipes.remove(<quark:backpack>);
recipes.remove(<quark:pipe>);

recipes.addShaped("Quark Backpack", <quark:backpack>,[
	[<betterwithmods:material:6>, <betterwithmods:material:6>, <betterwithmods:material:6>],
    	[<betterwithmods:material:8>, <ore:chestWood>, <betterwithmods:material:8>],
   	[<betterwithmods:material:6>, <betterwithmods:material:6>, <betterwithmods:material:6>]
]);

recipes.addShaped("Tin Ladder", <quark:iron_ladder>*12,[
	[<ore:ingotTin>, null, <ore:ingotTin>],
   	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
    	[<ore:ingotTin>, null, <ore:ingotTin>]
]);

recipes.remove(<quark:bark:*>);

recipes.addShapeless("Quark Bark", <quark:bark>*6,
	[<minecraft:log>, <minecraft:log>, <minecraft:log>, <minecraft:log>, <minecraft:log>, <minecraft:log>]
);
recipes.addShapeless("Quark Bark1", <quark:bark:1>*6,
	[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]
);
recipes.addShapeless("Quark Bark2", <quark:bark:2>*6,
	[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>]
);
recipes.addShapeless("Quark Bark3", <quark:bark:3>*6,
	[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>]
);
recipes.addShapeless("Quark Bark4", <quark:bark:4>*6,
	[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>, <minecraft:log2>, <minecraft:log2>, <minecraft:log2>]
);
recipes.addShapeless("Quark Bark5", <quark:bark:5>*6,
	[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>]
);
