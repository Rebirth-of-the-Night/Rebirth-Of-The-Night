import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<craftingcraft:portable_crafting_table:1>);
recipes.removeByMod("craftingcraft");

val clay = <minecraft:clay_ball>;
val cob = <earthworks:block_cob>;
val cob_item = <earthworks:item_cob>;
val log = <ore:logWood>;
val rammed = <earthworks:block_rammed_earth>;
val sandPile = <ore:pileSand>;
val timber = <earthworks:item_timber>;
val wattle = <earthworks:block_wattle>;
val wicker = <betterwithmods:aesthetic:12>;
val wicker_slab = <earthworks:itemslab_wicker>;
val wicker_stair = <earthworks:stair_wicker>;
val wicker_wall = <earthworks:wall_wicker>;
val mud = <biomesoplenty:mudball>;
val multilime = <pyrotech:material:8>;
val binder = <ore:materialBinding>;
val twine = <ore:twine>;

// Replace wicker with BWM's
recipes.remove(<earthworks:block_wicker>);

recipes.remove(wicker_slab);
recipes.addShaped("wicker_slab",wicker_slab*6,[
    [wicker,wicker,wicker]
]);
recipes.addShapeless("wicker_block_a",wicker,[wicker_slab, wicker_slab]);

recipes.remove(wicker_stair);
recipes.addShapedMirrored("wicker_stair",wicker_stair*8,[
    [wicker,null,null],
    [wicker,wicker,null],
    [wicker,wicker,wicker]
]);
recipes.addShapedMirrored("wicker_stair_alt",wicker_stair*4,[
    [wicker_slab,null,null],
    [wicker_slab,wicker_slab,null],
    [wicker_slab,wicker_slab,wicker_slab]
]);
recipes.addShapeless("wicker_block_b",wicker*3,[wicker_stair, wicker_stair, wicker_stair, wicker_stair]);

recipes.remove(<earthworks:wall_wicker>);
recipes.addShaped("wicker_wall",wicker_wall*6,[
    [wicker,wicker,wicker],
	[wicker,wicker,wicker]
]);

recipes.removeByRecipeName("earthworks:block_wattle");
recipes.removeByRecipeName("earthworks:block_wattle_alt");
recipes.addShaped("wattle",wattle*8,[
    [cob,cob,cob],
	[cob,wicker,cob],
	[cob,cob,cob]
]);
recipes.addShaped("wattle_alt",wattle*2,[
    [cob_item,cob_item,cob_item],
	[cob_item,wicker,cob_item],
	[cob_item,cob_item,cob_item]
]);

// Timber
recipes.remove(timber);
recipes.addShapedMirrored("timber",timber*12,[
    [null,null,log],
    [null,log,null],
    [log,null,null]
]);

// Rammed Earth
recipes.remove(rammed);
// Gets rammed using compactor in pyrotech_recipes_other.zs

// Rich Slag acts as both quicklime and slaked lime
// lime plaster
recipes.remove(<earthworks:item_lime_plaster>);
JEI.removeAndHide(<earthworks:item_slaked_lime>);
JEI.removeAndHide(<earthworks:item_quicklime>);
recipes.addShapeless("lime_plaster",<earthworks:item_lime_plaster>*4,[multilime, sandPile]);
recipes.addShapeless("lime_plaster_binder",<earthworks:item_lime_plaster>*10,[multilime, multilime, multilime, multilime, twine, sandPile, sandPile, sandPile, sandPile]);

// adove
recipes.remove(<earthworks:item_adobe>);
recipes.remove(<earthworks:block_adobe>);

// cob ball
JEI.removeAndHide(<earthworks:item_mud>);
JEI.removeAndHide(<earthworks:wall_mud>);
JEI.removeAndHide(<earthworks:stair_mud>);
JEI.removeAndHide(<earthworks:itemslab_mud>);
JEI.removeAndHide(<earthworks:block_mud>);
recipes.removeByRecipeName("earthworks:block_cob_alt_alt");
recipes.remove(<earthworks:item_cob>);
recipes.addShapeless("cob_ball",<earthworks:item_cob>*8,[clay, clay, clay, clay, binder, mud, mud, mud, mud]);

// chalk: remove because ubc
JEI.removeAndHide(<earthworks:item_chalk>);
JEI.removeAndHide(<earthworks:block_chalk>);
JEI.removeAndHide(<earthworks:itemslab_chalk>);
JEI.removeAndHide(<earthworks:stair_chalk>);
JEI.removeAndHide(<earthworks:wall_chalk>);

// dry fitted stone
recipes.remove(<earthworks:block_dry_stone>);
recipes.addShaped("dry_fit_stone",<earthworks:block_dry_stone>,[
    [<ore:rock>,<ore:rock>,<ore:rock>],
	[<ore:rock>,<ore:rock>,<ore:rock>],
	[<ore:rock>,<ore:rock>,<ore:rock>]
]);