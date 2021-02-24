#loader contenttweaker

import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.VanillaFactory;

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
moss_patch.setSlipperiness(0.89f);
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

var cave_bramble = VanillaFactory.createBlock("cave_bramble", <blockmaterial:Grass>);
cave_bramble.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    3.0 / 16.0,
    12.0 / 16.0
	);
cave_bramble.setBlockHardness(0.0);
cave_bramble.setBlockResistance(2.0);
cave_bramble.setFullBlock(false);
cave_bramble.setPassable(true);
cave_bramble.setReplaceable(true);
cave_bramble.setLightOpacity(0);
cave_bramble.setBlockLayer("CUTOUT");
cave_bramble.setBlockSoundType(<soundtype:plant>);
cave_bramble.register();

var perforata = VanillaFactory.createBlock("perforata", <blockmaterial:Vine>);
perforata.axisAlignedBB = AxisAlignedBB.create(
     3.0 / 16.0,
     0.0 / 16.0,
     3.0 / 16.0,
	13.0 / 16.0,
    16.0 / 16.0,
    13.0 / 16.0
	);
perforata.setBlockHardness(0.0);
perforata.setBlockResistance(2.0);
perforata.setFullBlock(false);
perforata.setPassable(true);
perforata.setReplaceable(false);
perforata.setLightOpacity(0);
perforata.setBlockLayer("CUTOUT");
perforata.setBlockSoundType(<soundtype:plant>);
perforata.register();
