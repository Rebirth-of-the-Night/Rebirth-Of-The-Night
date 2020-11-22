#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;

import mods.contenttweaker.AxisAlignedBB;


var moss_patch = VanillaFactory.createBlock("moss_patch", <blockmaterial:Grass>);
moss_patch.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
moss_patch.setBlockHardness(0.0);
moss_patch.setBlockResistance(2.0);
moss_patch.setFullBlock(false);
moss_patch.setPassable(true);
moss_patch.setReplaceable(true);
moss_patch.setLightOpacity(0);
moss_patch.setBlockLayer("CUTOUT");
moss_patch.setBlockSoundType(<soundtype:plant>);
moss_patch.register();

var cave_rafflesia = VanillaFactory.createBlock("cave_rafflesia", <blockmaterial:Grass>);
cave_rafflesia.axisAlignedBB = AxisAlignedBB.create(
     3.0 / 16.0,
     0.0 / 16.0,
     3.0 / 16.0,
	13.0 / 16.0,
    6.0 / 16.0,
    13.0 / 16.0
	);
cave_rafflesia.setBlockHardness(0.0);
cave_rafflesia.setBlockResistance(2.0);
cave_rafflesia.setFullBlock(false);
cave_rafflesia.setPassable(true);
cave_rafflesia.setReplaceable(true);
cave_rafflesia.setLightOpacity(0);
cave_rafflesia.setBlockLayer("CUTOUT");
cave_rafflesia.setBlockSoundType(<soundtype:plant>);
cave_rafflesia.register();

var cave_grass = VanillaFactory.createBlock("cave_grass", <blockmaterial:Grass>);
cave_grass.axisAlignedBB = AxisAlignedBB.create(
     3.0 / 16.0,
     0.0 / 16.0,
     3.0 / 16.0,
	13.0 / 16.0,
    10.0 / 16.0,
    13.0 / 16.0
	);
cave_grass.setBlockHardness(0.0);
cave_grass.setBlockResistance(2.0);
cave_grass.setFullBlock(false);
cave_grass.setPassable(true);
cave_grass.setReplaceable(true);
cave_grass.setLightOpacity(0);
cave_grass.setBlockLayer("CUTOUT");
cave_grass.setBlockSoundType(<soundtype:plant>);
cave_grass.register();