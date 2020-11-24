import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <ore:dung>, <liquid:water>, 4, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <ore:barkWood>, <liquid:water>, 1, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:tannin>, <biomesoplenty:persimmon>|<harvestcraft:persimmonitem>, <liquid:water>, 2, true);
// Lunar Water: Obtainable from cauldrons using bottles / Placeable in cauldrons
mods.inspirations.Cauldron.addFluidRecipe(<nyx:lunar_water_bottle>, <minecraft:glass_bottle>, <liquid:lunar_water>, 1);
mods.inspirations.Cauldron.addFillRecipe(<nyx:lunar_water_bottle>, <liquid:lunar_water>, 1, <minecraft:glass_bottle>);

// Magic powder 
mods.inspirations.Cauldron.addFluidRecipe(<dungeontactics:magic_powder>, <contenttweaker:magic_blend>, <liquid:lunar_water>, 1, false);

//mods.inspirations.Cauldron.addFluidRecipe(<dungeontactics:magic_powder>*2, <contenttweaker:magic_blend>, <liquid:mythril>, 1, true);

// Cyclic Corrupted Chorus Fruit
////The Chorus Bead can be enabled in a future update as part of a late-game magic recipe.
//mods.inspirations.Cauldron.addPotionRecipe(<cyclicmagic:corrupted_chorus>, <quark:soul_bead>, "extraalchemy:dislocation_normal", 4, true); 

// Cyclic Moon Phase Detector
mods.inspirations.Cauldron.addFluidRecipe(<cyclicmagic:moon_sensor>, <minecraft:daylight_detector>, <liquid:lunar_water>, 1);

// Soaking manuscript
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:paper>, <iceandfire:manuscript>, <liquid:water>);

// Solid Core Egg
mods.inspirations.Cauldron.addPotionRecipe(<contenttweaker:egg_block>, <ore:listAllegg>, "potioncore:solid_core", 1, false); 


###Potion Recipes###
//mods.inspirations.Cauldron.addBrewingRecipe(String output, String input, IIngredient reagent);
mods.inspirations.Cauldron.addBrewingRecipe("potioncore:solid_core", "minecraft:slowness", <contenttweaker:holding_quintessence>);