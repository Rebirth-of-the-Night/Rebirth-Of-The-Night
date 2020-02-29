import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Magic Powder
mods.betterwithmods.Mill.builder()
.buildRecipe([<bountifulbaubles:spectralsilt>], [<dungeontactics:magic_powder>*2])
.setPriority(4)
.setGrindType("minecraft:entity.experience_orb.pickup")
.build();

//Magic Powder

//Myrmex Resin
//Desert Myrmex
mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin:0>], [<iceandfire:myrmex_desert_resin>*2])
.setPriority(6)
.setGrindType("minecraft:entity.experience_orb.pickup")
.build();

mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin_sticky:0>], [<iceandfire:myrmex_desert_resin>*3])
.setPriority(8)
.setGrindType("minecraft:entity.experience_orb.pickup")
.build();

//Jungle Myrmex
mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin:1>], [<iceandfire:myrmex_jungle_resin>*2])
.setPriority(6)
.setGrindType("minecraft:entity.experience_orb.pickup")
.build();

mods.betterwithmods.Mill.builder()
.buildRecipe([<iceandfire:myrmex_resin_sticky:1>], [<iceandfire:myrmex_jungle_resin>*3])
.setPriority(8)
.setGrindType("minecraft:entity.experience_orb.pickup")
.build();