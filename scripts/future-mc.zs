import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

mods.jei.JEI.removeAndHide(<futuremc:lantern>);
mods.jei.JEI.removeAndHide(<futuremc:barrel>);
recipes.remove(<futuremc:stonecutter>);
recipes.removeByRecipeName("futuremc:else/smooth_stonerecipe");
recipes.addShaped("futuremc_else/smooth_stonerecipe", <minecraft:stone_slab:0>*6,
  [[null,null,null],
  [<futuremc:smooth_stone>,<futuremc:smooth_stone>,<futuremc:smooth_stone>],
  [null,null,null]]);

var a = <ore:stone>;
var b = <ore:ingotSilver>;

//igneous stone blocks
val igStone = <undergroundbiomes:igneous_stone>;
val igStoneSlab = <undergroundbiomes:igneous_stone_halfslab>;
val igBrick = <undergroundbiomes:igneous_brick>;
val igBrickSlab = <undergroundbiomes:igneous_brick_halfslab>;
val igStairs = <undergroundbiomes:igneous_stone_stairs>;
val igBrickStairs = <undergroundbiomes:igneous_brick_stairs>;
val igWall = <undergroundbiomes:igneous_stone_wall>;
val igBrickWall = <undergroundbiomes:igneous_brick_wall>;
val igCobble = <undergroundbiomes:igneous_cobble>;
val igCobbleStairs = <undergroundbiomes:igneous_cobble_stairs>;
val igCobbleSlab = <undergroundbiomes:igneous_cobble_halfslab>;
val igCobbleWall = <undergroundbiomes:igneous_cobble_wall>;

//metamorphic stone blocks

val metaStone = <undergroundbiomes:metamorphic_stone>;
val metaStoneSlab = <undergroundbiomes:metamorphic_stone_halfslab>;
val metaBrick = <undergroundbiomes:metamorphic_brick>;
val metaBrickSlab = <undergroundbiomes:metamorphic_brick_halfslab>;
val metaStairs = <undergroundbiomes:metamorphic_stone_stairs>;
val metaBrickStairs = <undergroundbiomes:metamorphic_brick_stairs>;
val metaWall = <undergroundbiomes:metamorphic_stone_wall>;
val metaBrickWall = <undergroundbiomes:metamorphic_brick_wall>;
val metaCobble = <undergroundbiomes:metamorphic_cobble>;
val metaCobbleStairs = <undergroundbiomes:metamorphic_cobble_stairs>;
val metaCobbleSlab = <undergroundbiomes:metamorphic_cobble_halfslab>;
val metaCobbleWall = <undergroundbiomes:metamorphic_cobble_wall>;

//sedimentary stone blocks

val sediStone = <undergroundbiomes:sedimentary_stone>;
val sediStoneSlab = <undergroundbiomes:sedimentary_stone_halfslab>;
val sediStairs = <undergroundbiomes:sedimentary_stone_stairs>;
val sediWall = <undergroundbiomes:sedimentary_stone_wall>;

//igneous sandstone blocks
val igSand = <undergroundbiomes:igneous_sandstone>;
val igSandSmooth = <undergroundbiomes:igneous_sandstone_smooth>;
val igSandChisel = <undergroundbiomes:igneous_sandstone_chiseled>;


//metamorphic sandstone blocks
val metaSand = <undergroundbiomes:metamorphic_sandstone>;
val metaSandSmooth = <undergroundbiomes:metamorphic_sandstone_smooth>;
val metaSandChisel = <undergroundbiomes:metamorphic_sandstone_chiseled>;

//sedimentary sandstone blocks
val sediSand = <undergroundbiomes:sedimentary_sandstone>;
val sediSandSmooth = <undergroundbiomes:sedimentary_sandstone_smooth>;
val sediSandChisel = <undergroundbiomes:sedimentary_sandstone_chiseled>;

recipes.addShaped("Stone Cutter", <futuremc:stonecutter>,[
	[null, null, null],
    [null, b, null],
    [a, a, a]
]);

/*********************************************************************************

Stonecutter Recipes

**********************************************************************************/



//igneous stone recipes

for i in 0 .. 8 {
mods.futuremc.Stonecutter.addOutputs(igBrick.definition.makeStack(i),
											igBrickStairs.definition.makeStack(i),
											igBrickWall.definition.makeStack(i));

mods.futuremc.Stonecutter.addOutputs(igCobble.definition.makeStack(i),
											igCobbleSlab.definition.makeStack(i),
											igCobbleStairs.definition.makeStack(i),
											igCobbleWall.definition.makeStack(i));

mods.futuremc.Stonecutter.addOutputs(igStone.definition.makeStack(i),
											igStoneSlab.definition.makeStack(i),
											igBrick.definition.makeStack(i),
											igBrickSlab.definition.makeStack(i),
											igStairs.definition.makeStack(i),
											igBrickStairs.definition.makeStack(i),											
											igWall.definition.makeStack(i),
											igBrickWall.definition.makeStack(i));



}

//metamorphic stone recipes

for i in 0 .. 8 {
mods.futuremc.Stonecutter.addOutputs(metaBrick.definition.makeStack(i),
											metaBrickStairs.definition.makeStack(i),
											metaBrickWall.definition.makeStack(i));

mods.futuremc.Stonecutter.addOutputs(metaCobble.definition.makeStack(i),
											metaCobbleSlab.definition.makeStack(i),
											metaCobbleStairs.definition.makeStack(i),
											metaCobbleWall.definition.makeStack(i));

mods.futuremc.Stonecutter.addOutputs(metaStone.definition.makeStack(i),
											metaStoneSlab.definition.makeStack(i),
											metaBrick.definition.makeStack(i),
											metaBrickSlab.definition.makeStack(i),
											metaStairs.definition.makeStack(i),
											metaBrickStairs.definition.makeStack(i),											
											metaWall.definition.makeStack(i),
											metaBrickWall.definition.makeStack(i));
}

//sedimentary stone recipes

for i in 0 .. 8 {


mods.futuremc.Stonecutter.addOutputs(sediStone.definition.makeStack(i),
											sediStoneSlab.definition.makeStack(i),
											sediStairs.definition.makeStack(i),
											sediWall.definition.makeStack(i));
}

//igneous sandstone recipes

for i in 0 .. 8 {

mods.futuremc.Stonecutter.addOutputs(igSand.definition.makeStack(i), 
											igSandSmooth.definition.makeStack(i),
											igSandChisel.definition.makeStack(i));

mods.futuremc.Stonecutter.addOutputs(igSandSmooth.definition.makeStack(i),
											igSandChisel.definition.makeStack(i));

}

//metamorphic sandstone recipes

for i in 0 .. 8 {
mods.futuremc.Stonecutter.addOutputs(metaSand.definition.makeStack(i), 
											metaSandSmooth.definition.makeStack(i),
											metaSandChisel.definition.makeStack(i));

mods.futuremc.Stonecutter.addOutputs(metaSandSmooth.definition.makeStack(i),
											metaSandChisel.definition.makeStack(i));

}

//sedimentary sandstone recipes

for i in 0 .. 8 {
mods.futuremc.Stonecutter.addOutputs(sediSand.definition.makeStack(i), 
											sediSandSmooth.definition.makeStack(i),
											sediSandChisel.definition.makeStack(i));

mods.futuremc.Stonecutter.addOutputs(sediSandSmooth.definition.makeStack(i),
											sediSandChisel.definition.makeStack(i));

}

//biomes o plenty sandstone recipes

mods.futuremc.Stonecutter.addOutputs(<biomesoplenty:white_sandstone>, 
											<biomesoplenty:white_sandstone:2>, //Smooth White Sandstone
											<biomesoplenty:white_sandstone:1>, //Chiseled White Sandstone
											<biomesoplenty:white_sandstone_stairs>, //White Sandstone Stairs
											<biomesoplenty:other_slab:1>); //White Sandstone Slab

mods.futuremc.Stonecutter.addOutputs(<biomesoplenty:white_sandstone:2>, //Smooth White Sandstone
											<biomesoplenty:white_sandstone:1>); //Chiseled White Sandstone
											
											
//white stone recipes
mods.futuremc.Stonecutter.addOutputs(<betterwithmods:aesthetic:6>,
											<betterwithaddons:whitebrick>,
											<betterwithaddons:whitebrick:3>);

mods.futuremc.Stonecutter.addOutputs(<betterwithaddons:whitebrick>,
											<betterwithaddons:whitebrick:3>);


/*********************************************************************************

Blast Furnace Recipes

**********************************************************************************/


/****** Underground Biomes ******/


for i in 0 .. 8 {

//Igneous

mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_simpleores_copper_ore>.definition.makeStack(i), 
											<simpleores:copper_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_redstone_ore>.definition.makeStack(i), 
											<minecraft:redstone>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_tile.gem_ore.peridot_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:2>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_coal_ore>.definition.makeStack(i), 
											<minecraft:coal>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_emerald_ore>.definition.makeStack(i), 
											<minecraft:emerald>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_diamond_ore>.definition.makeStack(i), 
											<minecraft:diamond>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_lapis_ore>.definition.makeStack(i), 
											<minecraft:dye:4>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_tile.gem_ore.ruby_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:1>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_iceandfire_silver_ore>.definition.makeStack(i), 
											<iceandfire:silver_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_iron_ore>.definition.makeStack(i), 
											<minecraft:iron_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_tile.gem_ore.sapphire_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:6>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_gold_ore>.definition.makeStack(i), 
											<minecraft:gold_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_simpleores_mythril_ore>.definition.makeStack(i), 
											<simpleores:mythril_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_simpleores_adamantium_ore>.definition.makeStack(i), 
											<simpleores:adamantium_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:igneous_stone_simpleores_tin_ore>.definition.makeStack(i), 
											<simpleores:tin_ingot>);

//metamorphic

mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_simpleores_copper_ore>.definition.makeStack(i), 
											<simpleores:copper_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_redstone_ore>.definition.makeStack(i), 
											<minecraft:redstone>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_tile.gem_ore.peridot_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:2>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_coal_ore>.definition.makeStack(i), 
											<minecraft:coal>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_emerald_ore>.definition.makeStack(i), 
											<minecraft:emerald>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_diamond_ore>.definition.makeStack(i), 
											<minecraft:diamond>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_lapis_ore>.definition.makeStack(i), 
											<minecraft:dye:4>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_tile.gem_ore.ruby_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:1>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_iceandfire_silver_ore>.definition.makeStack(i), 
											<iceandfire:silver_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_iron_ore>.definition.makeStack(i), 
											<minecraft:iron_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_tile.gem_ore.sapphire_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:6>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_gold_ore>.definition.makeStack(i), 
											<minecraft:gold_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_simpleores_mythril_ore>.definition.makeStack(i), 
											<simpleores:mythril_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_simpleores_adamantium_ore>.definition.makeStack(i), 
											<simpleores:adamantium_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:metamorphic_stone_simpleores_tin_ore>.definition.makeStack(i), 
											<simpleores:tin_ingot>);
//sedimentary										

mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_simpleores_copper_ore>.definition.makeStack(i), 
											<simpleores:copper_ingot>);											
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_redstone_ore>.definition.makeStack(i), 
											<minecraft:redstone>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_tile.gem_ore.peridot_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:2>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_coal_ore>.definition.makeStack(i), 
											<minecraft:coal>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_emerald_ore>.definition.makeStack(i), 
											<minecraft:emerald>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_diamond_ore>.definition.makeStack(i), 
											<minecraft:diamond>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_lapis_ore>.definition.makeStack(i), 
											<minecraft:dye:4>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_tile.gem_ore.ruby_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:1>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_iceandfire_silver_ore>.definition.makeStack(i), 
											<iceandfire:silver_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_iron_ore>.definition.makeStack(i), 
											<minecraft:iron_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_tile.gem_ore.sapphire_ore>.definition.makeStack(i), 
											<biomesoplenty:gem:6>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_gold_ore>.definition.makeStack(i), 
											<minecraft:gold_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_simpleores_mythril_ore>.definition.makeStack(i), 
											<simpleores:mythril_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_simpleores_adamantium_ore>.definition.makeStack(i), 
											<simpleores:adamantium_ingot>);
mods.futuremc.BlastFurnace.addRecipe(<undergroundbiomes:sedimentary_stone_simpleores_tin_ore>.definition.makeStack(i), 
											<simpleores:tin_ingot>);

											
}


/******** Modded Ores *********/



mods.futuremc.BlastFurnace.addRecipe(<biomesoplenty:gem_ore>, //Ender Amethyst Ore
											<biomesoplenty:gem>); //Ender Amethyst

mods.futuremc.BlastFurnace.addRecipe(<biomesoplenty:gem_ore:1>, //Ruby Ore
											<biomesoplenty:gem:1>); //Ruby

mods.futuremc.BlastFurnace.addRecipe(<biomesoplenty:gem_ore:2>, //Peridot Ore
											<biomesoplenty:gem:2>); //Peridot

mods.futuremc.BlastFurnace.addRecipe(<biomesoplenty:gem_ore:6>, //Sapphire Ore
											<biomesoplenty:gem:6>); //Sapphire

mods.futuremc.BlastFurnace.addRecipe(<iceandfire:silver_ore>, 
											<iceandfire:silver_ingot>); 

mods.futuremc.BlastFurnace.addRecipe(<dungeontactics:enddiamond_ore>, 
											<minecraft:diamond>);

mods.futuremc.BlastFurnace.addRecipe(<dungeontactics:endlapis_ore>, 
											<minecraft:dye:4>); //Lapis

mods.futuremc.BlastFurnace.addRecipe(<quark:biotite_ore>, 
											<quark:biotite>);

mods.futuremc.BlastFurnace.addRecipe(<simpleores:copper_ore>, 
											<simpleores:copper_ingot>);

mods.futuremc.BlastFurnace.addRecipe(<simpleores:tin_ore>, 
											<simpleores:tin_ingot>);

mods.futuremc.BlastFurnace.addRecipe(<simpleores:mythril_ore>, 
											<simpleores:mythril_ingot>);

mods.futuremc.BlastFurnace.addRecipe(<simpleores:adamantium_ore>, 
											<simpleores:adamantium_ingot>);

mods.futuremc.BlastFurnace.addRecipe(<simpleores:onyx_ore>, 
											<simpleores:onyx_gem>);
											
/*********************************************************************************

Smoker Recipes

**********************************************************************************/


/****** Animania ******/

mods.futuremc.Smoker.addRecipe(<animania:raw_prime_beef>, 
									  <animania:cooked_prime_beef>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_bacon>, 
									  <animania:cooked_prime_bacon>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_chevon>, 
									  <animania:cooked_prime_chevon>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_chicken>, 
									  <animania:cooked_prime_chicken>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_mutton>, 
									  <animania:cooked_prime_mutton>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_peacock>, 
									  <animania:cooked_prime_peacock>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_pork>, 
									  <animania:cooked_prime_pork>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_rabbit>, 
									  <animania:cooked_prime_rabbit>);
mods.futuremc.Smoker.addRecipe(<animania:raw_prime_steak>, 
									  <animania:cooked_prime_steak>);
mods.futuremc.Smoker.addRecipe(<animania:raw_frog_legs>, 
									  <animania:cooked_frog_legs>);
mods.futuremc.Smoker.addRecipe(<animania:raw_horse>, 
									  <animania:cooked_horse>);
mods.futuremc.Smoker.addRecipe(<animania:raw_chevon>, 
									  <animania:cooked_chevon>);
mods.futuremc.Smoker.addRecipe(<animania:raw_peacock>, 
									  <animania:cooked_peacock>);

/****** Harvestcraft ******/

mods.futuremc.Smoker.addRecipe(<harvestcraft:musselrawitem>, 
									  <harvestcraft:musselcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:grubitem>,
									  <harvestcraft:cookedgrubitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:calamarirawitem>, 
									  <harvestcraft:calamaricookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:clamrawitem>, 
									  <harvestcraft:clamcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:crabrawitem>, 
									  <harvestcraft:crabcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:crayfishrawitem>, 
									  <harvestcraft:crayfishcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:frograwitem>, 
									  <harvestcraft:frogcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:octopusrawitem>, 
									  <harvestcraft:octopuscookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:scalloprawitem>, 
									  <harvestcraft:scallopcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:shrimprawitem>, 
									  <harvestcraft:shrimpcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:snailrawitem>, 
									  <harvestcraft:snailcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:turtlerawitem>, 
									  <harvestcraft:turtlecookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:oysterrawitem>, 
									  <harvestcraft:oystercookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:turkeyrawitem>, 
									  <harvestcraft:turkeycookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:duckrawitem>, 
									  <harvestcraft:duckcookeditem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofeakitem>, 
									  <harvestcraft:cookedtofeakitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofaconitem>, 
									  <harvestcraft:cookedtofaconitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofishitem>, 
									  <harvestcraft:cookedtofishitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofeegitem>, 
									  <harvestcraft:cookedtofeegitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofuttonitem>, 
									  <harvestcraft:cookedtofuttonitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofickenitem>, 
									  <harvestcraft:cookedtofickenitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofabbititem>, 
									  <harvestcraft:cookedtofabbititem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofurkeyitem>, 
									  <harvestcraft:cookedtofurkeyitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofenisonitem>, 
									  <harvestcraft:cookedtofenisonitem>);
mods.futuremc.Smoker.addRecipe(<harvestcraft:rawtofuduckitem>, 
									  <harvestcraft:cookedtofuduckitem>);


/****** DT Potion Fish ******/

mods.futuremc.Smoker.addRecipe(<dungeontactics:fish_swift>, 
									  <dungeontactics:fish_swift_cooked>);
mods.futuremc.Smoker.addRecipe(<dungeontactics:fish_flying>, 
									  <dungeontactics:fish_flying_cooked>);
mods.futuremc.Smoker.addRecipe(<dungeontactics:fish_lava>, 
									  <dungeontactics:fish_lava_cooked>);
mods.futuremc.Smoker.addRecipe(<dungeontactics:fish_muscle>, 
									  <dungeontactics:fish_muscle_cooked>);
mods.futuremc.Smoker.addRecipe(<dungeontactics:fish_lung>, 
									  <dungeontactics:fish_lung_cooked>);
mods.futuremc.Smoker.addRecipe(<dungeontactics:fish_obsidian>, 
									  <dungeontactics:fish_obsidian_cooked>);
mods.futuremc.Smoker.addRecipe(<dungeontactics:fish_tunnel>, 
									  <dungeontactics:fish_tunnel_cooked>);

/****** LAVACOWWW ******/

mods.futuremc.Smoker.addRecipe(<mod_lavacow:piranha>, 
									  <mod_lavacow:piranha_cooked>);
mods.futuremc.Smoker.addRecipe(<mod_lavacow:cheirolepis>, 
									  <mod_lavacow:cheirolepis_cooked>);
mods.futuremc.Smoker.addRecipe(<mod_lavacow:zombiepiranha_item>, 
									  <mod_lavacow:zombiepiranha_item_cooked>);


/****** Other ******/

mods.futuremc.Smoker.addRecipe(<primitivemobs:dodo>,
									  <primitivemobs:cooked_dodo>);
mods.futuremc.Smoker.addRecipe(<quark:crab_leg>,
									  <quark:cooked_crab_leg>);
mods.futuremc.Smoker.addRecipe(<aether_legacy:enchanted_cockatrice>,
									  <aether_legacy:cooked_enchanted_cockatrice>);
mods.futuremc.Smoker.addRecipe(<betteranimalsplus:venisonraw>,
									  <betteranimalsplus:venisoncooked>);
mods.futuremc.Smoker.addRecipe(<betteranimalsplus:pheasantraw>,
									  <betteranimalsplus:pheasantcooked>);
mods.futuremc.Smoker.addRecipe(<betteranimalsplus:crab_meat_raw>,
									  <betteranimalsplus:crab_meat_cooked>);
mods.futuremc.Smoker.addRecipe(<betteranimalsplus:turkey_raw>,
									  <betteranimalsplus:turkey_cooked>);
mods.futuremc.Smoker.addRecipe(<betteranimalsplus:turkey_leg_raw>,
									  <betteranimalsplus:turkey_leg_cooked>);
mods.futuremc.Smoker.addRecipe(<betterwithmods:wolf_chop>,
									  <betterwithmods:cooked_wolf_chop>);
mods.futuremc.Smoker.addRecipe(<betterwithmods:bat_wing>,
									  <betterwithmods:cooked_bat_wing>);
mods.futuremc.Smoker.addRecipe(<minecraft:fish:2>,
									  <betterwithaddons:food_clownfish_cooked>);
mods.futuremc.Smoker.addRecipe(<minecraft:fish:3>,
									  <betterwithaddons:food_pufferfish_baked>);
mods.futuremc.Smoker.addRecipe(<rats:raw_rat>,
									  <rats:cooked_rat>);
mods.futuremc.Smoker.addRecipe(<twilightforest:raw_meef>,
									  <twilightforest:cooked_meef>);


/*********************************************************************************

Campfire Recipes

**********************************************************************************/


/****** Animania ******/

mods.futuremc.Campfire.addRecipe(<animania:raw_prime_beef>, 
									    <animania:cooked_prime_beef>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_bacon>, 
									    <animania:cooked_prime_bacon>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_chevon>, 
									    <animania:cooked_prime_chevon>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_chicken>, 
									    <animania:cooked_prime_chicken>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_mutton>, 
									    <animania:cooked_prime_mutton>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_peacock>, 
									    <animania:cooked_prime_peacock>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_pork>, 
									    <animania:cooked_prime_pork>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_rabbit>, 
									    <animania:cooked_prime_rabbit>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_prime_steak>, 
									    <animania:cooked_prime_steak>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_frog_legs>, 
									    <animania:cooked_frog_legs>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_horse>, 
									    <animania:cooked_horse>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_chevon>, 
									    <animania:cooked_chevon>, 600);
mods.futuremc.Campfire.addRecipe(<animania:raw_peacock>, 
									    <animania:cooked_peacock>, 600);

/****** Harvestcraft ******/

mods.futuremc.Campfire.addRecipe(<harvestcraft:musselrawitem>, 
									    <harvestcraft:musselcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:grubitem>,
									    <harvestcraft:cookedgrubitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:calamarirawitem>, 
									    <harvestcraft:calamaricookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:clamrawitem>, 
									    <harvestcraft:clamcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:crabrawitem>, 
									    <harvestcraft:crabcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:crayfishrawitem>, 
									    <harvestcraft:crayfishcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:frograwitem>, 
									    <harvestcraft:frogcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:octopusrawitem>, 
									    <harvestcraft:octopuscookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:scalloprawitem>, 
									    <harvestcraft:scallopcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:shrimprawitem>, 
									    <harvestcraft:shrimpcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:snailrawitem>, 
									    <harvestcraft:snailcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:turtlerawitem>, 
									    <harvestcraft:turtlecookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:oysterrawitem>, 
									    <harvestcraft:oystercookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:turkeyrawitem>, 
									    <harvestcraft:turkeycookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:duckrawitem>, 
									    <harvestcraft:duckcookeditem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofeakitem>, 
									    <harvestcraft:cookedtofeakitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofaconitem>, 
									    <harvestcraft:cookedtofaconitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofishitem>, 
									    <harvestcraft:cookedtofishitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofeegitem>, 
									    <harvestcraft:cookedtofeegitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofuttonitem>, 
									    <harvestcraft:cookedtofuttonitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofickenitem>, 
									    <harvestcraft:cookedtofickenitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofabbititem>, 
									    <harvestcraft:cookedtofabbititem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofurkeyitem>, 
									    <harvestcraft:cookedtofurkeyitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofenisonitem>, 
									    <harvestcraft:cookedtofenisonitem>, 600);
mods.futuremc.Campfire.addRecipe(<harvestcraft:rawtofuduckitem>, 
									    <harvestcraft:cookedtofuduckitem>, 600);


/****** DT Potion Fish ******/

mods.futuremc.Campfire.addRecipe(<dungeontactics:fish_swift>, 
									    <dungeontactics:fish_swift_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<dungeontactics:fish_flying>, 
									    <dungeontactics:fish_flying_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<dungeontactics:fish_lava>, 
									    <dungeontactics:fish_lava_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<dungeontactics:fish_muscle>, 
									    <dungeontactics:fish_muscle_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<dungeontactics:fish_lung>, 
									    <dungeontactics:fish_lung_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<dungeontactics:fish_obsidian>, 
									    <dungeontactics:fish_obsidian_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<dungeontactics:fish_tunnel>, 
									    <dungeontactics:fish_tunnel_cooked>, 600);

/****** LAVACOWWW ******/

mods.futuremc.Campfire.addRecipe(<mod_lavacow:piranha>, 
									    <mod_lavacow:piranha_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<mod_lavacow:cheirolepis>, 
									    <mod_lavacow:cheirolepis_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<mod_lavacow:zombiepiranha_item>, 
									    <mod_lavacow:zombiepiranha_item_cooked>, 600);


/****** Other ******/

mods.futuremc.Campfire.addRecipe(<primitivemobs:dodo>,
									    <primitivemobs:cooked_dodo>, 600);
mods.futuremc.Campfire.addRecipe(<quark:crab_leg>,
							  	        <quark:cooked_crab_leg>, 600);
mods.futuremc.Campfire.addRecipe(<aether_legacy:enchanted_cockatrice>,
									    <aether_legacy:cooked_enchanted_cockatrice>, 600);
mods.futuremc.Campfire.addRecipe(<betteranimalsplus:venisonraw>,
									    <betteranimalsplus:venisoncooked>, 600);
mods.futuremc.Campfire.addRecipe(<betteranimalsplus:pheasantraw>,
									    <betteranimalsplus:pheasantcooked>, 600);
mods.futuremc.Campfire.addRecipe(<betteranimalsplus:crab_meat_raw>,
									    <betteranimalsplus:crab_meat_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<betteranimalsplus:turkey_raw>,
									    <betteranimalsplus:turkey_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<betteranimalsplus:turkey_leg_raw>,
									  <betteranimalsplus:turkey_leg_cooked>,600);
mods.futuremc.Campfire.addRecipe(<betterwithmods:wolf_chop>,
									    <betterwithmods:cooked_wolf_chop>, 600);
mods.futuremc.Campfire.addRecipe(<betterwithmods:bat_wing>,
									    <betterwithmods:cooked_bat_wing>, 600);
mods.futuremc.Campfire.addRecipe(<betterwithmods:mystery_meat>,
									    <betterwithmods:cooked_mystery_meat>, 600);
mods.futuremc.Campfire.addRecipe(<minecraft:fish:2>,
									    <betterwithaddons:food_clownfish_cooked>, 600);
mods.futuremc.Campfire.addRecipe(<minecraft:fish:3>,
									    <betterwithaddons:food_pufferfish_baked>, 600);
mods.futuremc.Campfire.addRecipe(<rats:raw_rat>,
									    <rats:cooked_rat>, 600);
mods.futuremc.Campfire.addRecipe(<twilightforest:raw_meef>,
									    <twilightforest:cooked_meef>, 600);