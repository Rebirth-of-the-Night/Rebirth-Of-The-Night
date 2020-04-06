import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.DryingRack;

CompactingBin.removeAllRecipes();
CompactingBin.addRecipe("ash_pile_from_ash", <pyrotech:pile_wood_chips>, <pyrotech:rock:7>, 4);
CompactingBin.addRecipe("starblock_from_stars", <contenttweaker:starblock>, <nyx:fallen_star>, 2);

DryingRack.removeRecipes(<pyrotech:material:2>);