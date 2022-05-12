#priority 600

import scripts.shared.utils.recipeUtils.concatMetas;
import scripts.shared.utils.recipeUtils.metaArray;
import scripts.shared.utils.arrayUtils.concatIS;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;

var rsOre = "redstone_ore";

var hardMap as IItemStack[][][float] = {
	1 : [	[<minecraft:redstone_ore:0>],
			concatMetas(["osv:"], [rsOre], ["rotn_blocks_cave_moss", "hardened_clay", "stained_hardened_clay"]),
			concatMetas(["osv:"], [rsOre + "_quark_biome_cobblestone"], ["_1", "_2", ""]),
			concatIS(["pyrotech:"], ["dense_" + rsOre ], ["_large", "small", "rocks"]),
		],
	2 : [	[<minecraft:quartz_ore:0>, <minecraft:stone_slab:4>, <minecraft:stone_slab:7>, <minecraft:double_stone_slab:7>],
			concatMetas(["minecraft:quartz_"], ["block", "stairs"], [""]),
			concatMetas(["betternether:quartz_glass"], ["_framed", "_pane", "framed_pane", ""], [""]),
			concatMetas(["osv:biomesoplenty_amethyst_ore_"], ["end_stone", "obsidian"], [""])
		]
};

for k,v in hardMap {
	for i in v {
		for x in i {
			x.hardness = k;
		}
	}
}

val brick_block as IItemStack = <contenttweaker:brick_minecraft_clay>;
brick_block.hardness = 10;
val brick_stairs as IItemStack = <minecraft:brick_stairs>;
brick_stairs.hardness = 6;