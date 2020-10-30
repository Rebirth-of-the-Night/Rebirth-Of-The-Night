import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;

// Armor
var mythrilArmor = itemUtils.getItemsByRegexRegistryName("simpleores:mythril_(helmet|chestplate|leggings|boots)") as IItemStack[];
var onyxArmor  = itemUtils.getItemsByRegexRegistryName("simpleores:onyx_(helmet|chestplate|leggings|boots)") as IItemStack[];
var viridiumArmor = itemUtils.getItemsByRegexRegistryName("simpleores:adamantium_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonsteelFireArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_fire_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonsteelIceArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_ice_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleRedArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_red_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleBronzeArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_bronze_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleEmeraldArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_green_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleGrayArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_gray_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleBlueArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_blue_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleWhiteArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_white_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleSapphireArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_sapphire_(helmet|chestplate|leggings|boots)") as IItemStack[];
var dragonScaleSilverArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:armor_silver_(helmet|chestplate|leggings|boots)") as IItemStack[];
var soulforgedSteelArmor = itemUtils.getItemsByRegexRegistryName("betterwithmods:steel_(helmet|chest|pants|boots)") as IItemStack[];
var meteorArmor = itemUtils.getItemsByRegexRegistryName("nyx:meteor_(helm|chest|pants|boots)") as IItemStack[];

var anvilArmorMap = {
    <ore:ingotMythril> : mythrilArmor,
    <ore:gemOnyx> : onyxArmor,
    <ore:ingotViridium> : viridiumArmor,
    <iceandfire:dragonsteel_fire_ingot> : dragonsteelFireArmor,
    <iceandfire:dragonsteel_ice_ingot> : dragonsteelIceArmor,
    <iceandfire:dragonscales_red> : dragonScaleRedArmor,
    <iceandfire:dragonscales_bronze> : dragonScaleBronzeArmor,
    <iceandfire:dragonscales_green> : dragonScaleEmeraldArmor,
    <iceandfire:dragonscales_gray> : dragonScaleGrayArmor,
    <iceandfire:dragonscales_blue> : dragonScaleBlueArmor,
    <iceandfire:dragonscales_white> : dragonScaleWhiteArmor,
    <iceandfire:dragonscales_sapphire> : dragonScaleSapphireArmor,
    <iceandfire:dragonscales_silver> : dragonScaleSilverArmor,
    <betterwithmods:material:14> : soulforgedSteelArmor,
    <nyx:meteor_ingot> : meteorArmor
} as IItemStack[][IIngredient];

var plateArmor = <betterwithmods:material:42>;
var counter = 0;

mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_helmet>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_chest>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_pants>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_boots>);

for mat, armor in anvilArmorMap{
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// boots 0
    }
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [null, null, mat],
        [mat, mat, plateArmor],
        [mat, mat, plateArmor],
        [null, null, mat]
    ]);

    counter += 1;
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// chestplate 1
    }
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [plateArmor, mat, mat, mat],
        [null, mat, mat, mat],
        [null, mat, mat, mat],
        [plateArmor, mat, mat, mat]
    ]);

    counter += 1;
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// helmet 2
    }
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [mat, mat, mat, plateArmor],
        [mat, null, null, null],
        [mat, null, null, null],
        [mat, mat, mat, plateArmor]
    ]);

    counter += 1;
    if(!(armor has <betterwithmods:material:14>)){
        recipes.remove(armor[counter]);// leggings 3
    }
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [mat, plateArmor, plateArmor, plateArmor],
        [mat, mat, null, null],
        [mat, mat, null, null],
        [mat, plateArmor, plateArmor, plateArmor]
    ]);

    counter = 0;
}

var tideBlueArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_blue.*") as IItemStack[];
var tideBronzeArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_bronze.*") as IItemStack[];
var tideDeepBlueArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_deepblue.*") as IItemStack[];
var tideGreenArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_green.*") as IItemStack[];
var tidePurpleArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_purple.*") as IItemStack[];
var tideRedArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_red.*") as IItemStack[];
var tideTealArmor = itemUtils.getItemsByRegexRegistryName("iceandfire:tide_teal.*") as IItemStack[];

var tideArmorMap = {
    <iceandfire:sea_serpent_scales_blue> : tideBlueArmor,
    <iceandfire:sea_serpent_scales_bronze> : tideBronzeArmor,
    <iceandfire:sea_serpent_scales_deepblue> : tideDeepBlueArmor,
    <iceandfire:sea_serpent_scales_green> : tideGreenArmor,
    <iceandfire:sea_serpent_scales_purple> : tidePurpleArmor,
    <iceandfire:sea_serpent_scales_red> : tideRedArmor,
    <iceandfire:sea_serpent_scales_teal> : tideTealArmor
} as IItemStack[][IItemStack];

var shinyScales = <iceandfire:shiny_scales>;

for mat, armor in tideArmorMap{
    recipes.remove(armor[counter]);// boots 0
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [null, null, mat],
        [shinyScales, mat, plateArmor],
        [shinyScales, mat, plateArmor],
        [null, null, mat]
    ]);

    counter += 1;
    recipes.remove(armor[counter]);// chestplate 1
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [plateArmor, mat, mat, shinyScales],
        [null, mat, mat, mat],
        [null, mat, mat, mat],
        [plateArmor, mat, mat, shinyScales]
    ]);

    counter += 1;
    recipes.remove(armor[counter]);// helmet 2
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [shinyScales, mat, mat, plateArmor],
        [mat, null, null, null],
        [mat, null, null, null],
        [shinyScales, mat, mat, plateArmor]
    ]);

    counter += 1;
    recipes.remove(armor[counter]);// leggings 3
    mods.betterwithmods.Anvil.addShaped(armor[counter],[
        [plateArmor, plateArmor, plateArmor, shinyScales],
        [mat, mat, null, null],
        [mat, mat, null, null],
        [plateArmor, plateArmor, plateArmor, shinyScales]
    ]);

    counter = 0;
}

// Spartan Weapons

// Viridium: Saber, Katana, Staff, Spear, Dagger
// Mythril: Rapier, Longsword, Glaive, Lance, Mace, Boomerang, Javelin, Lance
// Onyx: Halberd, Greatsword, Warhammer, Pike, Battleaxe, Hammer

mods.jei.JEI.removeAndHide(<spartancompat:longsword_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:halberd_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:greatsword_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:hammer_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:warhammer_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:pike_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:lance_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:longbow_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:crossbow_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:rapier_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:mace_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:battleaxe_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:glaive_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:boomerang_adamantium>);
mods.jei.JEI.removeAndHide(<spartancompat:javelin_adamantium>);

mods.jei.JEI.removeAndHide(<spartancompat:halberd_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:greatsword_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:hammer_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:warhammer_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:pike_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:longbow_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:crossbow_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:battleaxe_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:saber_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:katana_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:staff_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:spear_mythril>);
mods.jei.JEI.removeAndHide(<spartancompat:dagger_mythril>);

mods.jei.JEI.removeAndHide(<spartancompat:longsword_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:longbow_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:crossbow_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:rapier_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:lance_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:mace_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:glaive_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:boomerang_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:javelin_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:saber_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:staff_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:spear_onyx>);
mods.jei.JEI.removeAndHide(<spartancompat:dagger_onyx>);

var mythrilSpart = itemUtils.getItemsByRegexRegistryName("spartancompat:.*(?<!crossbow_|throwing_axe_|throwing_knife_)mythril") as IItemStack[];
var onyxSpart  = itemUtils.getItemsByRegexRegistryName("spartancompat:.*(?<!crossbow_|throwing_axe_|throwing_knife_)onyx") as IItemStack[];
var viridiumSpart = itemUtils.getItemsByRegexRegistryName("spartancompat:.*(?<!crossbow_|throwing_axe_|throwing_knife_)adamantium") as IItemStack[];
var dragonsteelFireSpart = itemUtils.getItemsByRegexRegistryName("spartanfire:.*(?<!crossbow_|throwing_axe_|throwing_knife_)fire_dragonsteel") as IItemStack[];
var dragonsteelIceSpart = itemUtils.getItemsByRegexRegistryName("spartanfire:.*(?<!crossbow_|throwing_axe_|throwing_knife_)ice_dragonsteel") as IItemStack[];
var dragonBoneSpart = itemUtils.getItemsByRegexRegistryName("spartanfire:.*(?<!crossbow_|throwing_axe_|throwing_knife_|ice_|fire_)dragonbone") as IItemStack[];

var anvilSpartMap = {
    [<ore:ingotMythril>, <minecraft:blaze_rod>] : mythrilSpart,
    [<ore:gemOnyx>, <minecraft:blaze_rod>] : onyxSpart,
    [<ore:ingotViridium>, <minecraft:blaze_rod>] : viridiumSpart,
    [<iceandfire:dragonsteel_fire_ingot>, <spartanfire:witherbone_handle>] : dragonsteelFireSpart,
    [<iceandfire:dragonsteel_ice_ingot>, <spartanfire:witherbone_handle>] : dragonsteelIceSpart,
    [<iceandfire:dragonbone>, <spartanfire:witherbone_handle>] : dragonBoneSpart
} as IItemStack[][IIngredient[]];

for mat, spart in anvilSpartMap{
    recipes.remove(spart[counter]);// battleaxe 0
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [mat[0], mat[0], mat[0], null],
        [null, mat[0], mat[1], mat[1]],
        [null, mat[0], null, null],
        [mat[0], mat[0], mat[0], null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// boomerang 1
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [mat[0], mat[1], mat[1]],
        [mat[1], null, null],
        [mat[1], null, null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// dagger 2
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [mat[0], mat[1]]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// glaive 3
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, mat[0], null, mat[1]],
        [null, null, mat[1], null],
        [mat[0], mat[1], null, null],
        [mat[0], mat[0], null, null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// greatsword 4
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, mat[0], mat[0], mat[0]],
        [mat[0], mat[0], mat[0], mat[1]],
        [null, mat[0], mat[0], mat[0]]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// halberd 5
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, mat[0]],
        [null, mat[0], mat[1], null],
        [mat[0], mat[1], null, null],
        [mat[0], null, null, null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// hammer 6
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [mat[0], mat[0], null, null],
        [mat[0], mat[0], mat[1], mat[1]],
        [mat[0], mat[0], mat[1], mat[1]],
        [mat[0], mat[0], null, null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// javelin 7
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [mat[0], mat[0], mat[1]],
    ]);


    counter += 1;
    recipes.remove(spart[counter]);// katana 8
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, mat[1]],
        [null, null, mat[0], null],
        [null, mat[0], null, null],
        [mat[0], null, null, null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// lance 9
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, mat[0], mat[1]],
        [null, null, mat[1], mat[0]],
        [null, mat[1], null, null],
        [mat[0], null, null, null]
    ]);

    counter += 1;
    if(!(mat has <minecraft:blaze_rod>)){
        recipes.remove(spart[counter]);// longbow 10
        for stick in <ore:stickWood>.items{
            mods.betterwithmods.Anvil.addShaped(spart[counter],[
                [mat[1], stick, mat[0], mat[0]],
                [stick, null, null, <betterwithmods:material:3>],
                [mat[0], null, null, <betterwithmods:material:3>],
                [mat[0], <betterwithmods:material:3>, <betterwithmods:material:3>, null]
            ]);
        }
    }

    counter += 1;
    recipes.remove(spart[counter]);//longsword 11
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, mat[0]],
        [mat[0], mat[0], mat[0], mat[1]],
        [null, null, null, mat[0]]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// mace 12
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, mat[1]],
        [mat[0], mat[0], mat[1], null],
        [mat[0], mat[1], mat[0], null],
        [mat[0], mat[0], mat[0], null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// pike 13
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, null],
        [null, null, null, null],
        [mat[0], mat[0], mat[1], mat[1]]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// rapier 14
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, mat[0], mat[1]],
        [null, null, mat[0], mat[0]],
        [null, mat[0], null, null],
        [mat[0], null, null, null]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// saber 15
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, mat[0]],
        [mat[0], mat[0], mat[0], mat[1]]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// spear 16
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [mat[0], mat[0], mat[1]]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// staff 17
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, null],
        [mat[0], mat[1], mat[1], mat[0]]
    ]);

    counter += 1;
    recipes.remove(spart[counter]);// warhammer 18
    mods.betterwithmods.Anvil.addShaped(spart[counter],[
        [null, null, null, null],
        [mat[0], mat[0], null, null],
        [mat[0], mat[0], mat[1], mat[0]],
        [mat[0], mat[0], null, null]
    ]);

    counter = 0;
}

// Tools + Sword + Bow

var dragonsteelFireTool = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_fire_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];
var dragonsteelIceTool = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonsteel_ice_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];
var dragonBoneTool = itemUtils.getItemsByRegexRegistryName("iceandfire:dragonbone_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];
var soulforgedSteelTool = itemUtils.getItemsByRegexRegistryName("betterwithmods:steel_(axe|hoe|pickaxe|shovel)");
var meteorTool = itemUtils.getItemsByRegexRegistryName("nyx:meteor_(axe|hoe|pickaxe|shovel|sword)") as IItemStack[];

var anvilToolMap = {
    [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:witherbone>] : dragonsteelFireTool,
    [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:witherbone>] : dragonsteelIceTool,
    [<iceandfire:dragonbone>, <iceandfire:witherbone>] : dragonBoneTool,
    [<betterwithmods:material:14>, <betterwithmods:material:36>] : soulforgedSteelTool,
    [<nyx:meteor_ingot>, <betterwithmods:material:36>] : meteorTool
} as IItemStack[][IItemStack[]];

for mat, tool in anvilToolMap{
    if(mat has <betterwithmods:material:14>){
        mods.betterwithmods.Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// axe 0
    }
    mods.betterwithmods.Anvil.addShaped(tool[counter],[
        [null, null, null, mat[1]],
        [mat[0], mat[0], mat[1], null],
        [mat[0], mat[1], null,null],
        [mat[0], null, null, null]
    ]);

    counter += 1;
    if(mat has <betterwithmods:material:14>){
        mods.betterwithmods.Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// hoe 1
    }
    mods.betterwithmods.Anvil.addShaped(tool[counter],[
        [null, null, null, mat[1]],
        [mat[0], null, mat[1], null],
        [mat[0], mat[1], null, null],
        [mat[1], null, null, null]
    ]);

    counter += 1;
    if(mat has <betterwithmods:material:14>){
        mods.betterwithmods.Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// pickaxe 2
    }
    mods.betterwithmods.Anvil.addShaped(tool[counter],[
        [null,null, null, mat[1]],
        [mat[0], null, mat[1], null],
        [mat[0], mat[0], null, null],
        [null, mat[0], mat[0], null]
    ]);

    counter += 1;
    if(mat has <betterwithmods:material:14>){
        mods.betterwithmods.Anvil.removeShaped(tool[counter]);
    } else{
        recipes.remove(tool[counter]);// shovel 3
    }
    mods.betterwithmods.Anvil.addShaped(tool[counter],[
        [null, null, null, mat[1]],
        [null, null, mat[1], null],
        [mat[0], mat[1], null, null],
        [mat[0], mat[0], null, null]
    ]);

    counter += 1;
    if(!(mat has <betterwithmods:material:14>)){
        recipes.remove(tool[counter]);// sword 4
        mods.betterwithmods.Anvil.addShaped(tool[counter],[
            [null, null, mat[0], <spartanfire:witherbone_handle>],
            [null, null, mat[0], null],
            [null, mat[0], null, null],
            [mat[0], null, null, null]
        ]);
    }

    counter = 0;
}

recipes.remove(<iceandfire:dragonbone_bow>);
mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonbone_bow>,[
    [null, null, null, <iceandfire:dragonbone>],
    [null, <iceandfire:witherbone>, <iceandfire:dragonbone>, <minecraft:string>],
    [null, <iceandfire:dragonbone>, <minecraft:string>, null],
    [<iceandfire:dragonbone>, <minecraft:string>, null, null]
]);

recipes.remove(<simpleores:mythril_bow>);
recipes.remove(<simpleores:mythril_sword>);
recipes.remove(<simpleores:mythril_pickaxe>);
recipes.remove(<simpleores:mythril_axe>);
recipes.remove(<simpleores:mythril_shovel>);
recipes.remove(<simpleores:mythril_hoe>);

recipes.remove(<simpleores:adamantium_sword>);
recipes.remove(<simpleores:adamantium_pickaxe>);
recipes.remove(<simpleores:adamantium_axe>);
recipes.remove(<simpleores:adamantium_shovel>);
recipes.remove(<simpleores:adamantium_hoe>);

recipes.remove(<simpleores:onyx_sword>);
recipes.remove(<simpleores:onyx_pickaxe>);
recipes.remove(<simpleores:onyx_axe>);
recipes.remove(<simpleores:onyx_shovel>);
recipes.remove(<simpleores:onyx_hoe>);

val viri = <ore:ingotViridium>;
val myth = <ore:ingotMythril>;
val onyx = <ore:gemOnyx>;
val brod = <minecraft:blaze_rod>;
val orod = <simpleores:onyx_rod>;
val mrod = <simpleores:mythril_rod>;
val strings = <minecraft:string>;
var neths = <minecraft:nether_star>;
var mbow = <simpleores:mythril_bow>;
var diam = <ore:gemDiamond>;

mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_sword>, [
   [null, null, viri, brod],// viridium
   [null, null, viri, null],
   [null, viri, null, null],
   [viri, null, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_pickaxe>, [
   [null,null, null, viri],
   [viri, null, brod, null],
   [viri, brod, null, null],
   [null, viri, viri, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_axe>, [
   [null, viri, null, viri],
   [viri, viri, brod, null],
   [viri, brod, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [viri, brod, null, null],
   [viri, viri, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_hoe>, [
   [null, viri, null, viri],
   [viri, null, brod, null],
   [viri, brod, null, null],
   [brod, null, null, null]
]);

mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_sword>, [
   [null, null, null, brod],// mythril
   [null, null, myth, null],
   [null, mrod, null, null],
   [myth, null, null, null]
]);

val enchantmentsMythrilBow as IEnchantmentDefinition[] = [<enchantment:randomenchantments:quickdraw>];
var enchantmentMapMythrilBow as IData = {};

enchantmentMapMythrilBow += enchantmentsMythrilBow[0].makeEnchantment(2).makeTag();

mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_bow>.withTag(enchantmentMapMythrilBow), [
   [null, null, null, mrod],
   [null, brod, myth, strings],
   [null, myth, strings, null],
   [mrod, strings, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_pickaxe>, [
   [null,null, null, brod],
   [myth, null, brod, null],
   [myth, myth, null, null],
   [null, myth, myth, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_axe>, [
   [null, null, null, brod],
   [myth, myth, brod, null],
   [myth, brod, null,null],
   [mrod, null, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [myth, brod, null, null],
   [myth, myth, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_hoe>, [
   [null, null, null, brod],
   [mrod, null, brod, null],
   [mrod, brod, null, null],
   [brod, null, null, null]
]);

mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_sword>, [
   [null, null, null, brod],// onyx and bow replacement
   [null, null, orod, null],
   [null, orod, null, null],
   [orod, null, null, null]
]);

mods.jei.JEI.removeAndHide(<simpleores:onyx_bow>);
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatbow>);
<betterwithaddons:greatbow>.maxDamage = 1000;

val enchantments1 as IEnchantmentDefinition[] = [<enchantment:minecraft:fire_aspect>, <enchantment:randomenchantments:quickdraw>];
var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(2).makeTag();
enchantmentMap1 += enchantments1[1].makeEnchantment(1).makeTag();

mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatbow>.withTag(enchantmentMap1), [
   [null, null, null, orod],
   [null, <minecraft:nether_star>, orod, <quark:biotite>],
   [null, orod, mbow, null],
   [orod, <quark:biotite>, null, null]
]);

mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_pickaxe>, [
   [null,null, null, brod],
   [onyx, null, brod, null],
   [onyx, onyx, null, null],
   [null, onyx, onyx, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_axe>, [
   [null, null, null, brod],
   [null, orod, brod, null],
   [orod, brod, null,null],
   [onyx, null, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [onyx, brod, null, null],
   [onyx, onyx, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_hoe>, [
   [null, null, null, brod],
   [orod, null, brod, null],
   [orod, brod, null, null],
   [brod, null, null, null]
]);