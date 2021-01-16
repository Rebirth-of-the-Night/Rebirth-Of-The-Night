import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDictEntry;

JEI.hide(<rotn_blocks:mushroom_lamp_1>);

recipes.addShapeless("moss_block", <rotn_blocks:cave_moss>, [<pyrotech:rock_grass>|<contenttweaker:moss_patch>,<pyrotech:rock_grass>|<contenttweaker:moss_patch>,<pyrotech:rock_grass>|<contenttweaker:moss_patch>,<pyrotech:rock_grass>|<contenttweaker:moss_patch>]);

recipes.addShaped("mushroom_lamp", <rotn_blocks:mushroom_lamp_0>*8, 
[[<minecraft:red_mushroom>,<minecraft:red_mushroom>,<minecraft:red_mushroom>],
[<minecraft:red_mushroom>, <minecraft:redstone_lamp>, <minecraft:red_mushroom>], 
[<minecraft:red_mushroom>,<minecraft:red_mushroom>,<minecraft:red_mushroom>]]);