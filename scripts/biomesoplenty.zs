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

recipes.removeByRecipeName("biomesoplenty:mud_bricks_stairs");
recipes.addShaped("mud_brick_stairs",<biomesoplenty:mud_brick_stairs:0>*8,[
    [<biomesoplenty:mud_brick_block:0>,null,null],
    [<biomesoplenty:mud_brick_block:0>,<biomesoplenty:mud_brick_block:0>,null],
    [<biomesoplenty:mud_brick_block:0>,<biomesoplenty:mud_brick_block:0>,<biomesoplenty:mud_brick_block:0>]
]);

recipes.removeByRecipeName("biomesoplenty:white_sandstone_stairs");
recipes.addShaped("white_sandstone_stairs",<biomesoplenty:white_sandstone_stairs:0>*8,[
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,null,null],
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,null],
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>]
]);