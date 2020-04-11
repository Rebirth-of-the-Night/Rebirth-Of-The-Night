import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByRecipeName("betternether:stalagnate_workbench");
recipes.removeByRecipeName("betternether:stalagnate_stick");
recipes.removeByRecipeName("betternether:stalagnate_planks_trapdoor");
recipes.removeByRecipeName("betternether:stalagnate_planks_chest");

recipes.remove(<betternether:stalagnate_bowl_mushroom>);
recipes.addShapeless("betternether_stalagnate_bowl_mushroom", <betternether:stalagnate_bowl_mushroom>, 
[<ore:mushroomAny>, <ore:mushroomAny>, <betternether:stalagnate_bowl>]);

recipes.addShaped("cincinnasite_frame", <betternether:cincinnasite_frame>*4, [
    [<betternether:cincinnasite_forged>, null, <betternether:cincinnasite_forged>],
    [null,null,null],
    [<betternether:cincinnasite_forged>, null, <betternether:cincinnasite_forged>]
]);

recipes.remove(<betternether:quartz_glass_framed>);
recipes.addShaped("framed_quartz_glass", <betternether:quartz_glass_framed>*8, [
    [<betternether:cincinnasite_forged>, <betternether:quartz_glass>, <betternether:cincinnasite_forged>],
    [<betternether:quartz_glass>,null,<betternether:quartz_glass>],
    [<betternether:cincinnasite_forged>, <betternether:quartz_glass>, <betternether:cincinnasite_forged>]
]);

recipes.addShaped("small_nether_brick_tile_slab", <betternether:nether_brick_tile_slab_half:0>*6,[
    [<betternether:nether_brick_tile_small>,<betternether:nether_brick_tile_small>,<betternether:nether_brick_tile_small>]
]);

recipes.addShaped("small_nether_brick_tile", <betternether:nether_brick_tile_small>,[
    [<betternether:nether_brick_tile_slab_half>],
    [<betternether:nether_brick_tile_slab_half>]
]);

recipes.addShapedMirrored("small_nether_brick_tile_stairs", <betternether:nether_brick_tile_stairs>*4,[
    [<betternether:nether_brick_tile_slab_half:0>,null,null],
    [<betternether:nether_brick_tile_slab_half:0>,<betternether:nether_brick_tile_slab_half:0>,null],
    [<betternether:nether_brick_tile_slab_half:0>,<betternether:nether_brick_tile_slab_half:0>,<betternether:nether_brick_tile_slab_half:0>]
]);

brewing.addBrew(<minecraft:glass_bottle>, <betternether:nether_reed>, <harvestcraft:maplesyrupitem>);