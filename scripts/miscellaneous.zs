import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
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