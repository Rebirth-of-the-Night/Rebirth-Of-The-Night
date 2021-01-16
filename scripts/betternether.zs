import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<betternether:netherrack_furnace>);
JEI.removeAndHide(<betternether:block_eyeball_small>);
JEI.removeAndHide(<betternether:block_eyeball>);
JEI.removeAndHide(<betternether:eye_seed>);
<ore:eyeball>.remove(<betternether:eye_seed>);
JEI.removeAndHide(<betternether:bone_mushroom>);
JEI.removeAndHide(<betternether:wart_seed>);
JEI.removeAndHide(<betternether:egg_plant>);

furnace.setFuel(<betternether:wart_seed>, 0);
furnace.setFuel(<betternether:block_eyeball>, 0);
furnace.setFuel(<betternether:block_eyeball_small>, 0);

recipes.removeByRecipeName("betternether:stalagnate_workbench");
recipes.removeByRecipeName("betternether:stalagnate_stick");
recipes.removeByRecipeName("betternether:stalagnate_planks_trapdoor");
recipes.removeByRecipeName("betternether:stalagnate_planks_chest");
recipes.removeByRecipeName("betternether:paper");

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

recipes.remove(<betternether:cincinnasite_fire_bowl>);
recipes.addShaped("cincinnasite_fire_bowl",<betternether:cincinnasite_fire_bowl>,[
    [<betternether:cincinnasite_forged>,<ore:netherrack>,<betternether:cincinnasite_forged>],
    [null,<betternether:cincinnasite_forged>,null]
]);

brewing.addBrew(<minecraft:glass_bottle>, <betternether:nether_reed>, <harvestcraft:maplesyrupitem>);