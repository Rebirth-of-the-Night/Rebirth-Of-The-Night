import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <netherex:rime_crystal>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <netherex:frost_powder>, <minecraft:potion>.withTag({Potion: "netherex:freezing"}));

// temporary
recipes.addShaped(<netherex:ghast_queen_tear>,[
[<quark:biotite>, <biomesoplenty:biome_essence>, <quark:biotite>],
[<minecraft:ghast_tear>, <minecraft:nether_star>, <minecraft:ghast_tear>], 
[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>]
]);

mods.jei.JEI.removeAndHide(<netherex:dull_mirror>);


mods.ltt.LootTable.removeGlobalItem("netherex:wither_bone");
mods.jei.JEI.removeAndHide(<netherex:wither_bone>);
mods.jei.JEI.removeAndHide(<netherex:wither_dust>);

mods.jei.JEI.removeAndHide(<netherex:withered_amedian_sword>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_pickaxe>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_shovel>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_axe>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_hoe>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_hammer>);
mods.jei.JEI.removeAndHide(<netherex:rime_and_steel>);


mods.jei.JEI.removeAndHide(<netherex:blazed_amedian_sword>);
mods.jei.JEI.removeAndHide(<netherex:blazed_amedian_pickaxe>);
mods.jei.JEI.removeAndHide(<netherex:blazed_amedian_shovel>);
mods.jei.JEI.removeAndHide(<netherex:blazed_amedian_axe>);
mods.jei.JEI.removeAndHide(<netherex:blazed_amedian_hoe>);
mods.jei.JEI.removeAndHide(<netherex:blazed_amedian_hammer>);

mods.jei.JEI.removeAndHide(<netherex:frosted_amedian_hammer>);


mods.jei.JEI.removeAndHide(<netherex:blazed_wither_bone>);

mods.jei.JEI.removeAndHide(<netherex:gloomy_netherbrick>);
mods.jei.JEI.removeAndHide(<netherex:lively_netherbrick>);
mods.jei.JEI.removeAndHide(<netherex:fiery_netherbrick>);
mods.jei.JEI.removeAndHide(<netherex:icy_netherbrick>);
mods.jei.JEI.removeAndHide(<netherex:amethyst_crystal>);
mods.jei.JEI.removeAndHide(<netherex:amethyst_block>);
mods.jei.JEI.removeAndHide(<netherex:amethyst_ore>);

mods.jei.JEI.removeAndHide(<netherex:nether_brick_wall>);
mods.jei.JEI.removeAndHide(<netherex:red_nether_brick_wall>);
recipes.removeByRecipeName("netherex:quartz_block");
recipes.removeByRecipeName("netherex:gloomy_nether_brick_2");
recipes.removeByRecipeName("netherex:lively_nether_brick_2");
recipes.removeByRecipeName("netherex:fiery_nether_brick_2");
recipes.removeByRecipeName("netherex:icy_nether_brick_2");
recipes.removeByRecipeName("netherex:basalt_2");
recipes.removeByRecipeName("netherex:smooth_basalt_3");
recipes.removeByRecipeName("netherex:basalt_brick_3");
recipes.removeByRecipeName("netherex:basalt_pillar_2");
recipes.removeByRecipeName("netherex:soul_glass");

recipes.remove(<netherex:soul_glass_pane>);
recipes.addShaped("soul_glass_pane",<netherex:soul_glass_pane>,[
    [<netherex:soul_glass>,<netherex:soul_glass>,<netherex:soul_glass>],
    [<netherex:soul_glass>,<netherex:soul_glass>,<netherex:soul_glass>]
]);

recipes.addShaped("nether_brick_fence_gate",<netherex:nether_brick_fence_gate>*6,[
    [<minecraft:stone_slab:6>,<minecraft:nether_brick>,<minecraft:stone_slab:6>],
    [<minecraft:stone_slab:6>,<minecraft:nether_brick>,<minecraft:stone_slab:6>]
]);

recipes.removeByRecipeName("netherex:basalt");
recipes.addShapeless("black_basalt",<netherex:basalt>,[<netherex:smooth_basalt>]);

recipes.removeByRecipeName("netherex:smooth_basalt_1");
recipes.addShapeless("smooth_black_basalt",<netherex:smooth_basalt>,[<netherex:basalt_brick>]);

recipes.removeByRecipeName("netherex:basalt_brick_1");
recipes.addShapeless("black_basalt_bricks",<netherex:basalt_brick>,[<netherex:basalt_pillar>]);

var slabArray = [<netherex:red_nether_brick_slab:0>,<netherex:gloomy_nether_brick_slab:0>,<netherex:lively_nether_brick_slab:0>,<netherex:fiery_nether_brick_slab:0>,<netherex:icy_nether_brick_slab:0>,<netherex:basalt_slab:0>,<netherex:smooth_basalt_slab:0>,<netherex:basalt_brick_slab:0>,<netherex:basalt_pillar_slab:0>] as IItemStack[];
var stairArray = [<netherex:red_nether_brick_stairs>,<netherex:gloomy_nether_brick_stairs>,<netherex:lively_nether_brick_stairs>,<netherex:fiery_nether_brick_stairs>,<netherex:icy_nether_brick_stairs>,<netherex:basalt_stairs>,<netherex:smooth_basalt_stairs>,<netherex:basalt_brick_stairs>,<netherex:basalt_pillar_stairs>] as IItemStack[];

for i, output in stairArray{
    recipes.addShapedMirrored(output*4,[
        [slabArray[i],null,null],
        [slabArray[i],slabArray[i],null],
        [slabArray[i],slabArray[i],slabArray[i]]
    ]);
}

//End Reborn Compatibility
recipes.addShaped(<atop:amethyst_helmet>,[
[<netherex:amethyst_crystal>, <netherex:amethyst_crystal>, <netherex:amethyst_crystal>],
[<netherex:amethyst_crystal>, null, <netherex:amethyst_crystal>], 
[null, null, null]
]);
recipes.addShaped(<atop:amethyst_chestplate>,[
[<netherex:amethyst_crystal>, null, <netherex:amethyst_crystal>],
[<netherex:amethyst_crystal>, <netherex:amethyst_crystal>, <netherex:amethyst_crystal>], 
[<netherex:amethyst_crystal>, <netherex:amethyst_crystal>, <netherex:amethyst_crystal>]
]);
recipes.addShaped(<atop:amethyst_leggings>,[
[<netherex:amethyst_crystal>, <netherex:amethyst_crystal>, <netherex:amethyst_crystal>],
[<netherex:amethyst_crystal>, null, <netherex:amethyst_crystal>], 
[<netherex:amethyst_crystal>, null, <netherex:amethyst_crystal>]
]);
recipes.addShaped(<atop:amethyst_boots>,[
[null, null, null],
[<netherex:amethyst_crystal>, null, <netherex:amethyst_crystal>], 
[<netherex:amethyst_crystal>, null, <netherex:amethyst_crystal>]
]);

recipes.remove(<netherex:frosted_amedian_sword>);
recipes.remove(<netherex:frosted_amedian_pickaxe>);
recipes.remove(<netherex:frosted_amedian_shovel>);
recipes.remove(<netherex:frosted_amedian_axe>);
recipes.remove(<netherex:frosted_amedian_hoe>);

recipes.remove(<netherex:wither_bone_helmet>);
recipes.remove(<netherex:wither_bone_chestplate>);
recipes.remove(<netherex:wither_bone_leggings>);
recipes.remove(<netherex:wither_bone_boots>);

recipes.remove(<netherex:wither_dust>);
recipes.remove(<netherex:frosted_wither_bone>);



var frostedwitherbone = <netherex:frosted_wither_bone>;
var rime = <netherex:rime_block>;
var obsidian = <minecraft:obsidian>;
var rimecrystal = <netherex:rime_crystal>;
var steel = <dungeontactics:steel_ingot>;
var witherbone = <iceandfire:witherbone>;
var frostrod = <netherex:frost_rod>;
var witherash = <quark:black_ash>;
var bone = <minecraft:bone>;


// Armors
recipes.addShaped("Wither Bone Helmet", <netherex:wither_bone_helmet>,[
    [witherbone, witherbone, witherbone],
    [witherbone, null, witherbone],
    [null, null, null]
]);
recipes.addShaped("Wither Bone Chestplate", <netherex:wither_bone_chestplate>,[
    [witherbone, null, witherbone],
    [witherbone, witherbone, witherbone],
    [witherbone, witherbone, witherbone]
]);
recipes.addShaped("Wither Bone Leggings", <netherex:wither_bone_leggings>,[
    [witherbone, witherbone, witherbone],
    [witherbone, null, witherbone],
    [witherbone, null, witherbone]
]);
recipes.addShaped("Wither Bone Boots", <netherex:wither_bone_boots>,[
    [null, null, null],
    [witherbone, null, witherbone],
    [witherbone, null, witherbone]
]);



recipes.addShaped("Frosted Wither Bone", <netherex:frosted_wither_bone> * 3,[
    [null, frostrod, null],
    [frostrod, witherbone, frostrod],
    [null, frostrod, null]
]);

recipes.addShaped("Wither Bone", <iceandfire:witherbone>,[
    [witherash, witherash, witherash],
    [witherash, bone, witherash],
    [witherash, witherash, witherash]
]);

recipes.addShaped("Frosted Amedian Sword", <netherex:frosted_amedian_sword>,[
    [rime, obsidian, rime],
    [rime, obsidian, rime],
    [null, frostedwitherbone, null]
]);

recipes.addShaped("Frosted Amedian Pickaxe", <netherex:frosted_amedian_pickaxe>,[
    [rime, obsidian, rime],
    [null, frostedwitherbone, null],
    [null, frostedwitherbone, null]
]);

recipes.addShaped("Frosted Amedian Shovel", <netherex:frosted_amedian_shovel>,[
    [null, rime, null],
    [null, obsidian, null],
    [null, frostedwitherbone, null]
]);

recipes.addShapedMirrored("Frosted Amedian Axe", <netherex:frosted_amedian_axe>,[
    [rime, obsidian, null],
    [rime, frostedwitherbone, null],
    [null, frostedwitherbone, null]
]);

recipes.addShapedMirrored("Frosted Amedian Hoe", <netherex:frosted_amedian_hoe>,[
    [rime, obsidian, null],
    [null, frostedwitherbone, null],
    [null, frostedwitherbone, null]
]);
