import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

mods.betterwithmods.Kiln.registerBlock(<contenttweaker:brick_minecraft_clay>);
mods.betterwithmods.Kiln.registerBlock(<contenttweaker:brick_minecraft_nether>);
mods.betterwithmods.Kiln.registerBlock(<contenttweaker:brick_pyrotech_refractory>);
mods.betterwithmods.Kiln.registerBlock(<contenttweaker:brick_ceramics_porcelain>);

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
	<contenttweaker:salty_crust>,
	[
	<animania:salt>
	]

);
// Brimstone
mods.betterwithmods.Kiln.add(
	<quark:biome_cobblestone>,
	[
	<betterwithmods:material:25>
	]

);
//Plain Pizza
mods.betterwithmods.Kiln.add(
	<contenttweaker:plain_pizza_block>,
	[
	<harvestcraft:pizzaitem>
	]

);
//Abyss Pizza
mods.betterwithmods.Kiln.add(
	<contenttweaker:abyss_pizza_block>,
	[
	<contenttweaker:abyss_pizza>
	]

);
// Cosmetic
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
.buildRecipe(<contenttweaker:crucible>, [<betterwithmods:cooking_pot>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<betterwithmods:unfired_pottery:1>, [<betterwithmods:planter>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<contenttweaker:pot_unfired>, [<rustic:vase>])
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
mods.betterwithmods.Kiln.builder()
.buildRecipe(<ceramics:clay_barrel_unfired>, [<ceramics:clay_barrel>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<ceramics:clay_barrel_unfired:1>, [<ceramics:clay_barrel:1>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<ceramics:clay_barrel_unfired:2>, [<ceramics:porcelain_barrel>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<ceramics:clay_barrel_unfired:3>, [<ceramics:porcelain_barrel_extension>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<contenttweaker:unfired_clay_faucet>, [<pyrotech:faucet_stone>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<contenttweaker:unfired_clay_collector>, [<pyrotech:tar_collector>])
.setHeat(1)
.build();
mods.betterwithmods.Kiln.builder()
.buildRecipe(<contenttweaker:unfired_clay_drain>, [<pyrotech:tar_drain>])
.setHeat(1)
.build();