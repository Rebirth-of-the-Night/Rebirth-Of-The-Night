import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<biomesoplenty:peach>);
mods.jei.JEI.removeAndHide(<biomesoplenty:plant_1:3>);
mods.jei.JEI.removeAndHide(<biomesoplenty:ricebowl>);

mods.jei.JEI.removeAndHide(<biomesoplenty:jar_filled:0>);
mods.jei.JEI.removeAndHide(<biomesoplenty:hive:1>);
mods.jei.JEI.removeAndHide(<biomesoplenty:hive:2>);
mods.jei.JEI.removeAndHide(<biomesoplenty:hive:3>);
mods.jei.JEI.removeAndHide(<biomesoplenty:honey_block>);
mods.jei.JEI.removeAndHide(<biomesoplenty:honeycomb>);
mods.jei.JEI.removeAndHide(<biomesoplenty:filled_honeycomb>);
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "honey"}));

mods.jei.JEI.removeAndHide(<biomesoplenty:terrestrial_artifact>);
mods.jei.JEI.removeAndHide(<biomesoplenty:biome_finder>);

mods.jei.JEI.removeAndHide(<biomesoplenty:gem:7>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:7>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_block:7>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:7>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_stone_tile.gem_ore.amber_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_stone_tile.gem_ore.amber_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_stone_tile.gem_ore.amber_ore:*>);

mods.jei.JEI.removeAndHide(<biomesoplenty:gem:3>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:3>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_block:3>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:3>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_stone_tile.gem_ore.topaz_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_stone_tile.gem_ore.topaz_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_stone_tile.gem_ore.topaz_ore:*>);

mods.jei.JEI.removeAndHide(<biomesoplenty:gem:4>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:4>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_block:4>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:4>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_stone_tile.gem_ore.tanzanite_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_stone_tile.gem_ore.tanzanite_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_stone_tile.gem_ore.tanzanite_ore:*>);

mods.jei.JEI.removeAndHide(<biomesoplenty:gem:5>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:5>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_block:5>);
mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:5>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_stone_tile.gem_ore.malachite_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_stone_tile.gem_ore.malachite_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_stone_tile.gem_ore.malachite_ore:*>);

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