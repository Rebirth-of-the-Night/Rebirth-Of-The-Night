import crafttweaker.item.IIngredient;

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <netherex:rime_crystal>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <netherex:frost_powder>, <minecraft:potion>.withTag({Potion: "netherex:freezing"}));

mods.jei.JEI.addDescription(<netherex:ghast_queen_tear>,"They say that every Ghast Queen weeps for their beloved in another dimension. Drop the tears into a 4x4 pool of water surrounded by flowers on top of grass to open the portal.");

mods.ltt.LootTable.removeGlobalItem("netherex:wither_bone");
mods.jei.JEI.removeAndHide(<netherex:wither_bone>);
mods.jei.JEI.removeAndHide(<netherex:wither_dust>);

mods.jei.JEI.removeAndHide(<netherex:withered_amedian_sword>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_pickaxe>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_shovel>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_axe>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_hoe>);
mods.jei.JEI.removeAndHide(<netherex:withered_amedian_hammer>);

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



recipes.remove(<netherex:rime_and_steel>);


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



recipes.addShaped("Rime and Steel", <netherex:rime_and_steel>,[
    [rimecrystal, steel, null],
    [null, null, null],
    [null, null, null]
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

recipes.addShaped("Frosted Amedian Axe", <netherex:frosted_amedian_axe>,[
    [rime, obsidian, null],
    [rime, frostedwitherbone, null],
    [null, frostedwitherbone, null]
]);

recipes.addShaped("Frosted Amedian Hoe", <netherex:frosted_amedian_hoe>,[
    [rime, obsidian, null],
    [null, frostedwitherbone, null],
    [null, frostedwitherbone, null]
]);