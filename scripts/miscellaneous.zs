import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

// PLEASE CHECK EXISTING FILES TO SEE IF WHAT YOU TYPE CAN GO IN THERE

// Leggings of Euphoria
/*val wovenCotten = <harvestcraft:wovencottonitem>;
recipes.addShapedMirrored("transsocks1", <owo:owolegsbw>, [
    [wovenCotten, <ore:dyeBlack>, wovenCotten], 
    [wovenCotten, null, wovenCotten]
]);
recipes.addShapedMirrored("transsocks2", <owo:owolegs>, [
    [wovenCotten, <ore:dyePink>, wovenCotten],
    [wovenCotten, <ore:dyeCyan>, wovenCotten]
]);*/

val leather_sheets = <betterwithmods:material:31>;
val durable_fabric = <betterwithmods:material:4>;
val durable_fiber = <ore:durableFiber>;

// Tapestry
recipes.addShapedMirrored("red_tapestry", <contenttweaker:tapestry_red>*4, [
    [null, <ore:woolRed>, null],
	[<ore:woolRed>, null, <ore:woolRed>],
    [null, <ore:woolRed>, null]
]);
recipes.addShapedMirrored("green_tapestry", <contenttweaker:tapestry_green>*4, [
    [null, <ore:woolGreen>, null],
	[<ore:woolGreen>, null, <ore:woolGreen>],
    [null, <ore:woolGreen>, null]
]);
recipes.addShapedMirrored("purple_tapestry", <contenttweaker:tapestry_purple>*4, [
    [null, <ore:woolPurple>, null],
	[<ore:woolPurple>, null, <ore:woolPurple>],
    [null, <ore:woolPurple>, null]
]);
recipes.addShapedMirrored("cyan_tapestry", <contenttweaker:tapestry_cyan>*4, [
    [null, <ore:woolCyan>, null],
	[<ore:woolCyan>, null, <ore:woolCyan>],
    [null, <ore:woolCyan>, null]
]);
recipes.addShapedMirrored("white_tapestry", <contenttweaker:tapestry_white>*4, [
    [null, <ore:woolWhite>, null],
	[<ore:woolWhite>, null, <ore:woolWhite>],
    [null, <ore:woolWhite>, null]
]);
recipes.addShapedMirrored("orange_tapestry", <contenttweaker:tapestry_orange>*4, [
    [null, <ore:woolOrange>, null],
	[<ore:woolOrange>, null, <ore:woolOrange>],
    [null, <ore:woolOrange>, null]
]);
recipes.addShapedMirrored("blue_tapestry", <contenttweaker:tapestry_blue>*4, [
    [null, <ore:woolBlue>, null],
	[<ore:woolBlue>, null, <ore:woolBlue>],
    [null, <ore:woolBlue>, null]
]);
recipes.addShapedMirrored("black_tapestry", <contenttweaker:tapestry_black>*4, [
    [null, <ore:woolBlack>, null],
	[<ore:woolBlack>, null, <ore:woolBlack>],
    [null, <ore:woolBlack>, null]
]);

// Other CoT
recipes.addShaped("star_block", <contenttweaker:star_block>, [
    [<nyx:fallen_star>, <nyx:fallen_star>, <nyx:fallen_star>],
	[<nyx:fallen_star>, <nyx:fallen_star>, <nyx:fallen_star>],
    [<nyx:fallen_star>, <nyx:fallen_star>, <nyx:fallen_star>]
]);
recipes.addShapeless("star_block_to_star", <nyx:fallen_star>*9,
   	[<contenttweaker:star_block>]);

recipes.addShaped("emblem-stone_red", <contenttweaker:emblem_stone_red>*8, [ 
    [<minecraft:concrete:14>, <minecraft:concrete:14>, <minecraft:concrete:14>],
	[<minecraft:concrete:14>, <minecraft:gold_nugget>, <minecraft:concrete:14>],
    [<minecraft:concrete:14>, <minecraft:concrete:14>, <minecraft:concrete:14>]
]);

recipes.addShaped("mystic_cincinnasite_lamp", <contenttweaker:mystic_cincinnasite_lamp>, [ 
    [<ore:nuggetIron>, null, <ore:nuggetIron>],
	[null, <betternether:cincinnasite_lantern>, null],
    [<ore:nuggetIron>, null, <ore:nuggetIron>]
]);
/*recipes.addShaped("ferrought_cincinnasite_lamp", <contenttweaker:ferrought_cincinnasite_lamp>, [ 
    [<ore:nuggetFerrought>, null, <ore:nuggetFerrought>],
	[null, <betternether:cincinnasite_lantern>, null],
    [<ore:nuggetFerrought>, null, <ore:nuggetFerrought>]
]);*/

recipes.addShaped("coba_star", <contenttweaker:coba_star>, [ 
    [null, <iceandfire:frost_lily>, null],
	[<iceandfire:frost_lily>, <nyx:fallen_star>, <iceandfire:frost_lily>],
    [null, <iceandfire:frost_lily>, null]
]);
recipes.addShaped("coba_star2", <contenttweaker:coba_star>, [ 
    [null, <netherex:frost_rod>, null],
	[<netherex:frost_rod>, <nyx:fallen_star>, <netherex:frost_rod>],
    [null, <netherex:frost_rod>, null]
]);

// well
recipes.remove(<well:well>);
recipes.addShaped("water_well", <well:well>,[
	[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>], 
    [<contenttweaker:masonry_brick>, <betterwithmods:bucket>, <contenttweaker:masonry_brick>],
    [<contenttweaker:masonry_brick>, <betterwithmods:screw_pump>, <contenttweaker:masonry_brick>]
]);

// Bundle pouch
recipes.remove(<bundles:bundle>);
recipes.addShaped("bundle_pouch", <bundles:bundle>,
    [[null,durable_fiber,null],
    [leather_sheets,durable_fabric,leather_sheets],
    [null,leather_sheets,null]]);

// assorted hiding

# minecraft
JEI.removeAndHide(<minecraft:enchanted_book>);

# serene seasons
JEI.removeAndHide(<sereneseasons:season_sensor_summer>);
JEI.removeAndHide(<sereneseasons:season_sensor_autumn>);
JEI.removeAndHide(<sereneseasons:season_sensor_winter>);
JEI.removeAndHide(<sereneseasons:ss_icon>);
JEI.removeAndHide(<serenetweaks:blockbranches>);

# custom disc
JEI.removeAndHide(<bountiful:bounty>);
JEI.removeAndHide(<customdisc:sussy>);
JEI.removeAndHide(<customdisc:alvae>);
JEI.removeAndHide(<customdisc:alpha>);
JEI.removeAndHide(<customdisc:aceltictale>);