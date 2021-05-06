import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.betterwithmods.Mill;

Mill.remove([<minecraft:gold_ingot>]);
Mill.remove([<minecraft:gold_nugget>*6]);
Mill.remove([<minecraft:gold_nugget>*3]);
Mill.remove([<minecraft:gold_ingot>,<minecraft:gold_nugget>*3]);
Mill.remove([<minecraft:gold_ingot>,<minecraft:gold_nugget>*6]);
Mill.remove([<minecraft:gold_ingot>*2,<minecraft:gold_nugget>*3]);
Mill.remove([<minecraft:gold_ingot>*2,<minecraft:gold_nugget>*6]);
Mill.remove([<betterwithmods:material:44>]);

// Cattail Flour
Mill.addRecipe([<biomesoplenty:plant_1:4>],[<betterwithmods:raw_pastry:3>]);
// Coke Powder
Mill.addRecipe([<pyrotech:material:1>],[<pyrotech:material:32>]);
//Soul Powder
Mill.addRecipe([<minecraft:soul_sand>],[<quark:soul_powder>*2]);

//Myrmex Resin
//Desert Myrmex
Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin:0>], [<iceandfire:myrmex_desert_resin>*2])
.setPriority(6)
.setGrindType("fairylights:cord.stretch")
.build();

Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin_sticky:0>], [<iceandfire:myrmex_desert_resin>*3])
.setPriority(8)
.setGrindType("fairylights:cord.stretch")
.build();

//Jungle Myrmex
Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin:1>], [<iceandfire:myrmex_jungle_resin>*2])
.setPriority(6)
.setGrindType("fairylights:cord.stretch")
.build();

Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin_sticky:1>], [<iceandfire:myrmex_jungle_resin>*3])
.setPriority(8)
.setGrindType("fairylights:cord.stretch")
.build();

// Mushroom powder
Mill.builder()
.buildRecipe([<biomesoplenty:mushroom>], [<biomesoplenty:shroompowder>*3])
.setPriority(3)
.setGrindType("quark:entity.stoneling.purr")
.build();

// QoL guaranteed 4x Glowstone
Mill.builder()
.buildRecipe([<minecraft:glowstone>], [<minecraft:glowstone_dust>*4])
.setPriority(3)
.build();

// nether sugar
Mill.builder()
.buildRecipe([<betternether:nether_reed>], [<minecraft:sugar>*2])
.setPriority(7)
.build();

// Rotten Flesh Refinement
Mill.builder()
.buildRecipe([<minecraft:rotten_flesh>], [<contenttweaker:monster_hide>*2])
.setPriority(3)
.setGrindType("fairylights:cord.stretch")
.build();

// Extra bonemeal from fossils
Mill.builder()
.buildRecipe([<undergroundbiomes:fossil_piece:*>], [<minecraft:dye:15>*6])
.setPriority(3)
.build();

// QoL return of honeycombs
Mill.builder()
.buildRecipe([<futuremc:honeycomb_block>], [<rustic:honeycomb>*4])
.setPriority(3)
.build();

// QoL return of sugar block
Mill.builder()
.buildRecipe([<quark:sugar_block>], [<minecraft:sugar>*9])
.setPriority(3)
.build();
