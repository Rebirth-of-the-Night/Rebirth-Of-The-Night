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

furnace.remove(<pyrotech:material:22>);

Burn.removeRecipes(<pyrotech:material:23>);
