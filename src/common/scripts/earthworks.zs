import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<craftingcraft:portable_crafting_table:1>);
recipes.removeByMod("craftingcraft");

val cob = <earthworks:block_cob>;
val cob_item = <earthworks:item_cob>;
val log = <ore:logWood>;
val rammed = <earthworks:block_rammed_earth>;
val timber = <earthworks:item_timber>;
val wattle = <earthworks:block_wattle>;
val wicker = <betterwithmods:aesthetic:12>;
val wicker_slab = <earthworks:itemslab_wicker>;
val wicker_stair = <earthworks:stair_wicker>;
val wicker_wall = <earthworks:wall_wicker>;

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
    [null,null,wicker],
    [null,wicker,null],
    [wicker,null,null]
]);

// Rammed Earth
recipes.remove(rammed);
//Gets rammed using compactor in pyrotech_recipes_other.zs

