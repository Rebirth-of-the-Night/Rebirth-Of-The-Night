import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import crafttweaker.liquid.ILiquidStack;
import mods.jei.JEI;
import mods.inspirations.Cauldron;

var removeDyeRecipes as string[] = [
    "orange",
    "magenta_pp",
    "lime",
    "light_gray_gw",
    "light_blue",
    "brown_yp",
    "brown_rg",
    "brown_rby"
] as string[];

for r in removeDyeRecipes {
    recipes.removeByRecipeName("inspirations:recipes/dye/"~r);
}

Cauldron.addFluidTransform(<liquid:tannin>, <ore:dung>, <liquid:water>, 4, true);
Cauldron.addFluidTransform(<liquid:tannin>, <ore:barkWood>, <liquid:water>, 1, true);
Cauldron.addFluidTransform(<liquid:tannin>, <biomesoplenty:persimmon>|<harvestcraft:persimmonitem>, <liquid:water>, 2, true);
// Lunar Water: Obtainable from cauldrons using bottles / Placeable in cauldrons
Cauldron.addFluidRecipe(<nyx:lunar_water_bottle>, <minecraft:glass_bottle>, <liquid:lunar_water>, 1);
Cauldron.addFillRecipe(<nyx:lunar_water_bottle>, <liquid:lunar_water>, 1, <minecraft:glass_bottle>);

// Magic powder 
Cauldron.addFluidRecipe(<dungeontactics:magic_powder>, <contenttweaker:magic_blend>, <liquid:lunar_water>, 1, false);

// Cauldron.addFluidRecipe(<dungeontactics:magic_powder>*2, <contenttweaker:magic_blend>, <liquid:mythril>, 1, true);

// Cyclic Corrupted Chorus Fruit
////The Chorus Bead can be enabled in a future update as part of a late-game magic recipe.
// Cauldron.addPotionRecipe(<cyclicmagic:corrupted_chorus>, <quark:soul_bead>, "extraalchemy:dislocation_normal", 4, true); 

// Cyclic Moon Phase Detector
Cauldron.addFluidRecipe(<cyclicmagic:moon_sensor>, <minecraft:daylight_detector>, <liquid:lunar_water>, 1);

// Soaking manuscript
Cauldron.addFluidRecipe(<minecraft:paper>, <iceandfire:manuscript>, <liquid:water>);

// Solid Core Egg
Cauldron.addPotionRecipe(<contenttweaker:egg_block>, <ore:listAllegg>, "potioncore:solid_core", 1, false); 


###Potion Recipes###
// Cauldron.addBrewingRecipe(String output, String input, IIngredient reagent);
Cauldron.addBrewingRecipe("potioncore:solid_core", "minecraft:slowness", <contenttweaker:holding_quintessence>);

// Cauldron.removeBrewingRecipe(String output, @Optional String input, @Optional IIngredient reagent);
val potionRemoval as string[] = [
    "extraalchemy:learning_long",
    "extraalchemy:learning_normal",
    "extraalchemy:learning_strong",
    "extraalchemy:recall_normal",
    "extraalchemy:recall_strong",
    "extraalchemy:recall_long",
    "extraalchemy:return_normal",
    "extraalchemy:freezing"
];

for potion in potionRemoval {
    Cauldron.removeBrewingRecipe(potion);
    JEI.removeAndHide(<minecraft:potion>.withTag({Potion: potion}), true);
    JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: potion}), true);
    JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: potion}), true);
    JEI.removeAndHide(<minecraft:tipped_arrow>.withTag({Potion: potion}), true);
}
###Bottling and vice versa of fluids###

//function taken lovingly from my own pack, don't worry, not stolen because i allow it! -Landie
function CauldronBottling(fluid as ILiquidStack, item as IItemStack, leftover as IItemStack, levels as int) as void {
    Cauldron.addFillRecipe(item, fluid, levels, leftover);
    Cauldron.addFluidRecipe(item, leftover, fluid, levels);
}
//Rennet
CauldronBottling(<liquid:fluid_rennet>, <growthcraft_milk:bottlefluid_rennet>, <minecraft:glass_bottle>, 1);
//Skim Milk
CauldronBottling(<liquid:fluid_skim_milk>, <growthcraft_milk:bottlefluid_skim_milk>, <minecraft:glass_bottle>, 1);
//Condensed Milk
CauldronBottling(<liquid:fluid_condensed_milk>, <growthcraft_milk:bottlefluid_condensed_milk>, <minecraft:glass_bottle>, 1);
//Rice Water
CauldronBottling(<liquid:fluid_booze_sake_water>, <growthcraft_rice:sakebottle>, <minecraft:glass_bottle>, 1);