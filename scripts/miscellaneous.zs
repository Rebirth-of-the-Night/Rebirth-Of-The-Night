import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

// PLEASE CHECK EXISTING FILES TO SEE IF WHAT YOU TYPE CAN GO IN THERE

// Leggings of Euphoria
val wovenCotten = <harvestcraft:wovencottonitem>;
recipes.addShapedMirrored("transsocks1", <owo:owolegsbw>, [
    [wovenCotten, <ore:dyeBlack>, wovenCotten], 
    [wovenCotten, null, wovenCotten]
]);
recipes.addShapedMirrored("transsocks2", <owo:owolegs>, [
    [wovenCotten, <ore:dyePink>, wovenCotten],
    [wovenCotten, <ore:dyeCyan>, wovenCotten]
]);

JEI.removeAndHide(<bountiful:bounty>);
JEI.removeAndHide(<customdisc:sussy>);
JEI.removeAndHide(<customdisc:alvae>);
JEI.removeAndHide(<customdisc:alpha>);
JEI.removeAndHide(<customdisc:aceltictale>);
JEI.removeAndHide(<customdisc:signal>);
