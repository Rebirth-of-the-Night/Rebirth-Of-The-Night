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
moss_patch.setToolClass("none");
moss_patch.register();

var scab = VanillaFactory.createBlock("scab", <blockmaterial:Ground>);
scab.axisAlignedBB = AxisAlignedBB.create(
	 0.0 / 16.0,
	 0.0 / 16.0,
	 0.0 / 16.0,
	16.0 / 16.0,
	 0.1 / 16.0,
	16.0 / 16.0
	);
scab.setBlockHardness(0.0);
scab.setBlockResistance(2.0);
scab.setFullBlock(false);
scab.setPassable(true);
scab.setReplaceable(true);
scab.setSlipperiness(0.89f);
scab.setLightOpacity(0);
scab.setBlockLayer("CUTOUT");
scab.setBlockSoundType(<soundtype:plant>);
scab.setToolClass("none");
scab.register();

var koji_mold = VanillaFactory.createBlock("koji_mold", <blockmaterial:Grass>);
koji_mold.axisAlignedBB = AxisAlignedBB.create(
	 0.0 / 16.0,
	 0.0 / 16.0,
	 0.0 / 16.0,
	16.0 / 16.0,
	 0.1 / 16.0,
	16.0 / 16.0
	);
koji_mold.setBlockHardness(3.5);
koji_mold.setBlockResistance(2.0);
koji_mold.setFullBlock(false);
koji_mold.setPassable(true);
koji_mold.setReplaceable(false);
koji_mold.setLightOpacity(0);
koji_mold.setBlockLayer("CUTOUT");
koji_mold.setBlockSoundType(<soundtype:plant>);
koji_mold.setToolClass("none");
koji_mold.register();

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
cave_rafflesia.setToolClass("none");
cave_rafflesia.register();

var cave_grass = VanillaFactory.createBlock("cave_grass", <blockmaterial:Grass>);
cave_grass.axisAlignedBB = AxisAlignedBB.create(
	 4.0 / 16.0,
	 0.0 / 16.0,
	 4.0 / 16.0,
	12.0 / 16.0,
	10.0 / 16.0,
	12.0 / 16.0
	);
cave_grass.setBlockHardness(0.0);
cave_grass.setBlockResistance(2.0);
cave_grass.setFullBlock(false);
cave_grass.setPassable(true);
cave_grass.setReplaceable(true);
cave_grass.setLightOpacity(0);
cave_grass.setBlockLayer("CUTOUT");
cave_grass.setBlockSoundType(<soundtype:plant>);
cave_grass.setToolClass("none");
cave_grass.register();

var cave_bramble = VanillaFactory.createBlock("cave_bramble", <blockmaterial:Grass>);
cave_bramble.axisAlignedBB = AxisAlignedBB.create(
     5.0 / 16.0,
     0.0 / 16.0,
     5.0 / 16.0,
	11.0 / 16.0,
    2.0 / 16.0,
    11.0 / 16.0
	);
cave_bramble.setBlockHardness(0.0);
cave_bramble.setBlockResistance(2.0);
cave_bramble.setFullBlock(false);
cave_bramble.setPassable(true);
cave_bramble.setReplaceable(true);
cave_bramble.setLightOpacity(0);
cave_bramble.setBlockLayer("CUTOUT");
cave_bramble.setBlockSoundType(<soundtype:plant>);
cave_bramble.setToolClass("none");
cave_bramble.register();

var perforata = VanillaFactory.createBlock("perforata", <blockmaterial:Plants>);
perforata.axisAlignedBB = AxisAlignedBB.create(
	 4.0 / 16.0,
	 0.0 / 16.0,
	 4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
	12.0 / 16.0
	);
perforata.setBlockHardness(0.0);
perforata.setBlockResistance(2.0);
perforata.setFullBlock(false);
perforata.setPassable(true);
perforata.setReplaceable(false);
perforata.setLightOpacity(0);
perforata.setBlockLayer("CUTOUT");
perforata.setBlockSoundType(<soundtype:plant>);
perforata.setToolClass("none");
perforata.register();

var nether_flower = VanillaFactory.createBlock("nether_flower", <blockmaterial:Plants>);
nether_flower.axisAlignedBB = AxisAlignedBB.create(
	 4.0 / 16.0,
	 0.0 / 16.0,
	 4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
	12.0 / 16.0
	);
nether_flower.setBlockHardness(0.0);
nether_flower.setBlockResistance(2.0);
nether_flower.setFullBlock(false);
nether_flower.setPassable(true);
nether_flower.setReplaceable(false);
nether_flower.setLightOpacity(0);
nether_flower.setBlockLayer("CUTOUT");
nether_flower.setBlockSoundType(<soundtype:plant>);
nether_flower.setToolClass("none");
nether_flower.register();

var clover3 = VanillaFactory.createBlock("clover_3_block", <blockmaterial:Plants>);
clover3.axisAlignedBB = AxisAlignedBB.create(
	 3.0 / 16.0,
	15.0 / 16.0,
	 3.0 / 16.0,
	13.0 / 16.0,
	16.0 / 16.0,
	13.0 / 16.0
	);
clover3.setBlockHardness(0.5);
clover3.setBlockResistance(2.0);
clover3.setFullBlock(false);
clover3.setReplaceable(false);
clover3.setLightOpacity(0);
clover3.setBlockLayer("CUTOUT");
clover3.setBlockSoundType(<soundtype:plant>);
clover3.setToolClass("none");
clover3.register();

var clover4 = VanillaFactory.createBlock("clover_4_block", <blockmaterial:Plants>);
clover4.axisAlignedBB = AxisAlignedBB.create(
	 3.0 / 16.0,
	15.0 / 16.0,
	 3.0 / 16.0,
	13.0 / 16.0,
	16.0 / 16.0,
	13.0 / 16.0
	);
clover4.setBlockHardness(0.5);
clover4.setBlockResistance(6.0);
clover4.setFullBlock(false);
clover4.setReplaceable(false);
clover4.setLightOpacity(0);
clover4.setLightValue(0.1);
clover4.setBlockLayer("CUTOUT");
clover4.setBlockSoundType(<soundtype:plant>);
clover4.setToolClass("none");
clover4.register();

var petal_blue_big_flower = VanillaFactory.createBlock("petal_blue_big_flower", <blockmaterial:Leaves>);
petal_blue_big_flower.setBlockHardness(1.5);
petal_blue_big_flower.setBlockResistance(1.0);
petal_blue_big_flower.setReplaceable(false);
petal_blue_big_flower.setLightValue(0.1);
petal_blue_big_flower.setBlockSoundType(<soundtype:plant>);
petal_blue_big_flower.setToolClass("none");
petal_blue_big_flower.register();

var dark_fruit = VanillaFactory.createBlock("dark_fruit", <blockmaterial:Plants>);
dark_fruit.axisAlignedBB = AxisAlignedBB.create(
	 6.0 / 16.0,
	 8.0 / 16.0,
	 6.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
	12.0 / 16.0
	);
dark_fruit.setBlockHardness(3.0);
dark_fruit.setBlockResistance(2.0);
dark_fruit.setFullBlock(false);
clover4.setReplaceable(false);
dark_fruit.setLightOpacity(0);
clover4.setLightValue(0.3);
dark_fruit.setBlockSoundType(<soundtype:plant>);
dark_fruit.setToolClass("none");
dark_fruit.register();