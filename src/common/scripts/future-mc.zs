import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

import mods.futuremc.Composter;
import mods.futuremc.Stonecutter;
import mods.futuremc.BlastFurnace;
import mods.futuremc.Smoker;
import mods.futuremc.Campfire;

JEI.removeAndHide(<futuremc:brick_wall>);
JEI.removeAndHide(<futuremc:lantern>);
JEI.removeAndHide(<futuremc:barrel>);
JEI.removeAndHide(<futuremc:composter>);

JEI.removeAndHide(<futuremc:honeycomb>);
JEI.removeAndHide(<futuremc:honey_bottle>);
JEI.removeAndHide(<futuremc:beehive>);

JEI.removeAndHide(<futuremc:campfire>);


recipes.removeByRecipeName("futuremc:nether_brick_fence");
recipes.removeByRecipeName("futuremc:else/smooth_stonerecipe");
recipes.removeByRecipeName("futuremc:else/stone_slabs_from_smooth_stone");
recipes.addShaped("futuremc_else/smooth_stonerecipe", <minecraft:stone_slab:0>*6, [
  [<futuremc:smooth_stone>,<futuremc:smooth_stone>,<futuremc:smooth_stone>]
]);

// Banner patterns
recipes.addShapeless("banner_pattern_flower", <futuremc:banner_pattern:0>, [<minecraft:paper>, <ore:flower>]);
recipes.addShapeless("banner_pattern_creeper", <futuremc:banner_pattern:1>, [<minecraft:paper>, <minecraft:skull:4> | <harvestcraft:creepercookieitem> | <rats:charged_creeper_chunk>]);
recipes.addShapeless("banner_pattern_skull", <futuremc:banner_pattern:2>, [<minecraft:paper>, <ore:mythicalSkull>]);
recipes.addShapeless("banner_pattern_thing", <futuremc:banner_pattern:3>, [<minecraft:paper>, <minecraft:golden_apple:1>]);

RecipeBuilder.get("mage")
  .setShapeless([<minecraft:paper>, <minecraft:stone>, <minecraft:dirt>, <minecraft:sand>])
  .addTool(<artisanworktables:artisans_quill_gold>, 1)
  .addTool(<contenttweaker:earth_rune>, 1)
  .addOutput(<futuremc:banner_pattern:4>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.remove(<futuremc:stonecutter>);
recipes.addShaped("stone_cutter", <futuremc:stonecutter>,[
	[null, null, null],
    [null, <ore:ingotSilver>, null],
    [<ore:stone>, <ore:stone>, <ore:stone>]
]);

recipes.remove(<futuremc:suspicious_stew>);
recipes.addShapeless("futuremc_stew/sustew", <futuremc:suspicious_stew>, 
[<ore:mushroomAny>, <ore:mushroomAny>, <minecraft:bowl>, <ore:flower>]);

recipes.addShaped("bamboo_to_stick", <minecraft:stick>, [
	[<futuremc:bamboo>],
	[<futuremc:bamboo>]
]);

var honeyBottle = <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}});
var honeyBottleTR = honeyBottle.transformReplace(<minecraft:glass_bottle>);
var honeyComb = <rustic:honeycomb>;

recipes.remove(<futuremc:honey_block>);
recipes.addShaped("rustic_honey_to_honey_block", <futuremc:honey_block>, [
	[honeyBottleTR, honeyBottleTR],
	[honeyBottleTR, honeyBottleTR]
]);
recipes.addShapeless("honey_block_to_rustic_honey", honeyBottle * 4, [<futuremc:honey_block>]);

recipes.remove(<futuremc:honeycomb_block>);
recipes.addShaped("rustic_honeycomb_to_honeycomb_block", <futuremc:honeycomb_block>, [
	[honeyComb, honeyComb],
	[honeyComb, honeyComb]
]);
recipes.addShapeless("honeycomb_block_to_rustic_honeycomb", honeyComb * 3, [<futuremc:honeycomb_block>]);

// ********* Composter Recipes ********* //

for item in <ore:listAllSeeds>.items {
	Composter.addValidItem(item, 30);
}

Composter.addValidItem(<pyrotech:material:12>, 40); // Plant fiber
Composter.addValidItem(<pyrotech:material:25>, 40); // Pulp
Composter.addValidItem(<pyrotech:material:13>, 33); // Dried plant fiber
Composter.addValidItem(<pyrotech:rock:7>, 30); // Wood chips
Composter.addValidItem(<minecraft:paper>, 10); // Paper
Composter.addValidItem(<betterwithmods:hemp>, 35); // Hemp seeds


//misc
val foundation = <contenttweaker:foundation_micomi>;

//igneous stone blocks
val igStone = <undergroundbiomes:igneous_stone>.definition;
val igStoneSlab = <undergroundbiomes:igneous_stone_halfslab>.definition;
val igBrick = <undergroundbiomes:igneous_brick>.definition;
val igBrickSlab = <undergroundbiomes:igneous_brick_halfslab>.definition;
val igStairs = <undergroundbiomes:igneous_stone_stairs>.definition;
val igBrickStairs = <undergroundbiomes:igneous_brick_stairs>.definition;
val igWall = <undergroundbiomes:igneous_stone_wall>.definition;
val igBrickWall = <undergroundbiomes:igneous_brick_wall>.definition;
val igCobble = <undergroundbiomes:igneous_cobble>.definition;
val igCobbleStairs = <undergroundbiomes:igneous_cobble_stairs>.definition;
val igCobbleSlab = <undergroundbiomes:igneous_cobble_halfslab>.definition;
val igCobbleWall = <undergroundbiomes:igneous_cobble_wall>.definition;

//metamorphic stone blocks
val metaStone = <undergroundbiomes:metamorphic_stone>.definition;
val metaStoneSlab = <undergroundbiomes:metamorphic_stone_halfslab>.definition;
val metaBrick = <undergroundbiomes:metamorphic_brick>.definition;
val metaBrickSlab = <undergroundbiomes:metamorphic_brick_halfslab>.definition;
val metaStairs = <undergroundbiomes:metamorphic_stone_stairs>.definition;
val metaBrickStairs = <undergroundbiomes:metamorphic_brick_stairs>.definition;
val metaWall = <undergroundbiomes:metamorphic_stone_wall>.definition;
val metaBrickWall = <undergroundbiomes:metamorphic_brick_wall>.definition;
val metaCobble = <undergroundbiomes:metamorphic_cobble>.definition;
val metaCobbleStairs = <undergroundbiomes:metamorphic_cobble_stairs>.definition;
val metaCobbleSlab = <undergroundbiomes:metamorphic_cobble_halfslab>.definition;
val metaCobbleWall = <undergroundbiomes:metamorphic_cobble_wall>.definition;

//sedimentary stone blocks
val sediStone = <undergroundbiomes:sedimentary_stone>.definition;
val sediStoneSlab = <undergroundbiomes:sedimentary_stone_halfslab>.definition;
val sediStairs = <undergroundbiomes:sedimentary_stone_stairs>.definition;
val sediWall = <undergroundbiomes:sedimentary_stone_wall>.definition;

//igneous sandstone blocks
val igSand = <undergroundbiomes:igneous_sandstone>.definition;
val igSandSmooth = <undergroundbiomes:igneous_sandstone_smooth>.definition;
val igSandChisel = <undergroundbiomes:igneous_sandstone_chiseled>.definition;


//metamorphic sandstone blocks
val metaSand = <undergroundbiomes:metamorphic_sandstone>.definition;
val metaSandSmooth = <undergroundbiomes:metamorphic_sandstone_smooth>.definition;
val metaSandChisel = <undergroundbiomes:metamorphic_sandstone_chiseled>.definition;

//sedimentary sandstone blocks
val sediSand = <undergroundbiomes:sedimentary_sandstone>.definition;
val sediSandSmooth = <undergroundbiomes:sedimentary_sandstone_smooth>.definition;
val sediSandChisel = <undergroundbiomes:sedimentary_sandstone_chiseled>.definition;

/*********************************************************************************

Stonecutter Recipes

**********************************************************************************/


for i in 0 .. 8 {

	// Igneous stone recipes

	Stonecutter.addOutputs(igBrick.makeStack(i),
								igBrickStairs.makeStack(i),
								igBrickWall.makeStack(i));

	Stonecutter.addOutputs(igCobble.makeStack(i),
								igCobbleSlab.makeStack(i),
								igCobbleStairs.makeStack(i),
								igCobbleWall.makeStack(i));

	Stonecutter.addOutputs(igStone.makeStack(i),
								igStoneSlab.makeStack(i),
								igBrick.makeStack(i),
								igBrickSlab.makeStack(i),
								igStairs.makeStack(i),
								igBrickStairs.makeStack(i),											
								igWall.makeStack(i),
								igBrickWall.makeStack(i),
								foundation);
	
	// Metamorphic stone recipes

	Stonecutter.addOutputs(metaBrick.makeStack(i),
								metaBrickStairs.makeStack(i),
								metaBrickWall.makeStack(i));

	Stonecutter.addOutputs(metaCobble.makeStack(i),
								metaCobbleSlab.makeStack(i),
								metaCobbleStairs.makeStack(i),
								metaCobbleWall.makeStack(i));

	Stonecutter.addOutputs(metaStone.makeStack(i),
								metaStoneSlab.makeStack(i),
								metaBrick.makeStack(i),
								metaBrickSlab.makeStack(i),
								metaStairs.makeStack(i),
								metaBrickStairs.makeStack(i),									
								metaWall.makeStack(i),
								metaBrickWall.makeStack(i),
								foundation);

	// Sedimentary stone recipes

	Stonecutter.addOutputs(sediStone.makeStack(i),
								sediStoneSlab.makeStack(i),
								sediStairs.makeStack(i),
								sediWall.makeStack(i));
	
	// Igneous sandstone recipes

	Stonecutter.addOutputs(igSand.makeStack(i), 
								igSandSmooth.makeStack(i),
								igSandChisel.makeStack(i));

	Stonecutter.addOutputs(igSandSmooth.makeStack(i),
								igSandChisel.makeStack(i));

	// Metamorphic sandstone recipes

	Stonecutter.addOutputs(metaSand.makeStack(i), 
								metaSandSmooth.makeStack(i),
								metaSandChisel.makeStack(i));

	Stonecutter.addOutputs(metaSandSmooth.makeStack(i),
								metaSandChisel.makeStack(i));

	// Sedimentary sandstone recipes

	Stonecutter.addOutputs(sediSand.makeStack(i), 
								sediSandSmooth.makeStack(i),
								sediSandChisel.makeStack(i));

	Stonecutter.addOutputs(sediSandSmooth.makeStack(i),
								sediSandChisel.makeStack(i));

}

// BoP sandstone recipes

Stonecutter.addOutputs(<biomesoplenty:white_sandstone>,				// White Sandstone
							<biomesoplenty:white_sandstone:2>,		// Smooth White Sandstone
							<biomesoplenty:white_sandstone:1>,		// Chiseled White Sandstone
							<biomesoplenty:white_sandstone_stairs>,	// White Sandstone Stairs
							<biomesoplenty:other_slab:1>);			// White Sandstone Slab

Stonecutter.addOutputs(<biomesoplenty:white_sandstone:2>,			// Smooth White Sandstone
							<biomesoplenty:white_sandstone:1>);		// Chiseled White Sandstone
																	
// White stone recipes

Stonecutter.addOutputs(<betterwithmods:aesthetic:6>,
							<betterwithaddons:whitebrick>,
							<betterwithaddons:whitebrick:3>);

Stonecutter.addOutputs(<betterwithaddons:whitebrick>,
							<betterwithaddons:whitebrick:3>);

Stonecutter.addOutputs(<minecraft:quartz_block>,
							<quark:quartz_wall>,
							<netherex:quartz_wall>);

// Misc wall recipes

Stonecutter.addOutput(<minecraft:brick_block>,
							<ceramics:clay_wall>);

Stonecutter.removeOutputs(<minecraft:brick_block>,
							<futuremc:brick_wall>);

/*********************************************************************************

Blast Furnace Recipes

**********************************************************************************/

/****** Procedural OSV Ores ******/

var ores as IItemStack[string] = {
	"simpleores_copper_ore" : <simpleores:copper_ingot>,
	"redstone_ore" : <minecraft:redstone>,
	"biomesoplenty_peridot_ore" : <biomesoplenty:gem:2>,
	"coal_ore" : <minecraft:coal>,
	"emerald_ore" : <minecraft:emerald>,
	"diamond_ore" : <minecraft:diamond>,
	"lapis_ore" : <minecraft:dye:4>,
	"biomesoplenty_ruby_ore" : <biomesoplenty:gem:1>,
	"iceandfire_silver_ore" : <iceandfire:silver_ingot>,
	"iron_ore" : <minecraft:iron_ingot>,
	"biomesoplenty_sapphire_ore" : <biomesoplenty:gem:6>,
	"gold_ore" : <minecraft:gold_ingot>,
	"simpleores_mythril_ore" : <simpleores:mythril_ingot>,
	"simpleores_adamantium_ore" : <simpleores:adamantium_ingot>,
	"simpleores_tin_ore" : <simpleores:tin_ingot>
} as IItemStack[string];

var stones as string[] = [
	"undergroundbiomes_igneous_stone",
	"undergroundbiomes_metamorphic_stone",
	"undergroundbiomes_sedimentary_stone",
	"pyrotech_limestone",
	"quark_elder_prismarine",
	"hardened_clay",
	"stained_hardened_clay",
	"quark_biome_cobblestone",
	"quark_biome_cobblestone_1",
	"quark_biome_cobblestone_2",
	"sandstone",
	"red_sandstone"
] as string[];

for i in 1 to 8 {
	stones += "undergroundbiomes_igneous_stone_"~i;
	stones += "undergroundbiomes_metamorphic_stone_"~i;
	stones += "undergroundbiomes_sedimentary_stone_"~i;
}

for meta in 0 .. 8 {
	for stone in stones {
		for ore, result in ores {
			BlastFurnace.addRecipe(itemUtils.getItem("osv:"~ore~"_"~stone, meta), result);
		}									
	}
}

/******** Modded Ores *********/

var moddedBlastFurnaceRecipes as IItemStack[IItemStack] = {
	<biomesoplenty:gem_ore:1> : <biomesoplenty:gem:1>,		// Ruby
	<biomesoplenty:gem_ore:2> : <biomesoplenty:gem:2>,		// Peridot
	<biomesoplenty:gem_ore:6> : <biomesoplenty:gem:6>,		// Sapphire
	<iceandfire:silver_ore> : <iceandfire:silver_ingot>,
	<dungeontactics:enddiamond_ore> : <minecraft:diamond>,
	<dungeontactics:endlapis_ore> : <minecraft:dye:4>,		// Lapis
	<quark:biotite_ore> : <quark:biotite>,
	<simpleores:copper_ore> : <simpleores:copper_ingot>,
	<simpleores:tin_ore> : <simpleores:tin_ingot>,
	<simpleores:mythril_ore> : <simpleores:mythril_ingot>,
	<simpleores:adamantium_ore> : <simpleores:adamantium_ingot>,
	<simpleores:onyx_ore> : <simpleores:onyx_gem>,
} as IItemStack[IItemStack];

for ore, result in moddedBlastFurnaceRecipes {
	BlastFurnace.addRecipe(ore, result);
}

BlastFurnace.removeRecipe(<rustic:dust_tiny_iron>);


/*********************************************************************************

Smoker Recipes

**********************************************************************************/

var smokerRecipes as IItemStack[IItemStack] = {

	/****** Animania ******/

	<animania:raw_prime_beef> : <animania:cooked_prime_beef>,
	<animania:raw_prime_bacon> : <animania:cooked_prime_bacon>,
	<animania:raw_prime_chevon> : <animania:cooked_prime_chevon>,
	<animania:raw_prime_chicken> : <animania:cooked_prime_chicken>,
	<animania:raw_prime_mutton> : <animania:cooked_prime_mutton>,
	<animania:raw_prime_peacock> : <animania:cooked_prime_peacock>,
	<animania:raw_prime_pork> : <animania:cooked_prime_pork>,
	<animania:raw_prime_rabbit> : <animania:cooked_prime_rabbit>,
	<animania:raw_prime_steak> : <animania:cooked_prime_steak>,
	<animania:raw_frog_legs> : <animania:cooked_frog_legs>,
	<animania:raw_horse> : <animania:cooked_horse>,
	<animania:raw_chevon> : <animania:cooked_chevon>,
	<animania:raw_peacock> : <animania:cooked_peacock>,

	/****** Harvestcraft ******/

	<harvestcraft:musselrawitem> : <harvestcraft:musselcookeditem>,
	<harvestcraft:calamarirawitem> : <harvestcraft:calamaricookeditem>,
	<harvestcraft:clamrawitem> : <harvestcraft:clamcookeditem>,
	<harvestcraft:crabrawitem> : <harvestcraft:crabcookeditem>,
	<harvestcraft:crayfishrawitem> : <harvestcraft:crayfishcookeditem>,
	<harvestcraft:frograwitem> : <harvestcraft:frogcookeditem>,
	<harvestcraft:octopusrawitem> : <harvestcraft:octopuscookeditem>,
	<harvestcraft:scalloprawitem> : <harvestcraft:scallopcookeditem>,
	<harvestcraft:shrimprawitem> : <harvestcraft:shrimpcookeditem>,
	<harvestcraft:snailrawitem> : <harvestcraft:snailcookeditem>,
	<harvestcraft:turtlerawitem> : <harvestcraft:turtlecookeditem>,
	<harvestcraft:oysterrawitem> : <harvestcraft:oystercookeditem>,
	<harvestcraft:turkeyrawitem> : <harvestcraft:turkeycookeditem>,
	<harvestcraft:duckrawitem> : <harvestcraft:duckcookeditem>,
	<harvestcraft:rawtofeakitem> : <harvestcraft:cookedtofeakitem>,
	<harvestcraft:rawtofaconitem> : <harvestcraft:cookedtofaconitem>,
	<harvestcraft:rawtofishitem> : <harvestcraft:cookedtofishitem>,
	<harvestcraft:rawtofeegitem> : <harvestcraft:cookedtofeegitem>,
	<harvestcraft:rawtofuttonitem> : <harvestcraft:cookedtofuttonitem>,
	<harvestcraft:rawtofickenitem> : <harvestcraft:cookedtofickenitem>,
	<harvestcraft:rawtofabbititem> : <harvestcraft:cookedtofabbititem>,
	<harvestcraft:rawtofurkeyitem> : <harvestcraft:cookedtofurkeyitem>,
	<harvestcraft:rawtofenisonitem> : <harvestcraft:cookedtofenisonitem>,
	<harvestcraft:rawtofuduckitem> : <harvestcraft:cookedtofuduckitem>,

	/****** DT Potion Fish ******/

	<dungeontactics:fish_swift> : <dungeontactics:fish_swift_cooked>,
	<dungeontactics:fish_flying> : <dungeontactics:fish_flying_cooked>,
	<dungeontactics:fish_lava> : <dungeontactics:fish_lava_cooked>,
	<dungeontactics:fish_muscle> : <dungeontactics:fish_muscle_cooked>,
	<dungeontactics:fish_lung> : <dungeontactics:fish_lung_cooked>,
	<dungeontactics:fish_obsidian> : <dungeontactics:fish_obsidian_cooked>,
	<dungeontactics:fish_tunnel> : <dungeontactics:fish_tunnel_cooked>,

	/****** LAVACOWWW ******/

	<mod_lavacow:piranha> : <mod_lavacow:piranha_cooked>,
	<mod_lavacow:cheirolepis> : <mod_lavacow:cheirolepis_cooked>,
	<mod_lavacow:zombiepiranha_item> : <mod_lavacow:zombiepiranha_item_cooked>,


	/****** Other ******/

	<primitivemobs:dodo> : <primitivemobs:cooked_dodo>,
	<quark:crab_leg> : <quark:cooked_crab_leg>,
	<aether_legacy:enchanted_cockatrice> : <aether_legacy:cooked_enchanted_cockatrice>,
	<betteranimalsplus:venisonraw> : <betteranimalsplus:venisoncooked>,
	<betteranimalsplus:pheasantraw> : <betteranimalsplus:pheasantcooked>,
	<betteranimalsplus:crab_meat_raw> : <betteranimalsplus:crab_meat_cooked>,
	<betteranimalsplus:turkey_raw> : <betteranimalsplus:turkey_cooked>,
	<betteranimalsplus:turkey_leg_raw> : <betteranimalsplus:turkey_leg_cooked>,
	<betterwithmods:wolf_chop> : <betterwithmods:cooked_wolf_chop>,
	<betterwithmods:bat_wing> : <betterwithmods:cooked_bat_wing>,
	<minecraft:fish:2> : <betterwithaddons:food_clownfish_cooked>,
	<minecraft:fish:3> : <betterwithaddons:food_pufferfish_baked>,
	<rats:raw_rat> : <rats:cooked_rat>,
	<twilightforest:raw_meef> : <twilightforest:cooked_meef>
} as IItemStack[IItemStack];

var hcfish as IItemStack[] = [
	<harvestcraft:anchovyrawitem>,
	<harvestcraft:bassrawitem>,
	<harvestcraft:carprawitem>,
	<harvestcraft:catfishrawitem>,
	<harvestcraft:charrrawitem>,
	<harvestcraft:eelrawitem>,
	<harvestcraft:grouperrawitem>,
	<harvestcraft:herringrawitem>,
	<harvestcraft:mudfishrawitem>,
	<harvestcraft:perchrawitem>,
	<harvestcraft:snapperrawitem>,
	<harvestcraft:tilapiarawitem>,
	<harvestcraft:troutrawitem>,
	<harvestcraft:tunarawitem>,
	<harvestcraft:walleyerawitem>,
	<harvestcraft:greenheartfishitem>,
	<harvestcraft:sardinerawitem>
] as IItemStack[];

for fish in hcfish {
	smokerRecipes[fish] = <minecraft:cooked_fish:0>;
}

for raw, cooked in smokerRecipes {
	Smoker.addRecipe(raw, cooked);
}

Smoker.removeRecipe(<minecraft:apple>);


/*********************************************************************************

Campfire Recipes

**********************************************************************************/

var campfireRecipes600 as IItemStack[IItemStack] = {

	/****** Animania ******/

	<animania:raw_prime_beef> : <animania:cooked_prime_beef>,
	<animania:raw_prime_bacon> : <animania:cooked_prime_bacon>,
	<animania:raw_prime_chevon> : <animania:cooked_prime_chevon>,
	<animania:raw_prime_chicken> : <animania:cooked_prime_chicken>,
	<animania:raw_prime_mutton> : <animania:cooked_prime_mutton>,
	<animania:raw_prime_peacock> : <animania:cooked_prime_peacock>,
	<animania:raw_prime_pork> : <animania:cooked_prime_pork>,
	<animania:raw_prime_rabbit> : <animania:cooked_prime_rabbit>,
	<animania:raw_prime_steak> : <animania:cooked_prime_steak>,
	<animania:raw_frog_legs> : <animania:cooked_frog_legs>,
	<animania:raw_horse> : <animania:cooked_horse>,
	<animania:raw_chevon> : <animania:cooked_chevon>,
	<animania:raw_peacock> : <animania:cooked_peacock>,

	/****** Harvestcraft ******/

	<harvestcraft:musselrawitem> : <harvestcraft:musselcookeditem>,
	<harvestcraft:calamarirawitem> : <harvestcraft:calamaricookeditem>,
	<harvestcraft:clamrawitem> : <harvestcraft:clamcookeditem>,
	<harvestcraft:crabrawitem> : <harvestcraft:crabcookeditem>,
	<harvestcraft:crayfishrawitem> : <harvestcraft:crayfishcookeditem>,
	<harvestcraft:frograwitem> : <harvestcraft:frogcookeditem>,
	<harvestcraft:octopusrawitem> : <harvestcraft:octopuscookeditem>,
	<harvestcraft:scalloprawitem> : <harvestcraft:scallopcookeditem>,
	<harvestcraft:shrimprawitem> : <harvestcraft:shrimpcookeditem>,
	<harvestcraft:snailrawitem> : <harvestcraft:snailcookeditem>,
	<harvestcraft:turtlerawitem> : <harvestcraft:turtlecookeditem>,
	<harvestcraft:oysterrawitem> : <harvestcraft:oystercookeditem>,
	<harvestcraft:turkeyrawitem> : <harvestcraft:turkeycookeditem>,
	<harvestcraft:duckrawitem> : <harvestcraft:duckcookeditem>,
	<harvestcraft:rawtofeakitem> : <harvestcraft:cookedtofeakitem>,
	<harvestcraft:rawtofaconitem> : <harvestcraft:cookedtofaconitem>,
	<harvestcraft:rawtofishitem> : <harvestcraft:cookedtofishitem>,
	<harvestcraft:rawtofeegitem> : <harvestcraft:cookedtofeegitem>,
	<harvestcraft:rawtofuttonitem> : <harvestcraft:cookedtofuttonitem>,
	<harvestcraft:rawtofickenitem> : <harvestcraft:cookedtofickenitem>,
	<harvestcraft:rawtofabbititem> : <harvestcraft:cookedtofabbititem>,
	<harvestcraft:rawtofurkeyitem> : <harvestcraft:cookedtofurkeyitem>,
	<harvestcraft:rawtofenisonitem> : <harvestcraft:cookedtofenisonitem>,
	<harvestcraft:rawtofuduckitem> : <harvestcraft:cookedtofuduckitem>,

	/****** DT Potion Fish ******/

	<dungeontactics:fish_swift> : <dungeontactics:fish_swift_cooked>,
	<dungeontactics:fish_flying> : <dungeontactics:fish_flying_cooked>,
	<dungeontactics:fish_lava> : <dungeontactics:fish_lava_cooked>,
	<dungeontactics:fish_muscle> : <dungeontactics:fish_muscle_cooked>,
	<dungeontactics:fish_lung> : <dungeontactics:fish_lung_cooked>,
	<dungeontactics:fish_obsidian> : <dungeontactics:fish_obsidian_cooked>,
	<dungeontactics:fish_tunnel> : <dungeontactics:fish_tunnel_cooked>,

	/****** LAVACOWWW ******/

	<mod_lavacow:piranha> : <mod_lavacow:piranha_cooked>,
	<mod_lavacow:cheirolepis> : <mod_lavacow:cheirolepis_cooked>,
	<mod_lavacow:zombiepiranha_item> : <mod_lavacow:zombiepiranha_item_cooked>,


	/****** Other ******/

	<primitivemobs:dodo> : <primitivemobs:cooked_dodo>,
	<quark:crab_leg> : <quark:cooked_crab_leg>,
	<aether_legacy:enchanted_cockatrice> : <aether_legacy:cooked_enchanted_cockatrice>,
	<betteranimalsplus:venisonraw> : <betteranimalsplus:venisoncooked>,
	<betteranimalsplus:pheasantraw> : <betteranimalsplus:pheasantcooked>,
	<betteranimalsplus:crab_meat_raw> : <betteranimalsplus:crab_meat_cooked>,
	<betteranimalsplus:turkey_raw> : <betteranimalsplus:turkey_cooked>,
	<betteranimalsplus:turkey_leg_raw> : <betteranimalsplus:turkey_leg_cooked>,
	<betterwithmods:wolf_chop> : <betterwithmods:cooked_wolf_chop>,
	<betterwithmods:bat_wing> : <betterwithmods:cooked_bat_wing>,
	<betterwithmods:mystery_meat> : <betterwithmods:cooked_mystery_meat>,
	<minecraft:fish:2> : <betterwithaddons:food_clownfish_cooked>,
	<minecraft:fish:3> : <betterwithaddons:food_pufferfish_baked>,
	<rats:raw_rat> : <rats:cooked_rat>,
	<twilightforest:raw_meef> : <twilightforest:cooked_meef>
} as IItemStack[IItemStack];

for fish in hcfish {
	campfireRecipes600[fish] = <minecraft:cooked_fish:0>;
}

for raw, cooked in campfireRecipes600 {
	Campfire.addRecipe(raw, cooked, 600);
}
