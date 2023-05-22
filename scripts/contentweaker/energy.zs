#loader contenttweaker

import crafttweaker.item.IItemStack;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Commands;

var unstableSpiritfire = VanillaFactory.createFluid("unstable_spiritfire", Color.fromHex("62D5E5"));
unstableSpiritfire.temperature = 1300;
unstableSpiritfire.viscosity = 9999999999999999;
unstableSpiritfire.density = 100;
unstableSpiritfire.luminosity = 15;
unstableSpiritfire.stillLocation = "contenttweaker:fluids/unstable_spiritfire_still";
unstableSpiritfire.flowingLocation = "contenttweaker:fluids/unstable_spiritfire_flow";
unstableSpiritfire.colorize= true;
unstableSpiritfire.vaporize= true;
unstableSpiritfire.register();

var dreadCold = VanillaFactory.createFluid("dread_cold", Color.fromHex("C9FFE5"));
dreadCold.temperature = 100;
dreadCold.viscosity = 9999999999999999;
dreadCold.density = 100;
dreadCold.luminosity = 15;
dreadCold.stillLocation = "contenttweaker:fluids/dread_cold_still";
dreadCold.flowingLocation = "contenttweaker:fluids/dread_cold_flow";
dreadCold.colorize= true;
dreadCold.vaporize= true;
dreadCold.register();

var refinedLifeblood = VanillaFactory.createFluid("concentrated_bioflow", Color.fromHex("8CFF8C"));
refinedLifeblood.temperature = 100;
refinedLifeblood.viscosity = 9999999999999999;
refinedLifeblood.density = 300;
refinedLifeblood.luminosity = 15;
# refinedLifeblood.stillLocation = "contenttweaker:fluids/dread_cold_still";
# refinedLifeblood.flowingLocation = "contenttweaker:fluids/dread_cold_flow";
refinedLifeblood.colorize= true;
refinedLifeblood.vaporize= true;
refinedLifeblood.register();

val rawdreadSlate = VanillaFactory.createItem("raw_dread_slate");
rawdreadSlate.register();

val condensedDreadCold = VanillaFactory.createItem("condensed_dread_cold");
condensedDreadCold.register();

val virideaBiomatter = VanillaFactory.createItem("viridea_biomatter");
virideaBiomatter.register();

val virideaSeed = VanillaFactory.createItem("viridea_seed");
virideaSeed.register();

var viridea = VanillaFactory.createBlock("viridea", <blockmaterial:Plants>);
viridea.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
viridea.setBlockHardness(0.0);
viridea.setBlockResistance(2.0);
viridea.setFullBlock(false);
viridea.setPassable(false);
viridea.setReplaceable(false);
viridea.setLightOpacity(0);
viridea.setBlockLayer("CUTOUT");
viridea.setBlockSoundType(<soundtype:plant>);
viridea.setToolClass("none");
viridea.register();

val charged_copperon = VanillaFactory.createItem("charged_copperon");
charged_copperon.maxStackSize = 1;
charged_copperon.maxDamage = 3;
charged_copperon.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos).getBlock().definition.id == "dungeontactics:mithril_block" && player.getHeldItem(hand).damage > 0) {
        if (!world.remote) {
            world.setBlockState(<block:foundry:iron:14>, pos);
            player.getHeldItem(hand).damage(-1, player);
        }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
charged_copperon.register();