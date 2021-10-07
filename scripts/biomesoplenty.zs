import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei. JEI;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

JEI.removeAndHide(<biomesoplenty:peach>);
JEI.removeAndHide(<biomesoplenty:plant_1:3>);
JEI.removeAndHide(<biomesoplenty:ricebowl>);

JEI.removeAndHide(<biomesoplenty:terrestrial_artifact>);
JEI.removeAndHide(<biomesoplenty:biome_finder>);

JEI.removeAndHide(<biomesoplenty:gem:7>);
JEI.removeAndHide(<biomesoplenty:gem_ore:7>);
JEI.removeAndHide(<biomesoplenty:gem_block:7>);
JEI.removeAndHide(<biomesoplenty:gem_ore:7>);

JEI.removeAndHide(<biomesoplenty:gem:3>);
JEI.removeAndHide(<biomesoplenty:gem_ore:3>);
JEI.removeAndHide(<biomesoplenty:gem_block:3>);
JEI.removeAndHide(<biomesoplenty:gem_ore:3>);

JEI.removeAndHide(<biomesoplenty:gem:4>);
JEI.removeAndHide(<biomesoplenty:gem_ore:4>);
JEI.removeAndHide(<biomesoplenty:gem_block:4>);
JEI.removeAndHide(<biomesoplenty:gem_ore:4>);

JEI.removeAndHide(<biomesoplenty:gem:5>);
JEI.removeAndHide(<biomesoplenty:gem_ore:5>);
JEI.removeAndHide(<biomesoplenty:gem_block:5>);
JEI.removeAndHide(<biomesoplenty:gem_ore:5>);

JEI.removeAndHide(<biomesoplenty:honey_block>);
JEI.removeAndHide(<biomesoplenty:honeycomb>);
JEI.removeAndHide(<biomesoplenty:filled_honeycomb>);
JEI.removeAndHide(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000}));
JEI.removeAndHide(<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));

<ore:foodFilledhoneycomb>.remove(<biomesoplenty:filled_honeycomb>);

recipes.remove(<biomesoplenty:hive:1>);
recipes.remove(<biomesoplenty:hive:3>);

recipes.remove(<biomesoplenty:flesh>);

furnace.setFuel(<biomesoplenty:ash>, 15);
furnace.setFuel(<biomesoplenty:ash_block>, 150);

RecipeBuilder.get("mage")
  .setShaped([
    [<biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>],
    [<biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>],
    [<biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>, <biomesoplenty:fleshchunk>]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:creation_rune>, 1)
  .addOutput(<biomesoplenty:flesh>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.remove(<biomesoplenty:mud>);
recipes.addShaped("mudblock", <biomesoplenty:mud>, [
    [<biomesoplenty:mudball>,<biomesoplenty:mudball>,<biomesoplenty:mudball>],
    [<biomesoplenty:mudball>,<biomesoplenty:mudball>,<biomesoplenty:mudball>],
    [<biomesoplenty:mudball>,<biomesoplenty:mudball>,<biomesoplenty:mudball>]
]);

recipes.removeByRecipeName("biomesoplenty:biome_finder");

recipes.remove(<biomesoplenty:gem_block:0>);
recipes.addShaped("exorite_to_block", <biomesoplenty:gem_block:0>, [
    [<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>],
    [<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>],
    [<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>]
]);

recipes.removeByRecipeName("biomesoplenty:amethyst");
recipes.addShapeless("block_to_exorite",<rotn_blocks:exorite_crystal>*9,[<biomesoplenty:gem_block:0>]);

recipes.addShapeless("unfired_mud_bricks",<contenttweaker:unfired_mud_brick>,[<biomesoplenty:mudball>]);

furnace.addRecipe(<minecraft:clay_ball>, <biomesoplenty:mud_brick>, 0.3);

recipes.addShaped("overgrown_stone",<biomesoplenty:grass:1>*8,[
    [<ore:stone>,<ore:stone>,<ore:stone>],
    [<ore:stone>,<minecraft:vine>,<ore:stone>],
    [<ore:stone>,<ore:stone>,<ore:stone>]
]);

recipes.addShaped("white_sand",<biomesoplenty:white_sand>*8,[
    [<ore:sand>,<ore:sand>,<ore:sand>],
    [<ore:sand>,<ore:dyeWhite>,<ore:sand>],
    [<ore:sand>,<ore:sand>,<ore:sand>]
]);

recipes.removeByRecipeName("biomesoplenty:mud_bricks_stairs");
recipes.addShapedMirrored("mud_brick_stairs",<biomesoplenty:mud_brick_stairs:0>*8,[
    [<biomesoplenty:mud_brick_block:0>,null,null],
    [<biomesoplenty:mud_brick_block:0>,<biomesoplenty:mud_brick_block:0>,null],
    [<biomesoplenty:mud_brick_block:0>,<biomesoplenty:mud_brick_block:0>,<biomesoplenty:mud_brick_block:0>]
]);
recipes.addShapeless("mud_bricks_from_stairs",<biomesoplenty:mud_brick_block:0>*3,[<biomesoplenty:mud_brick_stairs:0>,<biomesoplenty:mud_brick_stairs:0>,<biomesoplenty:mud_brick_stairs:0>,<biomesoplenty:mud_brick_stairs:0>]);

recipes.removeByRecipeName("biomesoplenty:white_sandstone_stairs");
recipes.addShapedMirrored("white_sandstone_stairs",<biomesoplenty:white_sandstone_stairs:0>*8,[
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,null,null],
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,null],
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>]
]);
recipes.addShapeless("white_sandstone_from_stairs",<biomesoplenty:white_sandstone:0>*3,[<biomesoplenty:white_sandstone_stairs:0>,<biomesoplenty:white_sandstone_stairs:0>,<biomesoplenty:white_sandstone_stairs:0>,<biomesoplenty:white_sandstone_stairs:0>]);

recipes.remove(<biomesoplenty:terrarium:7>);
recipes.addShapeless("beach_terrarium",<biomesoplenty:terrarium:7>,[<ore:sand>,<biomesoplenty:double_plant:3>,<biomesoplenty:jar_empty>]);

////ash

recipes.removeByRecipeName("biomesoplenty:coal_from_ash");
recipes.remove(<biomesoplenty:ash_block>);

recipes.addShaped("ashblock",<biomesoplenty:ash_block>,[
    [<biomesoplenty:ash>,<biomesoplenty:ash>,<biomesoplenty:ash>],
    [<biomesoplenty:ash>,<biomesoplenty:ash>,<biomesoplenty:ash>],
    [<biomesoplenty:ash>,<biomesoplenty:ash>,<biomesoplenty:ash>]
]);

recipes.addShaped("ashblock_compression",<minecraft:coal>,[
    [<biomesoplenty:ash_block>,<biomesoplenty:ash_block>,<biomesoplenty:ash_block>],
    [<biomesoplenty:ash_block>,<biomesoplenty:ash_block>,<biomesoplenty:ash_block>],
    [<biomesoplenty:ash_block>,<biomesoplenty:ash_block>,<biomesoplenty:ash_block>]
]);