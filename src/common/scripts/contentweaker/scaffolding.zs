#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;

var scaf = VanillaFactory.createBlock("scaffolding", <blockmaterial:Wood>);
scaf.setCreativeTab(<creativetab:buildingBlocks>);
scaf.setBlockSoundType(<soundtype:wood>);
scaf.setBlockHardness(0.1);
scaf.setBlockResistance(0.1);
scaf.setBlockLayer("CUTOUT");
scaf.setEntitySpawnable(false);
scaf.setFullBlock(false);
scaf.setTranslucent(true);
scaf.setToolClass("axe");
scaf.setToolLevel(0);
scaf.dropHandler = function(drops, world, pos, state, fortune) {
	drops.clear();
};
scaf.onRandomTick = function(world, pos, state) {
	if ((world.getWorldTime() % 10) < 5) {
		world.setBlockState(<block:minecraft:air>, pos);
	}
};
scaf.register();
