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

DryingRack.removeRecipes(<pyrotech:material:2>);
DryingRack.addRecipe("dried_jute", <pyrotech:material:2>, <harvestcraft:juteitem>, 120 * 20);

SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<pyrotech:material:31>);
SoakingPot.removeRecipes(<pyrotech:material:30>);
SoakingPot.removeRecipes(<pyrotech:material:23>);
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:living_tar>);
SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:wood_tar_block>);
SoakingPot.addRecipe("blood_moon_spirits", <betterwithaddons:ancestry_bottle>, <liquid:flowing_souls>*500, <nyx:lunar_water_bottle>, 8 * 60 * 20);
SoakingPot.addRecipe("mythril_stone_ingots", <simpleores:mythril_ingot>, <liquid:flowing_souls>*800, <pyrotech:material:16>, 10 * 75 * 30);
SoakingPot.addRecipe("yute_fiber", <betterwithmods:material:3>*5, <liquid:water>*500, <pyrotech:material:2>, 5 * 60 * 20);

furnace.remove(<pyrotech:material:22>);

Burn.removeRecipes(<pyrotech:material:23>);

Burn.createBuilder("molten_soul_vanilla", <pyrotech:material:16>, "simpleores:mythril_ore")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_souls> * 1000)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("molten_soul_igneous", <pyrotech:material:16>, "undergroundbiomes:igneous_stone_simpleores_mythril_ore:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_souls> * 1000)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("molten_soul_metamorphic", <pyrotech:material:16>, "undergroundbiomes:metamorphic_stone_simpleores_mythril_ore:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_souls> * 1000)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("molten_soul_sedimentary", <pyrotech:material:16>, "undergroundbiomes:sedimentary_stone_simpleores_mythril_ore:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:flowing_souls> * 1000)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();