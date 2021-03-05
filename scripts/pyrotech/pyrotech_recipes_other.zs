import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.MechanicalCompactor;
import mods.pyrotech.DryingRack;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;

JEI.removeAndHide(<pyrotech:crate>);

CompactingBin.removeAllRecipes();
CompactingBin.addRecipe("dirt_from_pile", <minecraft:dirt>, <betterwithmods:dirt_pile>, 4);
CompactingBin.addRecipe("chips_pile_from_chips", <pyrotech:pile_wood_chips>, <pyrotech:rock:7>, 8);
CompactingBin.addRecipe("ash_pile_from_ash", <biomesoplenty:ash_block>, <biomesoplenty:ash>, 9);
CompactingBin.addRecipe("ash_pile_from_big_ash", <biomesoplenty:ash_block>, <pyrotech:material>, 3);
CompactingBin.addRecipe("magma_verus_block", <betterwithaddons:elytra_magma>, <betterwithaddons:material:6>, 4);
CompactingBin.addRecipe("rat_cheese_block", <rats:block_of_cheese>, <ore:foodCheese>, 4);
CompactingBin.addRecipe("congealed_bone_block", <betternether:bone_block>, <betterwithaddons:congealed>, 3);
CompactingBin.addRecipe("modeling_refractory", <contenttweaker:modelingrefractory>, <contenttweaker:unfiredrefractory>, 4);
CompactingBin.addRecipe("modeling_refractory1", <contenttweaker:modelingrefractory>, <pyrotech:material:4>, 16);
CompactingBin.addRecipe("wax_block", <harvestcraft:pressedwax>, <rustic:beeswax>, 4);

DryingRack.removeRecipes(<pyrotech:material:2>);
DryingRack.addRecipe("dried_jute", <pyrotech:material:2>, <harvestcraft:juteitem>, 2 * 60 * 20);
DryingRack.addRecipe("dried_soap", <betterwithmods:aesthetic:10>, <betterwithaddons:wet_soap>, 3 * 60 * 20);

SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<pyrotech:material:31>);
SoakingPot.removeRecipes(<pyrotech:material:30>);
SoakingPot.removeRecipes(<pyrotech:material:23>);
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:living_tar>);
SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:wood_tar_block>);
SoakingPot.addRecipe("yute_fiber", <betterwithmods:material:3>*5, <liquid:water>*500, <pyrotech:material:2>, 5 * 60 * 20);
SoakingPot.addRecipe("carmin_vinegar", <harvestcraft:vinegaritem>, <liquid:wildberryjuice>*100, <mod_lavacow:intestine>, 2 * 60 * 20);
SoakingPot.addRecipe("carmin_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:wildberryjuice>*100, <ore:agedMold>, 30 * 20);
SoakingPot.addRecipe("grape_vinegar", <harvestcraft:vinegaritem>, <liquid:grapejuice>*100, <mod_lavacow:intestine>, 2 * 60 * 20);
SoakingPot.addRecipe("grape_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:grapejuice>*100, <ore:agedMold>, 30 * 20);
SoakingPot.addRecipe("apple_vinegar", <harvestcraft:vinegaritem>, <liquid:applejuice>*100, <mod_lavacow:intestine>, 2 * 60 * 20);
SoakingPot.addRecipe("apple_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:applejuice>*100, <ore:agedMold>, 30 * 20);
SoakingPot.addRecipe("tarred_tar_hay", <pyrotech:wood_tar_block>*5, <liquid:wood_tar>*250, <minecraft:hay_block>, 5 * 60 * 20);
SoakingPot.addRecipe("refractory_limerock", <pyrotech:material:8>, <liquid:water>*200, <pyrotech:rock:8>, 8 * 60 * 20);
SoakingPot.addRecipe("refractory_coke", <pyrotech:material:8>*2, <liquid:wood_tar>*50, <pyrotech:material:32>, 6 * 60 * 20);
SoakingPot.addRecipe("vis_sliver", <contenttweaker:vis_sliver>, <liquid:lunar_water>*1000, <contenttweaker:vis_speck>, 5 * 60 * 20);
SoakingPot.addRecipe("vis_shard", <contenttweaker:vis_shard>, <liquid:lunar_water>*2000, <contenttweaker:vis_sliver>, 10 * 60 * 20);
SoakingPot.addRecipe("blood_moon_spirits", <betterwithaddons:ancestry_bottle>, <liquid:lifeblood>*500, <nyx:lunar_water_bottle>, 8 * 60 * 20);
SoakingPot.addRecipe("mythril_stone_ingots", <simpleores:mythril_ingot>, <liquid:lifeblood>*950, <pyrotech:material:16>, 10 * 75 * 30);
SoakingPot.addRecipe("unliving_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*2000, <charm:rotten_flesh_block>, 12 * 60 * 20);
SoakingPot.addRecipe("sloth_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*500, <biomesoplenty:flesh>, 28 * 60 * 20);
SoakingPot.addRecipe("mossy_white_stone_bricks", <betterwithaddons:whitebrick:1>, <liquid:water>*250, <betterwithaddons:whitebrick:0>, 7 * 60 * 20);
SoakingPot.addRecipe("wet_soap", <betterwithaddons:wet_soap>, <liquid:water>*250, <betterwithmods:aesthetic:10>, 20 * 20);

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

Burn.createBuilder("molten_spirit_vanilla", <pyrotech:material:16>, "simpleores:mythril_ore")
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
