import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

//Lunar Water: Obtainable from cauldrons using bottles / Placeable in cauldrons
mods.inspirations.Cauldron.addFluidRecipe(<nyx:lunar_water_bottle>, <minecraft:glass_bottle>, <liquid:lunar_water>, 1);
mods.inspirations.Cauldron.addFillRecipe(<nyx:lunar_water_bottle>, <liquid:lunar_water>, 1, <minecraft:glass_bottle>);

//Magic powder 
mods.inspirations.Cauldron.addFluidRecipe(<dungeontactics:magic_powder>, <minecraft:glowstone_dust>|<aether_legacy:ambrosium_shard>, <liquid:mushroom_stew>, 1, true);

//Cyclic Corrupted Chorus Fruit
mods.inspirations.Cauldron.addPotionRecipe(<cyclicmagic:corrupted_chorus>, <quark:soul_bead>, "extraalchemy:dislocation_normal", 4, true); 

//Cyclic Moon Phase Detector
mods.inspirations.Cauldron.addFluidRecipe(<cyclicmagic:moon_sensor>, <minecraft:daylight_detector>, <liquid:lunar_water>, 1);
