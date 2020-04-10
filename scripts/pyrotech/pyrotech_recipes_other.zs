import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.DryingRack;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;

CompactingBin.removeAllRecipes();
CompactingBin.addRecipe("ash_pile_from_ash", <pyrotech:pile_wood_chips>, <pyrotech:rock:7>, 4);
CompactingBin.addRecipe("starblock_from_stars", <contenttweaker:starblock>, <nyx:fallen_star>, 2);
CompactingBin.addRecipe("magma_verus_block", <betterwithaddons:elytra_magma>, <betterwithaddons:material:6>, 4);

DryingRack.removeRecipes(<pyrotech:material:2>);

SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<pyrotech:material:31>);
SoakingPot.removeRecipes(<pyrotech:material:30>);
SoakingPot.removeRecipes(<pyrotech:material:23>);
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:living_tar>);
SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:wood_tar_block>);
SoakingPot.addRecipe("blood_moon_spirits", <betterwithaddons:ancestry_bottle>, <liquid:blood>, <nyx:lunar_water_bottle>, 8 * 60 * 20);
SoakingPot.addRecipe("mythril_stone_ingots", <simpleores:mythril_ingot>, <liquid:flowing_souls>, <pyrotech:material:16>, 10 * 75 * 30);

furnace.remove(<pyrotech:material:22>);

Burn.removeRecipes(<pyrotech:material:23>);
var mythrilore = ["simpleores:mythril_ore","undergroundbiomes:igneous_stone_simpleores_mythril_ore:*","undergroundbiomes:metamorphic_stone_simpleores_mythril_ore:*","undergroundbiomes:sedimentary_stone_simpleores_mythril_ore:*"] as string[];
var mythname = ["molten_soul_vanilla","molten_soul_igneous","molten_soul_metamorphic","molten_soul_sedimentary"] as string[];

for i,ores in mythrilore{
Burn.createBuilder(mythname[i], <pyrotech:material:16>, ores)
    .setBurnStages(1)
    .setTotalBurnTimeTicks(1 * 60 * 20)
    .setFluidProduced(<liquid:mythril> * 100)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();
    }