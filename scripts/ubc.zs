import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.removeByRecipeName("undergroundbiomes:vanilla_button");
recipes.removeByRecipeName("undergroundbiomes:vanilla_sandstone");

// Because ubc is not smart with its ore generation, there needs to be at least one ore - otherwise it crashes
// But we can hide it anyway...
var stone_types as [string] = [
    "igneous",
    "metamorphic",
    "sedimentary"
] as [string];
for type in stone_types {
    JEI.removeAndHide(itemUtils.getItem("undergroundbiomes:"~type~"_stone_endreborn_block_wolframium_ore"));
}

// Remove charbiotite
JEI.removeAndHide(<undergroundbiomes:lignite_coal>);

val anySandstone as IIngredient = <undergroundbiomes:igneous_sandstone:*>|<undergroundbiomes:metamorphic_sandstone:*>|<undergroundbiomes:sedimentary_sandstone:*> as IIngredient;

RecipeBuilder.get("mage")
  .setName("ubc_sandstone_to_sandstone")
  .setShaped([
    [anySandstone,anySandstone,anySandstone],
    [anySandstone,<contenttweaker:vis_speck>,anySandstone],
    [anySandstone,anySandstone,anySandstone]])
  .addTool(<contenttweaker:nature_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<minecraft:sandstone>*9)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.removeByRecipeName("undergroundbiomes:bone_fossil_bone_meal");
recipes.addShapeless("bone_fossil_to_bone_meal", <minecraft:dye:15>*2, [<undergroundbiomes:fossil_piece:0>|<undergroundbiomes:fossil_piece:1>|<undergroundbiomes:fossil_piece:2>|<undergroundbiomes:fossil_piece:3>|<undergroundbiomes:fossil_piece:4>|<undergroundbiomes:fossil_piece:5>|<undergroundbiomes:fossil_piece:6>|<undergroundbiomes:fossil_piece:7>]);

// rocks to buttons
recipes.remove(<minecraft:stone_button>);
recipes.addShapeless("stone_button",<minecraft:stone_button>, [<pyrotech:rock>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:5>);
recipes.addShapeless("basalt_button",<undergroundbiomes:igneous_stone_button:5>, [<pyrotech_compat:rock_igneous:5>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:4>);
recipes.addShapeless("gabbro_button",<undergroundbiomes:igneous_stone_button:4>, [<pyrotech_compat:rock_igneous:4>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:1>);
recipes.addShapeless("black_granite_button",<undergroundbiomes:igneous_stone_button:1>, [<pyrotech_compat:rock_igneous:1>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:2>);
recipes.addShapeless("rhyolite_button",<undergroundbiomes:igneous_stone_button:2>, [<pyrotech_compat:rock_igneous:2>]);

recipes.remove(<undergroundbiomes:igneous_stone_button>);
recipes.addShapeless("red_granite_button",<undergroundbiomes:igneous_stone_button>, [<pyrotech_compat:rock_igneous>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:7>);
recipes.addShapeless("dacite_button",<undergroundbiomes:igneous_stone_button:7>, [<pyrotech_compat:rock_igneous:7>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:6>);
recipes.addShapeless("komatiite_button",<undergroundbiomes:igneous_stone_button:6>, [<pyrotech_compat:rock_igneous:6>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:3>);
recipes.addShapeless("andesite_button",<undergroundbiomes:igneous_stone_button:3>, [<pyrotech_compat:rock_igneous:3>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:7>);
recipes.addShapeless("migmatite_button",<undergroundbiomes:metamorphic_stone_button:7>, [<pyrotech_compat:rock_metamorphic:7>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:6>);
recipes.addShapeless("soapstone_button",<undergroundbiomes:metamorphic_stone_button:6>, [<pyrotech_compat:rock_metamorphic:6>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:3>);
recipes.addShapeless("quartzite_button",<undergroundbiomes:metamorphic_stone_button:3>, [<pyrotech_compat:rock_metamorphic:3>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:5>);
recipes.addShapeless("green_schist_button",<undergroundbiomes:metamorphic_stone_button:5>, [<pyrotech_compat:rock_metamorphic:5>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:4>);
recipes.addShapeless("blue_schist_button",<undergroundbiomes:metamorphic_stone_button:4>, [<pyrotech_compat:rock_metamorphic:4>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:1>);
recipes.addShapeless("eclogite_button",<undergroundbiomes:metamorphic_stone_button:1>, [<pyrotech_compat:rock_metamorphic:1>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button>);
recipes.addShapeless("gneiss_button",<undergroundbiomes:metamorphic_stone_button>, [<pyrotech_compat:rock_metamorphic>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:2>);
recipes.addShapeless("marble_button",<undergroundbiomes:metamorphic_stone_button:2>, [<pyrotech_compat:rock_metamorphic:2>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:2>);
recipes.addShapeless("shale_button",<undergroundbiomes:sedimentary_stone_button:2>, [<pyrotech_compat:rock_sedimentary:1>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button>);
recipes.addShapeless("limestone_button",<undergroundbiomes:sedimentary_stone_button>, [<pyrotech:rock:8>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:1>);
recipes.addShapeless("chalk_button",<undergroundbiomes:sedimentary_stone_button:1>, [<pyrotech_compat:rock_sedimentary>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:4>);
recipes.addShapeless("lignite_button",<undergroundbiomes:sedimentary_stone_button:4>, [<pyrotech_compat:rock_igneous_sand:9>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:5>);
recipes.addShapeless("dolomite_button",<undergroundbiomes:sedimentary_stone_button:5>, [<pyrotech_compat:rock_sedimentary:3>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:7>);
recipes.addShapeless("chert_button",<undergroundbiomes:sedimentary_stone_button:7>, [<pyrotech_compat:rock_sedimentary:5>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:6>);
recipes.addShapeless("greywacke_button",<undergroundbiomes:sedimentary_stone_button:6>, [<pyrotech_compat:rock_sedimentary:4>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:3>);
recipes.addShapeless("siltstone_button",<undergroundbiomes:sedimentary_stone_button:3>, [<pyrotech_compat:rock_sedimentary:2>]);

// Custom decoration

// Bricks map
val stonebrickDecoMap = {
    <contenttweaker:big_limestone_bricks> : [<contentcreator:limestone_brick_slab>,<contentcreator:limestone_brick_stairs>],
    <contenttweaker:big_chalk_bricks> : [<contentcreator:chalk_brick_slab>,<contentcreator:chalk_brick_slab>],
	<contenttweaker:big_shale_bricks> : [<contentcreator:shale_brick_slab>,<contentcreator:shale_brick_stairs>],
	<contenttweaker:big_siltstone_bricks> : [<contentcreator:siltstone_brick_slab>,<contentcreator:siltstone_brick_stairs>],
	<contenttweaker:big_dolomite_bricks> : [<contentcreator:dolomite_brick_slab>, <contentcreator:dolomite_brick_stairs>],
	<contenttweaker:big_greywacke_bricks> : [<contentcreator:greywacke_brick_slab>,<contentcreator:greywacke_brick_stairs>],
    <contenttweaker:big_chert_bricks> : [<contentcreator:chert_brick_slab>,<contentcreator:chert_brick_stairs>]
} as IItemStack[][IItemStack];

for fullBrick, brickDeco in stonebrickDecoMap{ // brickDeco[0] is for slabs, brickDeco[1] is for stairs
    
	recipes.addShaped(brickDeco[0]*6,[ // slabs
		[fullBrick,fullBrick,fullBrick]
	]);
	recipes.addShapedMirrored(brickDeco[1]*8,[ // stairs from blocks
		[fullBrick, null, null],
		[fullBrick, fullBrick, null],
		[fullBrick, fullBrick, fullBrick]
	]);
    recipes.addShapedMirrored(brickDeco[1]*4,[ // stairs from slabs
		[brickDeco[0], null, null],
		[brickDeco[0], brickDeco[0], null],
		[brickDeco[0], brickDeco[0], brickDeco[0]]
	]);
	recipes.addShapeless(fullBrick*3, // blocks from stairs
		[brickDeco[1],brickDeco[1],brickDeco[1],brickDeco[1]
	]);
	recipes.addShapeless(fullBrick, // blocks from slabs
		[brickDeco[0],brickDeco[0]
	]);
}	

// Cobbles map
val stonecobbleDecoMap = {
    <contenttweaker:limestone_cobble> : [<contentcreator:limestone_cobblestone_slab>,<contentcreator:limestone_cobblestone_stairs>],
    <contenttweaker:chalk_cobble> : [<contentcreator:chalk_cobblestone_slab>,<contentcreator:chalk_cobblestone_slab>],
	<contenttweaker:shale_cobble> : [<contentcreator:shale_cobblestone_slab>,<contentcreator:shale_cobblestone_stairs>],
	<contenttweaker:siltstone_cobble> : [<contentcreator:siltstone_cobblestone_slab>,<contentcreator:siltstone_cobblestone_stairs>],
	<contenttweaker:dolomite_cobble> : [<contentcreator:dolomite_cobblestone_slab>, <contentcreator:dolomite_cobblestone_stairs>],
	<contenttweaker:greywacke_cobble> : [<contentcreator:greywacke_cobblestone_slab>,<contentcreator:greywacke_cobblestone_stairs>],
    <contenttweaker:chert_cobble> : [<contentcreator:chert_cobblestone_slab>,<contentcreator:chert_cobblestone_stairs>]
} as IItemStack[][IItemStack];

for fullCobble, cobbleDeco in stonecobbleDecoMap{ // cobbleDeco[0] is for slabs, cobbleDeco[1] is for stairs
    
	recipes.addShaped(cobbleDeco[0]*6,[ // slabs
		[fullCobble,fullCobble,fullCobble]
	]);
	recipes.addShapedMirrored(cobbleDeco[1]*8,[ // stairs from blocks
		[fullCobble, null, null],
		[fullCobble, fullCobble, null],
		[fullCobble, fullCobble, fullCobble]
	]);
    recipes.addShapedMirrored(cobbleDeco[1]*4,[ // stairs from slabs
		[cobbleDeco[0], null, null],
		[cobbleDeco[0], cobbleDeco[0], null],
		[cobbleDeco[0], cobbleDeco[0], cobbleDeco[0]]
	]);
	recipes.addShapeless(fullCobble*3, // blocks from stairs
		[cobbleDeco[1],cobbleDeco[1],cobbleDeco[1],cobbleDeco[1]
	]);
	recipes.addShapeless(fullCobble, // blocks from slabs
		[cobbleDeco[0],cobbleDeco[0]
	]);
}