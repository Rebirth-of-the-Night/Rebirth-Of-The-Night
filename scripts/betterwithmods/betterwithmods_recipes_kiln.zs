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


mods.betterwithmods.Kiln.builder()
.buildRecipe(<betterwithmods:raw_pastry:3>, [<minecraft:bread>*2])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<betterwithmods:unfired_pottery>, [<betterwithmods:cooking_pot>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<contenttweaker:crucible>, [<betterwithmods:cooking_pot>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<betterwithmods:unfired_pottery:1>, [<betterwithmods:planter>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<betterwithmods:unfired_pottery:2>, [<betterwithmods:urn>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<betterwithmods:unfired_pottery:3>, [<betterwithmods:vase>])
.setHeat(1)
.build();