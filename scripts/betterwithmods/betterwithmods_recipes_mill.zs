import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Magic Powder
mods.betterwithmods.Mill.builder()
.buildRecipe([<bountifulbaubles:spectralsilt>], [<dungeontactics:magic_powder>*2])
.setPriority(4)
.setGrindType("minecraft:entity.experience_orb.pickup")
.build();
