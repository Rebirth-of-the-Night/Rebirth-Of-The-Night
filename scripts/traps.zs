import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


mods.jei.JEI.removeAndHide(<minetraps:mud>);
mods.jei.JEI.removeAndHide(<minetraps:quicksand>);
mods.jei.JEI.removeAndHide(<minetraps:obstacle>);
mods.jei.JEI.removeAndHide(<minetraps:fall_trap>);

recipes.remove(<minetraps:nails>);


recipes.addShaped("Nails", <minetraps:nails>,[
  [null, null, null],
    [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
    [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]
]);