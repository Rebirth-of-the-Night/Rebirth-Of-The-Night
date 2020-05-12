import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

recipes.remove(<corpsecomplex:scroll>);

var enderpearl = <minecraft:ender_pearl>;
var emerald = <minecraft:emerald>;
var paper = <minecraft:paper>;

mods.betterwithaddons.Infuser.addShaped(<corpsecomplex:scroll>, [
    [<dungeontactics:magic_powder>, <minecraft:stick>, null],
	[<wards:enchanted_paper>, <contenttweaker:death_rune>.anyDamage().transformDamage(), null], 
	[<bountifulbaubles:spectralsilt>, null, null]
	],
	8);
	
mods.betterwithaddons.Infuser.addShaped(<corpsecomplex:scroll> * 2, [
    [<dungeontactics:magic_powder>, <minecraft:stick>, <dungeontactics:magic_powder>],
	[<wards:enchanted_paper>, <contenttweaker:death_rune>.anyDamage().transformDamage(), <wards:enchanted_paper>], 
	[<bountifulbaubles:spectralsilt>, <minecraft:stick>, <bountifulbaubles:spectralsilt>]
	],
	16);

recipes.addShapeless("Grave Scroll 2", <corpsecomplex:scroll>,[
    <wards:enchanted_paper>,
    <bountifulbaubles:magicmirror>.reuse(),
	<contenttweaker:death_rune>.anyDamage().transformDamage()
]);