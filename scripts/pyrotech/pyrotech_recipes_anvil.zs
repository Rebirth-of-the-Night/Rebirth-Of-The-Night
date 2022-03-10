import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;

GraniteAnvil.removeAllRecipes();
recipes.removeByRecipeName("betterwithmods:decompress/flint_decompress");

JEI.removeAndHide(<pyrotech_compat:anvil_andesite>);
JEI.removeAndHide(<pyrotech_compat:anvil_diorite>);

//recipes
/*
Each tier of hammer has double the "first advantage" from the previous, if a recipe that requires 64 hits is hit with a 16 power level hammer: 64 - 16 = 48 hits remaining and so on. This data is stored in pyrotech/core.cfg and pyrotech/module.tech.Basic.cfg
Hammer levels: 
lvl 1 = 0
	minecraft:wooden_pickaxe
lvl 2 = 6
	pyrotech:stone_hammer 
	endreborn:tool_hammer_iron
lvl 3 = 10
	
lvl 4 = 16
	pyrotech:diamond_hammer(SFS)
lvl 5 = 32
	aether_legacy:notch_hammer
lvl 6 = 48
	pyrotech:obsidian_hammer(Onyx)
lvl 7 = 64
lvl 8 = 82
	dragonbone warhammer
	onyx warhammer
lvl 9 = 108
	dragonbone war mallet
lvl 10(9) = 108
	dragonsteel
*/
GraniteAnvil.addRecipe("break_clay_brick", <minecraft:brick>*4, <contenttweaker:brick_minecraft_clay>, 4, "pickaxe", true);
GraniteAnvil.addRecipe("break_coade_brick", <contenttweaker:brick_coade>*4, <contenttweaker:brick_minecraft_stone>, 4, "pickaxe", true);
GraniteAnvil.addRecipe("break_masonry_brick", <contenttweaker:masonry_brick>*4, <contenttweaker:brick_pyrotech_masonry>, 4, "pickaxe", true);
GraniteAnvil.addRecipe("break_nether_brick", <minecraft:netherbrick>*4, <contenttweaker:brick_minecraft_nether>, 4, "pickaxe", true);
GraniteAnvil.addRecipe("break_fiery_nether_brick", <netherex:fiery_netherbrick>*4, <contenttweaker:brick_netherex_fiery>, 4, "pickaxe", true);
GraniteAnvil.addRecipe("break_mud_brick", <biomesoplenty:mud_brick>*4, <contenttweaker:brick_biomesoplenty_mud>, 4, "pickaxe", true);
GraniteAnvil.addRecipe("white_stone_recycling", <betterwithmods:material:39>, <betterwithaddons:whitebrick:2>,4, "hammer", true);
GraniteAnvil.addRecipe("prismarine_to_prismshard", <minecraft:prismarine_shard>*3, <minecraft:prismarine>, 18, "pickaxe", true);
GraniteAnvil.addRecipe("prism_brick_to_prismshard_to", <minecraft:prismarine_shard>*8, <minecraft:prismarine:1>, 18, "pickaxe", true);
GraniteAnvil.addRecipe("flintblock_to_flint", <minecraft:flint>*4, <betterwithmods:aesthetic:5>, 8, "hammer", true);
GraniteAnvil.addRecipe("purpur_to_popped_chorus", <minecraft:chorus_fruit_popped>*3, <minecraft:purpur_block>, 8, "hammer", true);
GraniteAnvil.addRecipe("halite_to_salt", <animania:salt>*3, <contenttweaker:halite>,6, "pickaxe", true);
GraniteAnvil.addRecipe("dense_redstone", <minecraft:redstone>*2, <pyrotech:material:36>, 2, "hammer", true);
GraniteAnvil.addRecipe("dense_quartz", <minecraft:quartz>*2, <pyrotech:material:37>, 2, "pickaxe", true);
GraniteAnvil.addRecipe("ambrosium_to_magic_dust", <contenttweaker:magic_blend>*3, <aether_legacy:ambrosium_block>, 16, "hammer", true);
GraniteAnvil.addRecipe("lignite_to_coal_dust", <betterwithmods:material:18>, <undergroundbiomes:sedimentary_stone:4>, 16, "hammer", true);
GraniteAnvil.addRecipe("raw_endorium", <endreborn:item_raw_endorium>, <ore:enderpearl>, 16, "hammer", true);
GraniteAnvil.addRecipe("lormyte_crystal", <endreborn:item_lormyte_crystal>*2, <endreborn:block_lormyte_crystal>, 8, "hammer", true);
GraniteAnvil.addRecipe("obsidian_dust", <endreborn:catalyst>*2, <endreborn:item_shard_obsidian>, 16, "hammer", true);
GraniteAnvil.addRecipe("obsidian_shard", <endreborn:item_shard_obsidian>, <minecraft:obsidian>, 64, "pickaxe", true);
<ore:cobblestone_except_cobblestone>.addAll(<ore:cobblestone>);
<ore:cobblestone_except_cobblestone>.remove(<minecraft:cobblestone>);
GraniteAnvil.addRecipe("cobblestone_any_cobblestone", <minecraft:cobblestone>, <ore:cobblestone_except_cobblestone>, 1, "hammer", true);
GraniteAnvil.addRecipe("cobblestone_to_rocks", <pyrotech:rock:0> * 4, <minecraft:cobblestone>, 3, "hammer", true);
GraniteAnvil.addRecipe("entropy_cobblestone", <endreborn:block_entropy_end_stone>, <minecraft:end_stone>, 4, "hammer", true);
GraniteAnvil.addRecipe("cracked_astral_block", <nyx:cracked_star_block>, <nyx:star_block>, 64, "hammer", true);
GraniteAnvil.addRecipe("copper_to_dust", <ore:dustCopper>.firstItem, <ore:ingotCopper>, 8, "hammer", true);
GraniteAnvil.addRecipe("copper_ore_to_dust", <ore:dustCopper>.firstItem, <ore:oreCopper>, 4, "hammer", true);
GraniteAnvil.addRecipe("copper_raw_to_dust", <ore:dustCopper>.firstItem, <ore:rawOreCopper>, 4, "hammer", true);
GraniteAnvil.addRecipe("tin_to_dust", <ore:dustTin>.firstItem, <ore:ingotTin>, 8, "hammer", true);
GraniteAnvil.addRecipe("tin_ore_to_dust", <ore:dustTin>.firstItem, <ore:oreTin>, 4, "hammer", true);
GraniteAnvil.addRecipe("tin_raw_to_dust", <ore:dustTin>.firstItem, <ore:rawOreTin>, 4, "hammer", true);
GraniteAnvil.addRecipe("zinc_bits_to_dust", <ore:dustZinc>.firstItem, <pyrotech:rock:3>, 4, "hammer", true);
GraniteAnvil.addRecipe("iron_to_dust", <ore:dustIron>.firstItem, <ore:ingotIron>, 12, "hammer", true);
GraniteAnvil.addRecipe("iron_ore_to_dust", <ore:dustIron>.firstItem, <ore:oreIron>, 8, "hammer", true);
GraniteAnvil.addRecipe("iron_raw_to_dust", <ore:dustIron>.firstItem, <ore:rawOreIron>, 8, "hammer", true);
GraniteAnvil.addRecipe("bronze_to_dust", <ore:dustBronze>.firstItem, <ore:ingotBronze>, 16, "hammer", true);
GraniteAnvil.addRecipe("brass_to_dust", <ore:dustBrass>.firstItem, <ore:ingotBrass>, 16, "hammer", true);
GraniteAnvil.addRecipe("gold_to_dust", <ore:dustGold>.firstItem, <ore:ingotGold>, 8, "hammer", true);
GraniteAnvil.addRecipe("gold_ore_to_dust", <ore:dustGold>.firstItem, <ore:oreGold>, 4, "hammer", true);
GraniteAnvil.addRecipe("gold_raw_to_dust", <ore:dustGold>.firstItem, <contenttweaker:raw_gold>, 4, "hammer", true);
GraniteAnvil.addRecipe("silver_to_dust", <ore:dustSilver>.firstItem, <ore:ingotSilver>, 8, "hammer", true);
GraniteAnvil.addRecipe("silver_ore_to_dust", <ore:dustSilver>.firstItem, <ore:oreSilver>, 4, "hammer", true);
GraniteAnvil.addRecipe("silver_raw_to_dust", <ore:dustSilver>.firstItem, <ore:rawOreSilver>, 4, "hammer", true);

GraniteAnvil.addRecipe("gravitite_to_dust", <ore:dustGravitite>.firstItem, <ore:ingotGravitite>, 12, "hammer", true);
GraniteAnvil.addRecipe("gravitite_ore_to_dust", <ore:dustGravitite>.firstItem, <ore:oreGravitite>, 8, "hammer", true);
GraniteAnvil.addRecipe("gravitite_raw_to_dust", <ore:dustGravitite>.firstItem, <ore:rawOreGravitite>, 8, "hammer", true);

GraniteAnvil.addRecipe("electrum_to_dust", <ore:dustElectrum>.firstItem, <ore:ingotElectrum>, 8, "hammer", true);
GraniteAnvil.addRecipe("steel_to_dust", <ore:dustCrucibleSteel>.firstItem, <ore:ingotCrucibleSteel>, 32, "hammer", true);
GraniteAnvil.addRecipe("viridium_to_dust", <ore:dustViridium>.firstItem, <ore:ingotViridium>, 12, "hammer", true);
GraniteAnvil.addRecipe("viridium_ore_to_dust", <ore:dustViridium>.firstItem, <ore:oreViridium>, 8, "hammer", true);
GraniteAnvil.addRecipe("viridium_raw_to_dust", <ore:dustViridium>.firstItem, <ore:rawOreViridium>, 8, "hammer", true);
GraniteAnvil.addRecipe("mythril_to_dust", <ore:dustMythril>.firstItem, <ore:ingotMythril>, 48, "hammer", true);
GraniteAnvil.addRecipe("mythril_ore_to_dust", <ore:dustMythril>.firstItem, <ore:oreMythril>, 16, "hammer", true);
GraniteAnvil.addRecipe("mythril_raw_to_dust", <ore:dustMythril>.firstItem, <ore:rawOreMythril>, 16, "hammer", true);
GraniteAnvil.addRecipe("sfs_to_dust", <ore:dustSoulforgedSteel>.firstItem, <ore:ingotSoulforgedSteel>, 64, "hammer", true);
GraniteAnvil.addRecipe("endorium_to_dust", <ore:dustEndorium>.firstItem, <ore:ingotEndorium>, 12, "hammer", true);
GraniteAnvil.addRecipe("ambrosium_to_dust", <ore:dustAmbrosium>.firstItem, <ore:gemAmbrosium>, 6, "hammer", true);
GraniteAnvil.addRecipe("ambrosium_ore_to_dust", <ore:dustAmbrosium>.firstItem, <ore:oreAmbrosium>, 4, "hammer", true);
GraniteAnvil.addRecipe("meteor_shard_to_dust", <nyx:meteor_dust>, <nyx:meteor_shard>, 24, "hammer", true);
GraniteAnvil.addRecipe("charcoal_pile_to_charcoal", <minecraft:coal:1>*6, <contenttweaker:charcoal_pile>, 4, "hammer", true);
GraniteAnvil.addRecipe("log_to_pulp", <pyrotech:material:25>*6, <ore:barkWood>, 32, "hammer", true);
GraniteAnvil.addRecipe("kenaf_to_pulp", <pyrotech:material:25>*4, <ore:cropKenaf>, 8, "hammer", true);
GraniteAnvil.addRecipe("crab_murder", <quark:crab_shell>*2, <harvestcraft:crabrawitem>, 1, "hammer", true);
GraniteAnvil.addRecipe("wither_skull_to_dust", <quark:black_ash>*3, <minecraft:skull:1>, 8, "hammer", true);
GraniteAnvil.addRecipe("smash_heart_1", <scalinghealth:crystalshard>*4, <bountifulbaubles:trinketbrokenheart>, 12, "hammer", true);
GraniteAnvil.addRecipe("smash_heart_2", <scalinghealth:crystalshard>*3, <bountifulbaubles:trinketshulkerheart>, 16, "hammer", true);
GraniteAnvil.addRecipe("smash_heart_3", <scalinghealth:crystalshard>*6, <iceandfire:fire_dragon_heart>, 32, "hammer", true);
GraniteAnvil.addRecipe("smash_heart_4", <scalinghealth:crystalshard>*6, <iceandfire:ice_dragon_heart>, 32, "hammer", true);
GraniteAnvil.addRecipe("sfs_plating", <betterwithmods:material:51>*16, <betterwithmods:steel_block>, 64, "hammer", true);
GraniteAnvil.addRecipe("refractorylump_fossil", <pyrotech:material:8>*3, <undergroundbiomes:fossil_piece:*>, 4, "hammer", true);
GraniteAnvil.addRecipe("refractorylump_ruby", <pyrotech:material:8>*4, <ore:gemRuby>, 64, "hammer", true);
GraniteAnvil.addRecipe("refractorylump_sapphire", <pyrotech:material:8>*4, <ore:gemSapphire>, 64, "hammer", true);
GraniteAnvil.addRecipe("refractorylump_quartz", <pyrotech:material:8>*1, <minecraft:quartz>, 16, "hammer", true);
GraniteAnvil.addRecipe("refractorylump_radiantquartz", <pyrotech:material:8>*2, <arcanearchives:raw_quartz>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_chalk", <pyrotech:material:8>*2, <undergroundbiomes:sedimentary_stone:1>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_quartzite", <pyrotech:material:8>*2, <undergroundbiomes:metamorphic_stone:3>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_marble", <pyrotech:material:8>*2, <undergroundbiomes:metamorphic_stone:2>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_dolomite", <pyrotech:material:8>*2, <undergroundbiomes:sedimentary_stone:5>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_limestone", <pyrotech:material:8>*3, <undergroundbiomes:sedimentary_stone:0>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_chalk_cobble", <pyrotech:material:8>*2, <contenttweaker:chalk_cobble>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_quartzite_cobble", <pyrotech:material:8>*2, <undergroundbiomes:metamorphic_cobble:3>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_marble_cobble", <pyrotech:material:8>*2, <undergroundbiomes:metamorphic_cobble:2>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_dolomite_cobble", <pyrotech:material:8>*2, <contenttweaker:dolomite_cobble>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_limestone_cobble", <pyrotech:material:8>*3, <contenttweaker:limestone_cobble>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("blaze_lantern_to_powder", <minecraft:blaze_powder>*3, <quark:blaze_lantern>, 16, "hammer", true);
GraniteAnvil.addRecipe("dwarven_measures", <minecraft:written_book>.withTag({pages: ["{\"text\":\"And so, the Fellowship lived happily ever after.\\nThe End\"}"], author: "Foreck", title: "Dwarven Measures"}), <extraalchemy:potion_ring>.withTag({Potion: "minecraft:invisibility"}), 1, "hammer", true);
GraniteAnvil.addRecipe("glass_shards", <quark:glass_shards:0>*4, <minecraft:glass>, 1, "hammer", true);

// Stained glass shards
for i in 0 to 16 {
	GraniteAnvil.addRecipe("stained_shards_"~i, <quark:glass_shards>.definition.makeStack(i+1)*4, <minecraft:stained_glass>.definition.makeStack(i), 1, "hammer", true);
}

//D-Heads
/* 
GraniteAnvil.addRecipe("DragonHead1", <mod_lavacow:sharptooth>*3, <iceandfire:dragon_skull:*>.withTag({Stage: 1}),3, "hammer", true);
GraniteAnvil.addRecipe("DragonHead2", <mod_lavacow:sharptooth>*7, <iceandfire:dragon_skull:*>.withTag({Stage: 2}),6, "hammer", true);
GraniteAnvil.addRecipe("DragonHead3", <mod_lavacow:sharptooth>*12, <iceandfire:dragon_skull:*>.withTag({Stage: 3}),9, "hammer", true);
GraniteAnvil.addRecipe("DragonHead4", <mod_lavacow:sharptooth>*17, <iceandfire:dragon_skull:*>.withTag({Stage: 4}),12, "hammer", true);
GraniteAnvil.addRecipe("DragonHead5", <mod_lavacow:sharptooth>*25, <iceandfire:dragon_skull:*>.withTag({Stage: 5}),15, "hammer", true);
 */
