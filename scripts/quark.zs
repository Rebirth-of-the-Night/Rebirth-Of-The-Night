import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

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

mods.jei.JEI.removeAndHide(<quark:brick_wall>);
mods.jei.JEI.removeAndHide(<quark:stone_granite_wall>);
mods.jei.JEI.removeAndHide(<quark:stone_diorite_wall>);
mods.jei.JEI.removeAndHide(<quark:stone_andesite_wall>);
mods.jei.JEI.removeAndHide(<quark:sandstone_wall>);
mods.jei.JEI.removeAndHide(<quark:red_sandstone_wall>);
mods.jei.JEI.removeAndHide(<quark:stonebrick_wall>);
mods.jei.JEI.removeAndHide(<quark:stonebrick_mossy_wall>);
mods.jei.JEI.removeAndHide(<quark:prismarine_rough_wall>);
mods.jei.JEI.removeAndHide(<quark:red_nether_brick_slab>);
mods.jei.JEI.removeAndHide(<quark:purpur_block_wall>);
mods.jei.JEI.removeAndHide(<quark:red_nether_brick_stairs>);
mods.jei.JEI.removeAndHide(<quark:nether_brick_fence_gate>);

recipes.removeByRecipeName("quark:chest_minecart");
recipes.removeByRecipeName("quark:stone_shovel");
recipes.removeByRecipeName("quark:stone_pickaxe");
recipes.removeByRecipeName("quark:stone_axe");
recipes.removeByRecipeName("quark:stone_hoe");
recipes.removeByRecipeName("quark:iron_button");
recipes.removeByRecipeName("quark:gold_button");
recipes.removeByRecipeName("quark:iron_plate_1");
recipes.removeByRecipeName("quark:iron_ladder");
recipes.removeByRecipeName("quark:hopper");
recipes.removeByRecipeName("quark:sandy_bricks");
recipes.addShapeless("sandy_bricks",<quark:sandy_bricks>,[<minecraft:brick_block>,<ore:sand>]);

recipes.remove(<quark:backpack>);
recipes.remove(<quark:pipe>);
recipes.remove(<quark:iron_plate>);

recipes.addShaped("midori_block",<quark:midori_block>,[
	[<betterwithaddons:material:2>,<betterwithaddons:material:2>],
	[<betterwithaddons:material:2>,<betterwithaddons:material:2>]
]);

//Immersive plating
recipes.addShaped("iron plate", <quark:iron_plate>*24,
 [[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
  [<ore:ingotIron>,<minetraps:nails>,<ore:ingotIron>],
  [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>]]);

recipes.addShaped("Quark Backpack", <quark:backpack>.withTag({Quality: {}}),[
	[<betterwithmods:material:6>, <betterwithmods:material:6>, <betterwithmods:material:6>],
    [<betterwithmods:material:8>, <ore:chestWood>, <betterwithmods:material:8>],
   	[<betterwithmods:material:6>, <betterwithmods:material:6>, <betterwithmods:material:6>]
]);

recipes.addShaped("Tin Ladder", <quark:iron_ladder>*12,[
	[<ore:ingotTin>, null, <ore:ingotTin>],
   	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
    [<ore:ingotTin>, null, <ore:ingotTin>]
]);

val durableFiber = <ore:durableFiber>;

recipes.addShaped("iDidItImACTUALLYFiberNow", <quark:rope>*6,[
	[durableFiber, durableFiber, durableFiber],
	[durableFiber, null, durableFiber],
	[durableFiber, durableFiber, durableFiber]
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

//Easier Crystals 
recipes.addShapeless("Quark crystal 8-1", <quark:crystal:8>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <endreborn:dragon_scales>]
);
recipes.addShapeless("Quark crystal 8-2", <quark:crystal:8>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <simpleores:onyx_gem>]
);
recipes.addShapeless("Quark crystal 7", <quark:crystal:7>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <ore:gemAmethyst>]
);
recipes.addShapeless("Quark crystal 6-1", <quark:crystal:6>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <aether_legacy:zanite_gemstone>]
);
recipes.addShapeless("Quark crystal 6-2", <quark:crystal:6>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <endreborn:item_advanced_ender_pearl>]
);
recipes.addShapeless("Quark crystal 5-1", <quark:crystal:5>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <biomesoplenty:gem:6>]
);
recipes.addShapeless("Quark crystal 5-2", <quark:crystal:5>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <minecraft:dye:4>]
);
recipes.addShapeless("Quark crystal 4-1", <quark:crystal:4>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <minecraft:emerald>]
);
recipes.addShapeless("Quark crystal 4-2", <quark:crystal:4>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <biomesoplenty:gem:2>]
);
recipes.addShapeless("Quark crystal 4-3", <quark:crystal:4>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <iceandfire:myrmex_jungle_resin>]
);
recipes.addShapeless("Quark crystal 3-1", <quark:crystal:3>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <aether_legacy:ambrosium_shard>]
);
recipes.addShapeless("Quark crystal 3-2", <quark:crystal:3>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <minecraft:glowstone_dust>]
);
recipes.addShapeless("Quark crystal 2-1", <quark:crystal:2>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <iceandfire:myrmex_desert_resin>]
);
recipes.addShapeless("Quark crystal 2-2", <quark:crystal:2>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <minecraft:blaze_powder>]
);
recipes.addShapeless("Quark crystal 1-1", <quark:crystal:1>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <biomesoplenty:gem:1>]
);
recipes.addShapeless("Quark crystal 1-2", <quark:crystal:1>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <scalinghealth:crystalshard>]
);
recipes.addShapeless("Quark crystal 0-1", <quark:crystal:0>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <minecraft:diamond>]
);
recipes.addShapeless("Quark crystal 0-2", <quark:crystal:0>*3,
	[<contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:halite>, <contenttweaker:phosphophyllite>]
);

// Soul Powder

recipes.remove(<quark:soul_powder>);

recipes.addShaped("Soul_Bead_to_Soul_Powder", <quark:soul_powder>*9, [[<quark:soul_bead>, <minecraft:soul_sand>, null],[<minecraft:soul_sand>, <minecraft:soul_sand>, null], [null, null, null]]);

recipes.addShapeless("Soul_sand_and_magic_dust", <quark:soul_powder>, [<dungeontactics:magic_powder>, <minecraft:soul_sand>]);

// SFS ROD
recipes.remove(<quark:iron_rod>);

recipes.addShaped("sfs_rod", <quark:iron_rod>,[
	[<betterwithmods:material:14>],
    [<minecraft:end_rod>]
]);

// Soul Bead

mods.betterwithaddons.Infuser.addShaped(<quark:soul_bead>, [
   [<quark:soul_powder>, <bountifulbaubles:spectralsilt>, <quark:soul_powder>],
   [<bountifulbaubles:spectralsilt>, <contenttweaker:soul_orb>, <bountifulbaubles:spectralsilt>], 
   [<quark:soul_powder>, <bountifulbaubles:spectralsilt>, <quark:soul_powder>]],
   16);

// Slime Blocks

recipes.addShapeless("mixed_green_slime_block",<minecraft:slime>,[<quark:color_slime:1>,<quark:color_slime:4>]);
recipes.removeByRecipeName("quark:color_slime_4");
recipes.addShapeless("dyed_yellow_slime_block",<quark:color_slime:4>,[<ore:blockSlime>,<ore:dyeYellow>]);
recipes.addShapeless("dyed_cyan_slime_block",<quark:color_slime:2>,[<ore:blockSlime>,<ore:dyeCyan>]);
recipes.addShapeless("dyed_magenta_slime_block",<quark:color_slime:3>,[<ore:blockSlime>,<ore:dyeMagenta>]);