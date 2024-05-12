import mods.betterwithmods.Kiln;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

Kiln.registerBlock(<contenttweaker:brick_minecraft_clay>);
Kiln.registerBlock(<contenttweaker:brick_minecraft_nether>);
Kiln.registerBlock(<contenttweaker:brick_pyrotech_refractory>);
Kiln.registerBlock(<contenttweaker:brick_ceramics_porcelain>);

Kiln.removeAll();

var kilnFood as IItemStack[][IIngredient] = {
	<contenttweaker:salty_crust> : [<animania:salt>],		//Salt
	<quark:biome_cobblestone> : [<betterwithmods:material:25>],			// Brimstone
//	<contenttweaker:plain_pizza_block> : [<contenttweaker:plain_pizza>],		 //Plain Pizza
	<contenttweaker:meat_pizza_block>	:	[<exsartagine:pizza_meat>],
	<contenttweaker:chicken_pizza_block>:	[<exsartagine:pizza_chicken>],
	<contenttweaker:fish_pizza_block>	:	[<exsartagine:pizza_fish>],
	<contenttweaker:sweet_pizza_block>	:	[<exsartagine:pizza_sweet>],
	<contenttweaker:abyss_pizza_block> : [<contenttweaker:abyss_pizza>],		//Abyss Pizza
	<iceandfire:ash> : [<aether_legacy:dungeon_block:4>]		// Cosmetic
};

var kilnPottery as IItemStack[IIngredient] = {
	<betterwithmods:raw_pastry:3> : <minecraft:bread>*2,
	<contenttweaker:crucible> : <betterwithmods:cooking_pot>,
	<betterwithmods:unfired_pottery:1> : <betterwithmods:planter>,
	<contenttweaker:pot_unfired> : <rustic:vase>,
	<betterwithmods:unfired_pottery:2> : <betterwithmods:urn>,
	<betterwithmods:unfired_pottery:3> : <betterwithmods:vase>,
	<ceramics:clay_barrel_unfired> : <ceramics:clay_barrel>,
	<ceramics:clay_barrel_unfired:1> : <ceramics:clay_barrel:1>,
	<ceramics:clay_barrel_unfired:2> : <ceramics:porcelain_barrel>,
	<ceramics:clay_barrel_unfired:3> : <ceramics:porcelain_barrel_extension>,
	<contenttweaker:unfired_clay_faucet> : <pyrotech:faucet_stone>,
	<contenttweaker:unfired_clay_collector> : <pyrotech:tar_collector>,
	<contenttweaker:unfired_clay_drain> : <pyrotech:tar_drain>
};

for k,v in kilnFood {
	Kiln.add(k,v);
}

for k,v in kilnPottery {
	Kiln.builder()
		.buildRecipe(k,[v])
		.setHeat(1)
		.build();
}