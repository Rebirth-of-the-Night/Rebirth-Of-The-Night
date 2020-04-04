import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;


mods.jei.JEI.removeAndHide(<golems:info_book>);


recipes.remove(<golems:golem_paper>);

recipes.addShapeless("GolemSpell", <golems:golem_paper>, [
<wards:enchanted_paper>, <minecraft:feather>, <contenttweaker:creation_rune>.anyDamage().transformDamage(), <minecraft:dye>, <minecraft:dye:1>]
);