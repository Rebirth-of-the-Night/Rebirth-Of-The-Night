import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;


mods.jei.JEI.removeAndHide(<golems:info_book>);


recipes.remove(<golems:golem_paper>);

recipes.addShapeless("GolemSpell 1", <golems:golem_paper> * 3, [
<wards:enchanted_paper>, <wards:enchanted_paper>, <wards:enchanted_paper>, <ore:feather>, <contenttweaker:creation_rune>.anyDamage().transformDamage(), <ore:dyeRed>]
);

recipes.addShapeless("GolemSpell 2", <golems:golem_paper>, [
<wards:enchanted_paper>, <ore:feather>, <contenttweaker:creation_rune>.anyDamage().transformDamage(), <ore:dyeRed>]
);