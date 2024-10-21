#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;

import mods.contenttweaker.AxisAlignedBB;
//ITEMS
var rat = VanillaFactory.createItemFood("ratatouille", 10);
rat.setSaturation(9.5);
rat.register();

var cattail_root_raw = VanillaFactory.createItemFood("cattail_root_raw", 1);
cattail_root_raw.setSaturation(0.5);
cattail_root_raw.register();

var cattail_root_cooked = VanillaFactory.createItemFood("cattail_root_cooked", 3);
cattail_root_cooked.setSaturation(3);
cattail_root_cooked.register();

var godrage_eye = VanillaFactory.createItemFood("godrage_eye", 4);
godrage_eye.setSaturation(1);
godrage_eye.register();

val sprinkles = VanillaFactory.createItem("sprinkles");
sprinkles.register();

val raw_fries = VanillaFactory.createItemFood("raw_fries", 1);
raw_fries.setSaturation(2.5);
raw_fries.register();

val ground_beef = VanillaFactory.createItemFood("ground_beef", 2);
ground_beef.setSaturation(2.5);
ground_beef.register();

val wiener = VanillaFactory.createItem("wiener");
wiener.register();

val sheep_intestines = VanillaFactory.createItem("sheep_intestines");
sheep_intestines.register();

val patty = VanillaFactory.createItem("patty");
patty.register();

val hydraco = VanillaFactory.createItemFood("hydraco", 24);
hydraco.setSaturation(44.0);
hydraco.register();

val abyss_pizza_item = VanillaFactory.createItemFood("abyss_pizza", 32);
abyss_pizza_item.setSaturation(36.0);
abyss_pizza_item.register();

//BLOCKS
//Yeast flour
var yeast_flour = VanillaFactory.createBlock("yeast_flour", <blockmaterial:Cloth>);
yeast_flour.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
yeast_flour.setFullBlock(false);
yeast_flour.setLightOpacity(0);
yeast_flour.setBlockLayer("TRANSLUCENT");
yeast_flour.setBlockSoundType(<soundtype:cloth>);
yeast_flour.setBlockHardness(1.0);
yeast_flour.setToolClass("shovel");
yeast_flour.dropHandler = function(drops, world, pos, state, fortune) {
	drops.clear();
};
yeast_flour.onRandomTick = function(world, pos, state) {
	if ((world.getWorldTime() % 20) == 0) {
		world.setBlockState(<block:contenttweaker:yeast>, pos);
	}
};
yeast_flour.register();

//Yeast
var yeast = VanillaFactory.createBlock("yeast", <blockmaterial:Cloth>);
yeast.axisAlignedBB = AxisAlignedBB.create(
	4.0 / 16.0,
	0.0 / 16.0,
	1.0 / 16.0,
	12.0 / 16.0,
	6.0 / 16.0,
	15.0 / 16.0
);
yeast.setFullBlock(false);
yeast.setLightOpacity(0);
yeast.setBlockLayer("TRANSLUCENT");
yeast.setBlockSoundType(<soundtype:cloth>);
yeast.setBlockHardness(1.0);
yeast.setToolClass("shovel");
yeast.dropHandler = function(drops, world, pos, state, fortune) {
	drops.clear();
};
yeast.register();

//Plain Pizza block
var plain_pizza_block = VanillaFactory.createBlock("plain_pizza_block", <blockmaterial:Cloth>);
plain_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
plain_pizza_block.setFullBlock(false);
plain_pizza_block.setLightOpacity(0);
plain_pizza_block.setBlockLayer("TRANSLUCENT");
plain_pizza_block.setBlockSoundType(<soundtype:cloth>);
plain_pizza_block.setBlockHardness(1.0);
plain_pizza_block.setToolClass("shovel");
plain_pizza_block.register();

//Meat Pizza
var meat_pizza_block = VanillaFactory.createBlock("meat_pizza_block", <blockmaterial:Cloth>);
meat_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
meat_pizza_block.setFullBlock(false);
meat_pizza_block.setLightOpacity(0);
meat_pizza_block.setBlockLayer("TRANSLUCENT");
meat_pizza_block.setBlockSoundType(<soundtype:cloth>);
meat_pizza_block.setBlockHardness(1.0);
meat_pizza_block.setToolClass("shovel");
meat_pizza_block.register();

//Chicken Pizza
var chicken_pizza_block = VanillaFactory.createBlock("chicken_pizza_block", <blockmaterial:Cloth>);
chicken_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
chicken_pizza_block.setFullBlock(false);
chicken_pizza_block.setLightOpacity(0);
chicken_pizza_block.setBlockLayer("TRANSLUCENT");
chicken_pizza_block.setBlockSoundType(<soundtype:cloth>);
chicken_pizza_block.setBlockHardness(1.0);
chicken_pizza_block.setToolClass("shovel");
chicken_pizza_block.register();

//Fish Pizza
var fish_pizza_block = VanillaFactory.createBlock("fish_pizza_block", <blockmaterial:Cloth>);
fish_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
fish_pizza_block.setFullBlock(false);
fish_pizza_block.setLightOpacity(0);
fish_pizza_block.setBlockLayer("TRANSLUCENT");
fish_pizza_block.setBlockSoundType(<soundtype:cloth>);
fish_pizza_block.setBlockHardness(1.0);
fish_pizza_block.setToolClass("shovel");
fish_pizza_block.register();

//Sweet Pizza
var sweet_pizza_block = VanillaFactory.createBlock("sweet_pizza_block", <blockmaterial:Cloth>);
sweet_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
sweet_pizza_block.setFullBlock(false);
sweet_pizza_block.setLightOpacity(0);
sweet_pizza_block.setBlockLayer("TRANSLUCENT");
sweet_pizza_block.setBlockSoundType(<soundtype:cloth>);
sweet_pizza_block.setBlockHardness(1.0);
sweet_pizza_block.setToolClass("shovel");
sweet_pizza_block.register();

//Abyss Pizza
var abyss_pizza_block = VanillaFactory.createBlock("abyss_pizza_block", <blockmaterial:Cloth>);
abyss_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
abyss_pizza_block.setFullBlock(false);
abyss_pizza_block.setLightOpacity(0);
abyss_pizza_block.setBlockLayer("TRANSLUCENT");
abyss_pizza_block.setBlockSoundType(<soundtype:cloth>);
abyss_pizza_block.setBlockHardness(1.0);
abyss_pizza_block.setToolClass("shovel");
abyss_pizza_block.register();