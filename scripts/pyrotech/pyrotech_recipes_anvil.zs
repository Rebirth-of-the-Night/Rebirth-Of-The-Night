import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.GraniteAnvil;

GraniteAnvil.removeAllRecipes();
recipes.removeByRecipeName("betterwithmods:decompress/flint_decompress");

//recipes
GraniteAnvil.addRecipe("break clay brick",<minecraft:brick>*4, <minecraft:brick_block>, 4,"hammer");
GraniteAnvil.addRecipe("break stone brick",<pyrotech:material:16>*4, <minecraft:stonebrick>, 4,"hammer");
GraniteAnvil.addRecipe("break nether brick",<minecraft:netherbrick>*4, <minecraft:nether_brick>, 4,"hammer");
GraniteAnvil.addRecipe("break mud brick",<biomesoplenty:mud_brick>*4, <biomesoplenty:mud_brick_block>, 4,"hammer");
//GraniteAnvil.addRecipe("white stone recycling",<betterwithmods:material:39>, <betterwithaddons:whitebrick:2>,4,"hammer");
GraniteAnvil.addRecipe("prismarine to prismshard",<minecraft:prismarine_shard>*3, <minecraft:prismarine>, 12,"pickaxe");
GraniteAnvil.addRecipe("prism brick to prismshard to",<minecraft:prismarine_shard>*8, <minecraft:prismarine:1>, 12,"pickaxe");
GraniteAnvil.addRecipe("dwarven measures",<minecraft:written_book>.withTag({pages: ["{\"text\":\"And so, the Fellowship lived happily ever after.\\nThe End\"}"], author: "Foreck", title: "Dwarven Measures"}),<extraalchemy:potion_ring>.withTag({Potion: "minecraft:invisibility", Quality: {}}), 1,"hammer");
GraniteAnvil.addRecipe("flintblock to flint",<minecraft:flint>*4,<betterwithmods:aesthetic:5>, 8,"hammer");
GraniteAnvil.addRecipe("ambrosium to magic dust", <dungeontactics:magic_powder>*3, <aether_legacy:ambrosium_block>, 12,"hammer");
GraniteAnvil.addRecipe("raw endorium", <endreborn:item_raw_endorium>, <ore:enderpearl>, 12, "hammer");
GraniteAnvil.addRecipe("lormyte crystal", <endreborn:item_lormyte_crystal>*2, <endreborn:block_lormyte_crystal>, 2, "hammer");
GraniteAnvil.addRecipe("obsidian dust", <endreborn:catalyst>*2, <endreborn:item_shard_obsidian>, 16, "hammer");
GraniteAnvil.addRecipe("obsidian shard", <endreborn:item_shard_obsidian>, <minecraft:obsidian>, 32, "pickaxe");
GraniteAnvil.addRecipe("cobblestone any cobblestone", <minecraft:cobblestone>, <ore:cobblestone>, 8, "hammer");
GraniteAnvil.addRecipe("copper_tin_to_pebbles", <contenttweaker:copper_tin_pebbles>*4, <contenttweaker:copper_tin_mixture>, 8, "hammer");
GraniteAnvil.addRecipe("silver_gold_ambrosium_to_pebbles", <contenttweaker:silver_gold_pebbles>*4, <contenttweaker:silver_gold_mixture>, 6, "hammer");
GraniteAnvil.addRecipe("charcoal pile to charcoal", <minecraft:coal:1>*6, <contenttweaker:charcoal_pile>, 2,"hammer");
GraniteAnvil.addRecipe("log to sawdust",<betterwithmods:material:22>*12, <ore:logWood>, 32,"hammer");
GraniteAnvil.addRecipe("crab murder",<quark:crab_shell>*2, <harvestcraft:crabrawitem>, 1,"hammer");
GraniteAnvil.addRecipe("wither skull to dust",<quark:black_ash>*3, <minecraft:skull:1>,4,"hammer");
GraniteAnvil.addRecipe("smash heart 1",<scalinghealth:crystalshard>*4, <bountifulbaubles:trinketbrokenheart>,4,"hammer");
GraniteAnvil.addRecipe("smash heart 2",<scalinghealth:crystalshard>*3, <bountifulbaubles:trinketshulkerheart>,8,"hammer");
GraniteAnvil.addRecipe("smash heart 3",<scalinghealth:crystalshard>*6, <iceandfire:fire_dragon_heart>,16,"hammer");
GraniteAnvil.addRecipe("smash heart 4",<scalinghealth:crystalshard>*6, <iceandfire:ice_dragon_heart>,16,"hammer");
GraniteAnvil.addRecipe("smash heart 5",<scalinghealth:crystalshard>*1, <quark:diamond_heart>,16,"hammer");
GraniteAnvil.addRecipe("halite to salt",<animania:salt>*3, <contenttweaker:halite>,6,"pickaxe");




































mods.jei.JEI.hide(<minecraft:written_book>.withTag({title: "Dwarven measures"}));
