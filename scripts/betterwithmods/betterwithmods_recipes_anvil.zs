import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Steel Anvil
recipes.remove(<betterwithmods:steel_anvil>);

var steel = <dungeontactics:steel_ingot>;
var steelblock = <dungeontactics:steel_block>;

recipes.addShaped("Steel Anvil", <betterwithmods:steel_anvil>,[
	[steelblock, steelblock, steelblock],
	[null, steel, null],
	[steel, steel, steel]
]);




// pipes
mods.betterwithmods.Anvil.addShaped(<quark:pipe> * 12, 
[
   [null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
   [<simpleores:copper_ingot>, <ore:paneGlass>, <ore:paneGlass>, <simpleores:copper_ingot>],
   [<simpleores:copper_ingot>, <ore:paneGlass>, <ore:paneGlass>, <simpleores:copper_ingot>],
   [null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null]
]);