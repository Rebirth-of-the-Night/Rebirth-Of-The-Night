import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.MechanicalCompactor;
import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.DryingRack;
import mods.pyrotech.Campfire;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;

JEI.removeAndHide(<pyrotech:crate>);
JEI.removeAndHide(<pyrotech:material:16>);
JEI.removeAndHide(<pyrotech:quartz_axe>);
JEI.removeAndHide(<pyrotech:quartz_hoe>);
JEI.removeAndHide(<pyrotech:quartz_pickaxe>);
JEI.removeAndHide(<pyrotech:quartz_shovel>);
JEI.removeAndHide(<pyrotech:quartz_sword>);

CompactingBin.removeAllRecipes();
MechanicalCompactor.removeAllRecipes();

CompactingBin.addRecipe("dirt_from_pile", <minecraft:dirt>, <betterwithmods:dirt_pile>, 4, true);
CompactingBin.addRecipe("rammed_from_dirt", <contenttweaker:rammed_earth_vanilla_dirt>, <minecraft:dirt>, 3, true);
CompactingBin.addRecipe("rammed_from_loamy", <contenttweaker:rammed_earth_loamy_dirt>, <biomesoplenty:dirt:0>, 3, true);
CompactingBin.addRecipe("rammed_from_sandy", <contenttweaker:rammed_earth_sandy_dirt>, <biomesoplenty:dirt:1>, 3, true);
CompactingBin.addRecipe("rammed_from_silty", <contenttweaker:rammed_earth_silty_dirt>, <biomesoplenty:dirt:2>, 3, true);
CompactingBin.addRecipe("chips_pile_from_chips", <pyrotech:pile_wood_chips>, <pyrotech:rock:7>, 8, true);
CompactingBin.addRecipe("ash_pile_from_ash", <biomesoplenty:ash_block>, <biomesoplenty:ash>, 9, true);
CompactingBin.addRecipe("ash_pile_from_big_ash", <biomesoplenty:ash_block>, <pyrotech:material>, 3, true);
CompactingBin.addRecipe("magma_verus_block", <betterwithaddons:elytra_magma>, <betterwithaddons:material:6>, 4, true);
CompactingBin.addRecipe("rat_cheese_block", <rats:block_of_cheese>, <ore:foodCheese>, 4, true);
CompactingBin.addRecipe("congealed_bone_block", <betternether:bone_block>, <betterwithaddons:congealed>, 3, true);
CompactingBin.addRecipe("modeling_refractory", <contenttweaker:modelingrefractory>, <contenttweaker:unfiredrefractory>, 4, true);
CompactingBin.addRecipe("modeling_refractory1", <contenttweaker:modelingrefractory>, <pyrotech:material:4>, 16, true);
CompactingBin.addRecipe("wax_block", <harvestcraft:pressedwax>, <rustic:beeswax>, 4, true);
CompactingBin.addRecipe("bonemeal_antidupe", <minecraft:bone_block>, <minecraft:dye:15>, 9, true);

CrudeDryingRack.removeRecipes(<pyrotech:material:2>);
CrudeDryingRack.removeRecipes(<pyrotech:material:13>);
DryingRack.removeRecipes(<pyrotech:material:2>);
DryingRack.removeRecipes(<pyrotech:material:13>);

DryingRack.addRecipe("clay_bricks", <minecraft:brick>, <betterwithmods:unfired_pottery:4>, 15 * 60 * 20);
DryingRack.addRecipe("mud_bricks", <biomesoplenty:mud_brick>, <contenttweaker:unfired_mud_brick>, 15 * 60 * 20);
DryingRack.addRecipe("adobe_bricks", <earthworks:item_adobe>, <contenttweaker:unfired_adobe_brick>, 15 * 60 * 20);
DryingRack.addRecipe("refractory_bricks", <pyrotech:material:5>, <contenttweaker:unfired_refractory_brick>, 15 * 60 * 20);
DryingRack.addRecipe("nether_bricks", <minecraft:netherbrick>, <betterwithmods:unfired_pottery:5>, 15 * 60 * 20);
DryingRack.addRecipe("fiery_nether_bricks", <netherex:fiery_netherbrick>, <betterwithmods:unfired_pottery:4>, 15 * 60 * 20);
DryingRack.addRecipe("porcelain_bricks", <ceramics:unfired_clay:5>, <contenttweaker:unfired_porcelain_brick>, 15 * 60 * 20);
CrudeDryingRack.addRecipe("dried_jute", <pyrotech:material:2>, <harvestcraft:juteitem>, 5 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_fiber_fresh", <pyrotech:tinder>, <pyrotech:material:12>, 5 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_fiber_sapling", <pyrotech:tinder>, <ore:treeSapling>, 5 * 60 * 20, true);
CrudeDryingRack.addRecipe("dry_adobe", <earthworks:item_adobe>, <contenttweaker:unfired_adobe_brick>, 7 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_soap", <betterwithmods:aesthetic:10>, <betterwithaddons:wet_soap>, 5 * 60 * 20, true);

SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<pyrotech:material:31>);
SoakingPot.removeRecipes(<pyrotech:material:30>);
SoakingPot.removeRecipes(<pyrotech:material:23>);
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:living_tar>);
SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:wood_tar_block>);
SoakingPot.removeRecipes(<minecraft:stonebrick:1>);
SoakingPot.addRecipe("mossy_stone_bricks", <minecraft:stonebrick:1>, <liquid:water>*500, <contenttweaker:brick_minecraft_stone>, 7 * 60 * 20);
SoakingPot.addRecipe("yute_fiber", <betterwithmods:material:3>*5, <liquid:water>*500, <pyrotech:material:2>, 5 * 60 * 20);
SoakingPot.addRecipe("carmin_vinegar", <harvestcraft:vinegaritem>, <liquid:wildberryjuice>*100, <mod_lavacow:intestine>, 2 * 60 * 20);
SoakingPot.addRecipe("carmin_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:wildberryjuice>*100, <ore:agedMold>, 30 * 20);
SoakingPot.addRecipe("grape_vinegar", <harvestcraft:vinegaritem>, <liquid:grapejuice>*100, <mod_lavacow:intestine>, 2 * 60 * 20);
SoakingPot.addRecipe("grape_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:grapejuice>*100, <ore:agedMold>, 30 * 20);
SoakingPot.addRecipe("apple_vinegar", <harvestcraft:vinegaritem>, <liquid:applejuice>*100, <mod_lavacow:intestine>, 2 * 60 * 20);
SoakingPot.addRecipe("apple_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:applejuice>*100, <ore:agedMold>, 30 * 20);
SoakingPot.addRecipe("tarred_tar_hay", <pyrotech:wood_tar_block>*5, <liquid:wood_tar>*250, <minecraft:hay_block>, 5 * 60 * 20);
SoakingPot.addRecipe("refractory_limerock", <pyrotech:material:8>, <liquid:water>*200, <pyrotech:rock:8>, 8 * 60 * 20);
SoakingPot.addRecipe("refractory_coke", <pyrotech:material:8>*4, <liquid:wood_tar>*50, <pyrotech:material:32>, 6 * 60 * 20);
SoakingPot.addRecipe("vis_sliver", <contenttweaker:vis_sliver>, <liquid:lunar_water>*1000, <contenttweaker:vis_speck>, 5 * 60 * 20);
SoakingPot.addRecipe("vis_shard", <contenttweaker:vis_shard>, <liquid:lunar_water>*2000, <contenttweaker:vis_sliver>, 10 * 60 * 20);
SoakingPot.addRecipe("blood_moon_spirits", <betterwithaddons:ancestry_bottle>, <liquid:lifeblood>*500, <nyx:lunar_water_bottle>, 8 * 60 * 20);
SoakingPot.addRecipe("mythril_stone_ingots", <simpleores:mythril_ingot>, <liquid:lifeblood>*950, <contenttweaker:masonry_brick>, 10 * 75 * 30);
SoakingPot.addRecipe("unliving_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*2000, <charm:rotten_flesh_block>, 12 * 60 * 20);
SoakingPot.addRecipe("sloth_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*500, <biomesoplenty:flesh>, 28 * 60 * 20);
SoakingPot.addRecipe("mossy_white_stone_bricks", <betterwithaddons:whitebrick:1>, <liquid:water>*250, <contenttweaker:brick_betterwithaddons_whitebrick>, 7 * 60 * 20);
SoakingPot.addRecipe("wet_soap", <betterwithaddons:wet_soap>, <liquid:water>*250, <betterwithmods:aesthetic:10>, 20 * 20);

// Campfire recipes
// remove non roasted recipes
Campfire.blacklistSmeltingRecipes([<animania:plain_omelette>]);
Campfire.blacklistSmeltingRecipes([<minecraft:cookie>]);
Campfire.blacklistSmeltingRecipes([<minecraft:rotten_flesh>]);
Campfire.blacklistSmeltingRecipes([<netherex:ghast_meat_cooked>]);
Campfire.blacklistSmeltingRecipes([<pyrotech:book>]);

Campfire.addRecipe("traditional_marshmallow", <pyrotech:marshmallow_roasted>.withTag({}), <pyrotech:marshmallow>);
Campfire.addRecipe("burned_marshmallow", <pyrotech:marshmallow_burned>, <pyrotech:marshmallow_roasted>.withTag({}));
Campfire.addRecipe("roasted_egg_a", <pyrotech:egg_roasted>, <minecraft:egg>);
Campfire.addRecipe("roasted_egg_b", <pyrotech:egg_roasted>, <animania:brown_egg>);
Campfire.addRecipe("roasted_egg_c", <pyrotech:egg_roasted>, <animania:peacock_egg_blue>);
Campfire.addRecipe("roasted_egg_d", <pyrotech:egg_roasted>, <animania:peacock_egg_white>);
Campfire.addRecipe("roasted_egg_e", <pyrotech:egg_roasted>, <betteranimalsplus:pheasant_egg>);
Campfire.addRecipe("roasted_egg_f", <pyrotech:egg_roasted>, <betteranimalsplus:turkey_egg>);
Campfire.addRecipe("roasted_egg_g", <pyrotech:egg_roasted>, <betteranimalsplus:goose_egg>);
Campfire.addRecipe("roasted_egg_h", <pyrotech:egg_roasted>, <iceandfire:rotten_egg>);
Campfire.addRecipe("roasted_egg_i", <pyrotech:egg_roasted>, <primitivemobs:dodo_egg>);
Campfire.addRecipe("roasted_egg_j", <pyrotech:egg_roasted>, <quark:parrot_egg>);
Campfire.addRecipe("roasted_egg_k", <pyrotech:egg_roasted>, <quark:parrot_egg:1>);
Campfire.addRecipe("roasted_egg_l", <pyrotech:egg_roasted>, <quark:parrot_egg:2>);
Campfire.addRecipe("roasted_egg_m", <pyrotech:egg_roasted>, <quark:parrot_egg:3>);
Campfire.addRecipe("roasted_egg_n", <pyrotech:egg_roasted>, <quark:parrot_egg:4>);
Campfire.addRecipe("roasted_egg_o", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 0}));
Campfire.addRecipe("roasted_egg_p", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 1}));
Campfire.addRecipe("roasted_egg_q", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 2}));
Campfire.addRecipe("roasted_egg_r", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 3}));

// concrete
for i in 0 to 16 {
    SoakingPot.addRecipe("concrete_"~i, itemUtils.getItem("minecraft:concrete", i), <liquid:water>*50, itemUtils.getItem("minecraft:concrete_powder", i), 1 * 60 * 20);
}

// Mossy stone recipes
val ignMossyDef = <undergroundbiomes:igneous_cobble_mossy>.definition;
val ignCobbleDef = <undergroundbiomes:igneous_cobble>.definition;
val metaMossyDef = <undergroundbiomes:metamorphic_cobble_mossy>.definition;
val metaCobbleDef = <undergroundbiomes:metamorphic_cobble>.definition;

for i in 0 to 8 {
    SoakingPot.addRecipe("igneous_cobble_to_mossy_"~i, ignMossyDef.makeStack(i), <liquid:water>*250, ignCobbleDef.makeStack(i), 7 * 60 * 20);
    SoakingPot.addRecipe("metamorphic_cobble_to_mossy_"~i, metaMossyDef.makeStack(i), <liquid:water>*250, metaCobbleDef.makeStack(i), 7 * 60 * 20);
}

furnace.remove(<pyrotech:material:22>);

Burn.removeRecipes(<pyrotech:material:23>);

Burn.createBuilder("molten_spirit_vanilla", <contenttweaker:masonry_brick>, "simpleores:mythril_ore")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:lifeblood> * 1000)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("distilled_enderslag", <betterwithmods:material:39>, "endreborn:block_entropy_end_stone")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(1 * 60 * 20)
    .setFluidProduced(<liquid:ender_slag> * 250)
	.setFailureChance(0.33)
    .addFailureItem(<betterwithmods:material:39>) // enderslag
    .addFailureItem(<betterwithmods:material:39>*2) // enderslag
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();
