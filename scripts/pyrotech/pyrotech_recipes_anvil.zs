import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;

GraniteAnvil.removeAllRecipes();
recipes.removeByRecipeName("betterwithmods:decompress/flint_decompress");

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
GraniteAnvil.addRecipe("break clay brick",<minecraft:brick>*4, <minecraft:brick_block>, 4,"hammer", true);
GraniteAnvil.addRecipe("break stone brick",<pyrotech:material:16>*4, <minecraft:stonebrick>, 4,"hammer", true);
GraniteAnvil.addRecipe("break nether brick",<minecraft:netherbrick>*4, <minecraft:nether_brick>, 4,"hammer", true);
GraniteAnvil.addRecipe("break mud brick",<biomesoplenty:mud_brick>*4, <biomesoplenty:mud_brick_block>, 4,"hammer", true);
GraniteAnvil.addRecipe("white stone recycling",<betterwithmods:material:39>, <betterwithaddons:whitebrick:2>,4,"hammer", true);
GraniteAnvil.addRecipe("prismarine to prismshard",<minecraft:prismarine_shard>*3, <minecraft:prismarine>, 18,"pickaxe", true);
GraniteAnvil.addRecipe("prism brick to prismshard to",<minecraft:prismarine_shard>*8, <minecraft:prismarine:1>, 18,"pickaxe", true);
GraniteAnvil.addRecipe("dwarven measures",<minecraft:written_book>.withTag({pages: ["{\"text\":\"And so, the Fellowship lived happily ever after.\\nThe End\"}"], author: "Foreck", title: "Dwarven Measures"}),<extraalchemy:potion_ring>.withTag({Potion: "minecraft:invisibility", Quality: {}}), 1,"hammer", true);
GraniteAnvil.addRecipe("flintblock to flint",<minecraft:flint>*4,<betterwithmods:aesthetic:5>, 8,"hammer", true);
GraniteAnvil.addRecipe("ambrosium to magic dust", <dungeontactics:magic_powder>*3, <aether_legacy:ambrosium_block>, 16,"hammer", true);
GraniteAnvil.addRecipe("raw endorium", <endreborn:item_raw_endorium>, <ore:enderpearl>, 16, "hammer", true);
GraniteAnvil.addRecipe("lormyte crystal", <endreborn:item_lormyte_crystal>*2, <endreborn:block_lormyte_crystal>, 8, "hammer", true);
GraniteAnvil.addRecipe("obsidian dust", <endreborn:catalyst>*2, <endreborn:item_shard_obsidian>, 16, "hammer", true);
GraniteAnvil.addRecipe("obsidian shard", <endreborn:item_shard_obsidian>, <minecraft:obsidian>, 64, "pickaxe", true);
GraniteAnvil.addRecipe("cobblestone any cobblestone", <minecraft:cobblestone>, <ore:cobblestone>, 1, "hammer", true);
GraniteAnvil.addRecipe("copper_tin_to_pebbles", <contenttweaker:copper_tin_pebbles>*4, <contenttweaker:copper_tin_mixture>, 8, "hammer", true);
GraniteAnvil.addRecipe("silver_gold_ambrosium_to_pebbles", <contenttweaker:silver_gold_pebbles>*8, <contenttweaker:silver_gold_mixture>, 6, "hammer", true);
GraniteAnvil.addRecipe("charcoal pile to charcoal", <minecraft:coal:1>*6, <contenttweaker:charcoal_pile>, 4,"hammer", true);
GraniteAnvil.addRecipe("log_to_pulp",<pyrotech:material:25>*6, <ore:barkWood>, 32,"hammer", true);
GraniteAnvil.addRecipe("kenaf_to_pulp",<pyrotech:material:25>*4, <ore:cropKenaf>, 8, "hammer", true);
GraniteAnvil.addRecipe("crab murder",<quark:crab_shell>*2, <harvestcraft:crabrawitem>, 1,"hammer", true);
GraniteAnvil.addRecipe("wither skull to dust",<quark:black_ash>*3, <minecraft:skull:1>, 8,"hammer", true);
GraniteAnvil.addRecipe("smash heart 1",<scalinghealth:crystalshard>*4, <bountifulbaubles:trinketbrokenheart>, 12,"hammer", true);
GraniteAnvil.addRecipe("smash heart 2",<scalinghealth:crystalshard>*3, <bountifulbaubles:trinketshulkerheart>, 16,"hammer", true);
GraniteAnvil.addRecipe("smash heart 3",<scalinghealth:crystalshard>*6, <iceandfire:fire_dragon_heart>, 32,"hammer", true);
GraniteAnvil.addRecipe("smash heart 4",<scalinghealth:crystalshard>*6, <iceandfire:ice_dragon_heart>, 32,"hammer", true);
GraniteAnvil.addRecipe("smash heart 5",<scalinghealth:crystalshard>*1, <quark:diamond_heart>, 64,"hammer", true);
GraniteAnvil.addRecipe("halite to salt",<animania:salt>*3, <contenttweaker:halite>,6,"pickaxe", true);
GraniteAnvil.addRecipe("star to magic dust",<dungeontactics:magic_powder>*5, <nyx:fallen_star>, 48,"hammer", true);
GraniteAnvil.addRecipe("sfs_plating",<betterwithmods:material:51>*9, <betterwithmods:steel_block>, 64,"hammer", true);
GraniteAnvil.addRecipe("refractorylump_fossil",<pyrotech:material:35>*2, <undergroundbiomes:fossil_piece:*>, 4,"hammer", true);
GraniteAnvil.addRecipe("refractorylump_ruby",<pyrotech:material:35>*2, <biomesoplenty:gem:1>, 64,"hammer", true);
GraniteAnvil.addRecipe("refractorylump_sapphire",<pyrotech:material:35>*2, <biomesoplenty:gem:6>, 64,"hammer", true);
GraniteAnvil.addRecipe("refractorylump_quartz",<pyrotech:material:35>*1, <minecraft:quartz>, 16,"hammer", true);
GraniteAnvil.addRecipe("refractorylump_radiantquartz",<pyrotech:material:35>*2, <arcanearchives:raw_quartz>, 8,"pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_chalk",<pyrotech:material:35>*2, <undergroundbiomes:sedimentary_stone:1>, 8,"pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_quartzite",<pyrotech:material:35>*2, <undergroundbiomes:metamorphic_stone:3>, 8,"pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_marble",<pyrotech:material:35>*2, <undergroundbiomes:metamorphic_stone:2>, 8,"pickaxe", true);
GraniteAnvil.addRecipe("refractorylump_dolomite",<pyrotech:material:35>*2, <undergroundbiomes:sedimentary_stone:5>, 8,"pickaxe", true);
GraniteAnvil.addRecipe("limerock_lime",<pyrotech:rock:8>*3, <undergroundbiomes:sedimentary_stone>, 8,"pickaxe", true);

//D-Heads
/* 
GraniteAnvil.addRecipe("DragonHead1",<mod_lavacow:sharptooth>*3, <iceandfire:dragon_skull:*>.withTag({Stage: 1}),3,"hammer", true);
GraniteAnvil.addRecipe("DragonHead2",<mod_lavacow:sharptooth>*7, <iceandfire:dragon_skull:*>.withTag({Stage: 2}),6,"hammer", true);
GraniteAnvil.addRecipe("DragonHead3",<mod_lavacow:sharptooth>*12, <iceandfire:dragon_skull:*>.withTag({Stage: 3}),9,"hammer", true);
GraniteAnvil.addRecipe("DragonHead4",<mod_lavacow:sharptooth>*17, <iceandfire:dragon_skull:*>.withTag({Stage: 4}),12,"hammer", true);
GraniteAnvil.addRecipe("DragonHead5",<mod_lavacow:sharptooth>*25, <iceandfire:dragon_skull:*>.withTag({Stage: 5}),15,"hammer", true);
 */
