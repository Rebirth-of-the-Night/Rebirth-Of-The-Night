#priority 1000
#nowarn

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

global mapCobbleToStone as IItemStack[IItemStack] = {
    <contenttweaker:lignite_cobble> : <undergroundbiomes:sedimentary_stone:4>, 
    <contenttweaker:dolomite_cobble> : <undergroundbiomes:sedimentary_stone:5>, 
    <contenttweaker:greywacke_cobble> : <undergroundbiomes:sedimentary_stone:6>, 
    <contenttweaker:chalk_cobble> : <undergroundbiomes:sedimentary_stone:1>, 
    <contenttweaker:shale_cobble> : <undergroundbiomes:sedimentary_stone:2>, 
    <contenttweaker:chert_cobble> : <undergroundbiomes:sedimentary_stone:7>, 
    <contenttweaker:siltstone_cobble> : <undergroundbiomes:sedimentary_stone:3>, 
    <contenttweaker:limestone_cobble> : <undergroundbiomes:sedimentary_stone>, 
    <undergroundbiomes:igneous_cobble> : <undergroundbiomes:igneous_stone>, 
    <undergroundbiomes:igneous_cobble:1> : <undergroundbiomes:igneous_stone:1>, 
    <undergroundbiomes:igneous_cobble:2> : <undergroundbiomes:igneous_stone:2>, 
    <undergroundbiomes:igneous_cobble:3> : <undergroundbiomes:igneous_stone:3>, 
    <undergroundbiomes:igneous_cobble:4> : <undergroundbiomes:igneous_stone:4>, 
    <undergroundbiomes:igneous_cobble:5> : <undergroundbiomes:igneous_stone:5>, 
    <undergroundbiomes:igneous_cobble:6> : <undergroundbiomes:igneous_stone:6>, 
    <undergroundbiomes:igneous_cobble:7> : <undergroundbiomes:igneous_stone:7>, 
    <undergroundbiomes:metamorphic_cobble> : <undergroundbiomes:metamorphic_stone>, 
    <undergroundbiomes:metamorphic_cobble:1> : <undergroundbiomes:metamorphic_stone:1>, 
    <undergroundbiomes:metamorphic_cobble:2> : <undergroundbiomes:metamorphic_stone:2>, 
    <undergroundbiomes:metamorphic_cobble:3> : <undergroundbiomes:metamorphic_stone:3>, 
    <undergroundbiomes:metamorphic_cobble:4> : <undergroundbiomes:metamorphic_stone:4>, 
    <undergroundbiomes:metamorphic_cobble:5> : <undergroundbiomes:metamorphic_stone:5>, 
    <undergroundbiomes:metamorphic_cobble:6> : <undergroundbiomes:metamorphic_stone:6>, 
    <undergroundbiomes:metamorphic_cobble:7> : <undergroundbiomes:metamorphic_stone:7>, 
    <minecraft:cobblestone> : <minecraft:stone>
} as IItemStack[IItemStack];

global disableItem as function(IItemStack)void = function(item as IItemStack) as void {
    // Basics
    furnace.remove(item);
    furnace.setFuel(item, 0);
    mods.jei.JEI.removeAndHide(item);
    mods.rockytweaks.Anvil.remove(item);
    mods.rockytweaks.Anvil.remove([item]);
    vanilla.seeds.removeSeed(item);

    // LTT method removes all items regardless of metadata, so is unsuitable for individual metadata removals
    if (item.metadata == 0)
        mods.ltt.LootTable.removeGlobalItem(item.definition.id);

    // Remove from oredicts
    for o in item.definition.ores {
        // Make sure the item with metadata is in the oredict
        if (o has item) {
            o.remove(item);
        }
    }

    // BWA
    mods.betterwithaddons.Tatara.remove(item);
    mods.betterwithaddons.SoakingBox.remove(item);
    mods.betterwithaddons.DryingBox.remove(item);
    mods.betterwithaddons.WaterNet.remove(item);
    mods.betterwithaddons.FireNet.remove(item);
    mods.betterwithaddons.SandNet.remove(item);
    mods.betterwithaddons.Spindle.remove(item);
    mods.betterwithaddons.Packing.remove(item);
    mods.betterwithaddons.Infuser.remove(item);
    mods.betterwithaddons.Infuser.removeTransmutation(item);

    // BWM
    mods.betterwithmods.Anvil.removeShaped(item);
    mods.betterwithmods.Anvil.removeShapeless(item);
    mods.betterwithmods.Cauldron.remove([item]);
    mods.betterwithmods.Crucible.remove([item]);
    mods.betterwithmods.FilteredHopper.removeRecipeByInput(item);
    mods.betterwithmods.Kiln.remove(item);
    mods.betterwithmods.Kiln.remove([item]);
    mods.betterwithmods.Mill.remove([item]);
    mods.betterwithmods.Saw.remove(item);
    mods.betterwithmods.Saw.remove([item]);
    mods.betterwithmods.Turntable.remove(item);

    // FutureMC
    mods.futuremc.BlastFurnace.removeRecipe(item);
    mods.futuremc.Campfire.removeRecipe(item);
    mods.futuremc.Composter.removeValidItem(item);
    mods.futuremc.Smoker.removeRecipe(item);
    mods.futuremc.Stonecutter.removeAllOutputsForInput(item);

    // HarvestCraftTweaker
    mods.harvestcrafttweaker.HarvestCraftTweaker.removePressingByInput(item);
    mods.harvestcrafttweaker.HarvestCraftTweaker.removeGrindingByInput(item);
    mods.harvestcrafttweaker.HarvestCraftTweaker.removeWaterFilterByInput(item);
    mods.harvestcrafttweaker.HarvestCraftTweaker.removeGroundTrapByInput(item);
    mods.harvestcrafttweaker.HarvestCraftTweaker.removeWaterTrapByInput(item);
    mods.harvestcrafttweaker.HarvestCraftTweaker.removeMarketByOutput(item);
    mods.harvestcrafttweaker.HarvestCraftTweaker.removeShippingByOutput(item);

    // Enchanting and Magicky Stuff
    mods.aether_legacy.Enchanter.removeEnchantment(item);
    mods.aether_legacy.Freezer.removeFreezable(item);
    mods.arcanearchives.GCT.removeRecipe(item);
    mods.eplus.Eplus.blacklistItem(item);

    // ExSartagine
    mods.exsartagine.ExSartagine.removePotRecipe(item);
    mods.exsartagine.ExSartagine.removePanRecipe(item);
    mods.exsartagine.ExSartagine.removeSmelterRecipe(item);
    mods.exsartagine.ExSartagine.removeKettleRecipe(item);

    // Foundry
    mods.foundry.Melting.removeRecipe(item);
    mods.foundry.MoldStation.removeRecipe(item);
    mods.foundry.BurnerHeater.removeFuel(item);

    // Ice and Fire
    mods.iceandfire.recipes.removeFireDragonForgeRecipe(item);
    mods.iceandfire.recipes.removeIceDragonForgeRecipe(item);

    // Inspirations
    mods.inspirations.Cauldron.removeFluidRecipe(item);
    mods.inspirations.Cauldron.removeFluidRecipe(<*>, item);
    mods.inspirations.Cauldron.removeFluidTransform(<*>, item);
    mods.inspirations.Cauldron.removeFillRecipe(item);
    mods.inspirations.Cauldron.removeBrewingRecipe(null, null, item);
    mods.inspirations.Cauldron.removePotionRecipe(item, null, null);
    mods.inspirations.Cauldron.removePotionRecipe(<*>, item, null);
    mods.inspirations.Cauldron.removeDyeRecipe(item, <*>);
    mods.inspirations.Cauldron.removeDyeRecipe(<*>, item);

    // Pyrotech
    mods.pyrotech.Bloomery.removeBloomeryRecipes(item);
    mods.pyrotech.Bloomery.removeWitherForgeRecipes(item);
    mods.pyrotech.BrickKiln.removeRecipes(item);
    mods.pyrotech.BrickOven.removeRecipes(item);
    mods.pyrotech.BrickSawmill.removeRecipes(item);
    mods.pyrotech.Burn.removeRecipes(item);
    mods.pyrotech.Campfire.removeRecipes(item);
    mods.pyrotech.Chopping.removeRecipes(item);
    mods.pyrotech.CompactingBin.removeRecipes(item);
    mods.pyrotech.CompostBin.removeRecipeByInput(item);
    mods.pyrotech.CompostBin.removeRecipesByOutput(item);
    mods.pyrotech.CrudeDryingRack.removeRecipes(item);
    mods.pyrotech.DryingRack.removeRecipes(item);
    mods.pyrotech.GraniteAnvil.removeRecipes(item);
    mods.pyrotech.IroncladAnvil.removeRecipes(item);
    mods.pyrotech.MechanicalCompactor.removeRecipes(item);
    mods.pyrotech.SoakingPot.removeRecipes(item);
    mods.pyrotech.StoneKiln.removeRecipes(item);
    mods.pyrotech.StoneOven.removeRecipes(item);
    mods.pyrotech.StoneSawmill.removeRecipes(item);
    mods.pyrotech.Worktable.removeRecipes(item);

    // Rats
    mods.rats.recipes.removeChefRatRecipe(item);
    mods.rats.recipes.removeArcheologistRatRecipe(item);
    mods.rats.recipes.removeGemcutterRatRecipe(item);

    // Rustic
    mods.rustic.Condenser.removeRecipe(item);
    mods.rustic.CrushingTub.removeRecipe(item);
    mods.rustic.EvaporatingBasin.removeRecipe(item);
};
