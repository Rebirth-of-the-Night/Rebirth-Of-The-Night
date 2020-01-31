import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


mods.jei.JEI.removeAndHide(<minetraps:mud>);
mods.jei.JEI.removeAndHide(<minetraps:quicksand>);
mods.jei.JEI.removeAndHide(<minetraps:obstacle>);
mods.jei.JEI.removeAndHide(<minetraps:fall_trap>);

recipes.remove(<minetraps:nails>);

var tinnugget = <contenttweaker:material_part:6>;

recipes.addShaped("Nails", <minetraps:nails>,[
  [null, null, null],
    [tinnugget, tinnugget, tinnugget],
    [tinnugget, tinnugget, tinnugget]
]);

var silvernugget = <dungeontactics:silver_nugget>;

recipes.addShaped("Nails 2", <minetraps:nails>,[
  [null, null, null],
    [silvernugget, silvernugget, silvernugget],
    [silvernugget, silvernugget, silvernugget]
]);

var ironnugget = <minecraft:iron_nugget>;

recipes.addShaped("Nails 3", <minetraps:nails>,[
  [null, null, null],
    [ironnugget, ironnugget, ironnugget],
    [ironnugget, ironnugget, ironnugget]
]);
