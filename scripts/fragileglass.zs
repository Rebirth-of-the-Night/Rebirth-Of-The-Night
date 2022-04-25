import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<fragileglassft:thinice>);
JEI.removeAndHide(<fragileglassft:sugarblock>);
<ore:blockSugar>.remove(<fragileglassft:sugarblock>);
JEI.removeAndHide(<fragileglassft:sugarcauldron>);
JEI.removeAndHide(<fragileglassft:weakstone>);

var glass = <ore:blockGlass>;
var weakness = <minecraft:potion>.withTag({Potion: "minecraft:weakness"});

recipes.addShaped("fragile_glass", <fragileglassft:fragileglass> * 8, [
    [glass, glass, glass],
    [glass, weakness, glass],
    [glass, glass, glass]
]);
