import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Magic Powder
mods.betterwithmods.Mill.builder()
.buildRecipe([<bountifulbaubles:spectralsilt>], [<dungeontactics:magic_powder>*2])
.setPriority(4)
.setGrindType("disenchanter:block.disenchantment_table.use")
.build();

mods.betterwithmods.Mill.builder()
.buildRecipe([<nyx:fallen_star>], [<bountifulbaubles:spectralsilt>*1])
.setPriority(20)
.setGrindType("iceandfire:mermaid_idle")
.build();

//Myrmex Resin
//Desert Myrmex
mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin:0>], [<iceandfire:myrmex_desert_resin>*2])
.setPriority(6)
.setGrindType("fairylights:cord.stretch")
.build();

mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin_sticky:0>], [<iceandfire:myrmex_desert_resin>*3])
.setPriority(8)
.setGrindType("fairylights:cord.stretch")
.build();

//Jungle Myrmex
mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin:1>], [<iceandfire:myrmex_jungle_resin>*2])
.setPriority(6)
.setGrindType("fairylights:cord.stretch")
.build();

mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin_sticky:1>], [<iceandfire:myrmex_jungle_resin>*3])
.setPriority(8)
.setGrindType("fairylights:cord.stretch")
.build();

// nether sugar
mods.betterwithmods.Mill.builder()
.buildRecipe([<betternether:nether_reed>], [<minecraft:sugar>*2])
.setPriority(7)
.build();

mods.betterwithmods.Mill.remove([<minecraft:gold_ingot>]);
mods.betterwithmods.Mill.remove([<minecraft:gold_nugget>*6]);
mods.betterwithmods.Mill.remove([<minecraft:gold_nugget>*3]);
mods.betterwithmods.Mill.remove([<minecraft:gold_ingot>,<minecraft:gold_nugget>*3]);
mods.betterwithmods.Mill.remove([<minecraft:gold_ingot>,<minecraft:gold_nugget>*6]);
mods.betterwithmods.Mill.remove([<minecraft:gold_ingot>*2,<minecraft:gold_nugget>*3]);
mods.betterwithmods.Mill.remove([<minecraft:gold_ingot>*2,<minecraft:gold_nugget>*6]);
mods.betterwithmods.Mill.remove([<betterwithmods:material:44>]);