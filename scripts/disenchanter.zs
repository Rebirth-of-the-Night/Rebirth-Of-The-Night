import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

recipes.remove(<disenchanter:disenchantmenttable>);


recipes.addShaped("Disenchantment Table", <disenchanter:disenchantmenttable>,[
  [<minecraft:emerald>, <contenttweaker:disint_rune>, <minecraft:emerald>],
    [<ore:dyeYellow>, <minecraft:enchanting_table>, <ore:dyeYellow>],
    [<minecraft:emerald>, <contenttweaker:disint_rune>, <minecraft:emerald>]
]);