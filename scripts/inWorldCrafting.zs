import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.inworldcrafting.FluidToItem;

// ground netherrack to nether sludge
FluidToItem.transform(<betterwithmods:material:15>, <liquid:water>, [<betterwithmods:material:35>], false);
// ground fiery netherrack to fiery sludge
FluidToItem.transform(<contenttweaker:fiery_sludge>, <liquid:water>, [<contenttweaker:ground_fiery_netherrack>], false);
