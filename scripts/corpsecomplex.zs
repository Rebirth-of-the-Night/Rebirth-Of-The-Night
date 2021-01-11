import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<corpsecomplex:scroll>);

var enderpearl = <minecraft:ender_pearl>;
var emerald = <ore:gemEmerald>;
var paper = <minecraft:paper>;

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <minecraft:stick>, <contenttweaker:vis_sliver>],
    [null, <wards:enchanted_paper>, null],
    [<contenttweaker:vis_sliver>, <minecraft:stick>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:death_rune>, 1)
  .addTool(<artisanworktables:artisans_quill_gold>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<corpsecomplex:scroll>)
  .create();

recipes.addShapeless("Grave Scroll 2", <corpsecomplex:scroll>,[
    <wards:enchanted_paper>,
    <bountifulbaubles:magicmirror>.reuse(),
	<contenttweaker:death_rune>.anyDamage().transformDamage()
]);