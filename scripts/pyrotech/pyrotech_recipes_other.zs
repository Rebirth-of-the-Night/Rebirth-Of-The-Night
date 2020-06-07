import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.DryingRack;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;

CompactingBin.removeAllRecipes();
CompactingBin.addRecipe("ash_pile_from_ash", <pyrotech:pile_wood_chips>, <pyrotech:rock:7>, 4);
CompactingBin.addRecipe("starblock_from_stars", <contenttweaker:starblock>, <nyx:fallen_star>, 2);
CompactingBin.addRecipe("magma_verus_block", <betterwithaddons:elytra_magma>, <betterwithaddons:material:6>, 4);
CompactingBin.addRecipe("rat_cheese_block", <rats:block_of_cheese>, <ore:foodCheese>, 4);
CompactingBin.addRecipe("congealed_bone_block", <betternether:bone_block>, <betterwithaddons:congealed>, 3);

DryingRack.removeRecipes(<pyrotech:material:2>);
DryingRack.addRecipe("dried_jute", <pyrotech:material:2>, <harvestcraft:juteitem>, 120 * 20);
//DryingRack.addRecipe("renovable_wax", <harvestcraft:waxcombitem>, <minecraftfuture:honeycomb>, 60 * 20);

SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<pyrotech:material:31>);
SoakingPot.removeRecipes(<pyrotech:material:30>);
SoakingPot.removeRecipes(<pyrotech:material:23>);
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:living_tar>);
SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:wood_tar_block>);
SoakingPot.addRecipe("blood_moon_spirits", <betterwithaddons:ancestry_bottle>, <liquid:flowing_spirits>*500, <nyx:lunar_water_bottle>, 8 * 60 * 20);
SoakingPot.addRecipe("mythril_stone_ingots", <simpleores:mythril_ingot>, <liquid:flowing_spirits>*950, <pyrotech:material:16>, 10 * 75 * 30);
SoakingPot.addRecipe("yute_fiber", <betterwithmods:material:3>*5, <liquid:water>*500, <pyrotech:material:2>, 5 * 60 * 20);
SoakingPot.addRecipe("tarred_tar_hay", <betterwithmods:material:3>*5, <liquid:wood_tar>*250, <minecraft:hay_block>, 5 * 60 * 20);
SoakingPot.addRecipe("white_concrete", <minecraft:concrete:0>*8, <liquid:water>*500, <minecraft:concrete_powder:0>*8, 5 * 60 * 20);
SoakingPot.addRecipe("orange_concrete", <minecraft:concrete:1>*8, <liquid:water>*500, <minecraft:concrete_powder:1>*8, 5 * 60 * 20);
SoakingPot.addRecipe("magenta_concrete", <minecraft:concrete:2>*8, <liquid:water>*500, <minecraft:concrete_powder:2>*8, 5 * 60 * 20);
SoakingPot.addRecipe("light_blue_concrete", <minecraft:concrete:3>*8, <liquid:water>*500, <minecraft:concrete_powder:3>*8, 5 * 60 * 20);
SoakingPot.addRecipe("yellow_concrete", <minecraft:concrete:4>*8, <liquid:water>*500, <minecraft:concrete_powder:4>*8, 5 * 60 * 20);
SoakingPot.addRecipe("lime_concrete", <minecraft:concrete:5>*8, <liquid:water>*500, <minecraft:concrete_powder:5>*8, 5 * 60 * 20);
SoakingPot.addRecipe("pink_concrete", <minecraft:concrete:6>*8, <liquid:water>*500, <minecraft:concrete_powder:6>*8, 5 * 60 * 20);
SoakingPot.addRecipe("gray_concrete", <minecraft:concrete:7>*8, <liquid:water>*500, <minecraft:concrete_powder:7>*8, 5 * 60 * 20);
SoakingPot.addRecipe("light_gray_concrete", <minecraft:concrete:8>*8, <liquid:water>*500, <minecraft:concrete_powder:8>*8, 5 * 60 * 20);
SoakingPot.addRecipe("cyan_concrete", <minecraft:concrete:9>*8, <liquid:water>*500, <minecraft:concrete_powder:9>*8, 5 * 60 * 20);
SoakingPot.addRecipe("purple_concrete", <minecraft:concrete:10>*8, <liquid:water>*500, <minecraft:concrete_powder:10>*8, 5 * 60 * 20);
SoakingPot.addRecipe("blue_concrete", <minecraft:concrete:11>*8, <liquid:water>*500, <minecraft:concrete_powder:11>*8, 5 * 60 * 20);
SoakingPot.addRecipe("brown_concrete", <minecraft:concrete:12>*8, <liquid:water>*500, <minecraft:concrete_powder:12>*8, 5 * 60 * 20);
SoakingPot.addRecipe("green_concrete", <minecraft:concrete:13>*8, <liquid:water>*500, <minecraft:concrete_powder:13>*8, 5 * 60 * 20);
SoakingPot.addRecipe("red_concrete", <minecraft:concrete:14>*8, <liquid:water>*500, <minecraft:concrete_powder:14>*8, 5 * 60 * 20);
SoakingPot.addRecipe("black_concrete", <minecraft:concrete:15>*8, <liquid:water>*500, <minecraft:concrete_powder:15>*8, 5 * 60 * 20);
SoakingPot.addRecipe("refractory_limerock", <pyrotech:material:4>*5, <liquid:water>*200, <pyrotech:rock:8>, 6 * 60 * 20);
SoakingPot.addRecipe("unliving_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*2000, <charm:rotten_flesh_block>, 12 * 60 * 20);
SoakingPot.addRecipe("sloth_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*500, <biomesoplenty:flesh>, 28 * 60 * 20);
SoakingPot.addRecipe("mossy_white_stone_bricks", <betterwithaddons:whitebrick:1>, <liquid:water>*250, <betterwithaddons:whitebrick:0>, 7 * 60 * 20);



furnace.remove(<pyrotech:material:22>);

Burn.removeRecipes(<pyrotech:material:23>);

Burn.createBuilder("molten_spirit_vanilla", <pyrotech:material:16>, "simpleores:mythril_ore")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_spirits> * 1000)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("molten_spirit_igneous", <pyrotech:material:16>, "undergroundbiomes:igneous_stone_simpleores_mythril_ore:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_spirits> * 1000)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("molten_spirit_metamorphic", <pyrotech:material:16>, "undergroundbiomes:metamorphic_stone_simpleores_mythril_ore:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_spirits> * 1000)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("molten_spirit_sedimentary", <pyrotech:material:16>, "undergroundbiomes:sedimentary_stone_simpleores_mythril_ore:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_spirits> * 1000)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("molten_spirit_onyx", <pyrotech:rock:0>, "simpleores:onyx_ore")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(5 * 60 * 20)
    .setFluidProduced(<liquid:flowing_spirits> * 2500)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(false)
    .register();
