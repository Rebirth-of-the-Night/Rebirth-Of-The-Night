import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

JEI.removeAndHide(<vials:vial_16>);
JEI.removeAndHide(<vials:vial_144>);
JEI.removeAndHide(<vials:vial_432>);
JEI.removeAndHide(<vials:vial_576>);

recipes.remove(<vials:vial_288>);
recipes.addShaped(<vials:vial_288>, [
    [null, <ore:paneGlass>, <ore:slimeball>],
    [<ore:paneGlass>, null, <ore:paneGlass>],
    [<ore:shardGlass>, <ore:paneGlass>, null]
]);
