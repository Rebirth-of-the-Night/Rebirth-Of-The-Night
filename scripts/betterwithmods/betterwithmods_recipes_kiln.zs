import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

mods.betterwithmods.Kiln.registerBlock(<pyrotech:refractory_brick_block>);

mods.betterwithmods.Kiln.removeAll();

//Fence Destroyer
mods.betterwithmods.Kiln.add(
	<minecraft:fence>,
	[
	<minecraft:stick>,
	<minecraft:stick>
	]
);
//Salt
mods.betterwithmods.Kiln.add(
	<ore:sandstone>,
	[
	<animania:salt>
	]

);
//Cosmetic
mods.betterwithmods.Kiln.add(
	<iceandfire:ash>,
	[
	<aether_legacy:dungeon_block:4>
	]
);
