#modloaded harvestcrafttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.harvestcrafttweaker.HarvestCraftTweaker;

// HarvestCraftTweaker.clearAllPressing();
// HarvestCraftTweaker.addPressing(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
// HarvestCraftTweaker.removePressingByInput(IItemStack input);

HarvestCraftTweaker.clearAllPressing();
HarvestCraftTweaker.addPressing(<harvestcraft:silkentofuitem>, <harvestcraft:firmtofuitem>, <harvestcraft:soymilkitem>);
HarvestCraftTweaker.addPressing(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}), <minecraft:slime_ball>, <harvestcraft:freshwateritem>);

// HarvestCraftTweaker.clearAllGrinding();
// HarvestCraftTweaker.addGrinding(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
// HarvestCraftTweaker.removeGrindingByInput(IItemStack input);

// HarvestCraftTweaker.addWaterFilter(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
// HarvestCraftTweaker.removeWaterFilterByInput(IItemStack input);

// HarvestCraftTweaker.addGroundTrap(IIngredient input, IItemStack[] outputs);
// HarvestCraftTweaker.removeGroundTrapByInput(IItemStack input);

// HarvestCraftTweaker.addWaterTrap(IIngredient input, IItemStack[] outputs);
// HarvestCraftTweaker.removeWaterTrapByInput(IItemStack input);

// HarvestCraftTweaker.clearAllMarket();
// HarvestCraftTweaker.addMarket(IItemStack toBuy, IItemStack input, int cost);
// HarvestCraftTweaker.removeMarketByOutput(IItemStack output);

// HarvestCraftTweaker.addShipping(IItemStack toBuy, IItemStack input, int cost);
// HarvestCraftTweaker.removeShippingByOutput(IItemStack output);

