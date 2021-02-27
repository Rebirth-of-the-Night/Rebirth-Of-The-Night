import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.aether_legacy.Enchanter;
import mods.advancedmortars.Mortar;

//Name Tweaks
<ore:ingotElectrum>.firstItem.displayName = "Aetherial Electrum";

#ADD RECIPES

val elec = <ore:ingotElectrum>.firstItem;
val elecnugget = <ore:nuggetElectrum>.firstItem;

//BLOCKS
recipes.addShaped("electrum_to_block",<ore:blockElectrum>.firstItem, [
    [elec, elec, elec],
    [elec, elec, elec], 
    [elec, elec, elec]
]);
recipes.addShapeless("block_to_electrum",<ore:ingotElectrum>.firstItem* 9,
    [<ore:blockElectrum>]
);
recipes.addShaped("electrum_to_plateBlock",<contenttweaker:electrum_plate> * 24, [
    [elec, elec, elec],
    [elec, <minetraps:nails:*>, elec], 
    [elec, elec, elec]
]);

//ELECTRUM RECIPES
recipes.addShaped("electrum_nugget_to_ingot",elec, [
    [elecnugget, elecnugget, elecnugget],
    [elecnugget, elecnugget, elecnugget], 
    [elecnugget, elecnugget, elecnugget]
]);
recipes.addShapeless("ingot_to_electrum_nugget",elecnugget * 9, [elec]);

Mortar.addRecipe(["diamond"], <ore:dustElectrum>.firstItem * 4, 12, [<ore:ingotGold> * 4, <ore:ingotSilver> * 3, <aether_legacy:ambrosium_shard> * 2]);
recipes.addShapeless("electrum_dust", <ore:dustElectrum>.firstItem * 4, [<ore:dustGold>, <ore:dustGold>, <ore:dustGold>, <ore:dustGold>, <ore:dustSilver>, <ore:dustSilver>, <ore:dustSilver>, <ore:dustAmbrosium>, <ore:dustAmbrosium>]);
  // Additional recipes on pyrotech scripts 

//JEI decriptions
JEI.addDescription(<ore:ingotElectrum>,"Normal electrum holds little value when compared to Aetherian Electrum. Probably discovered by the valkyries, the value of this material is far greater than the sum of its parts.");

//healing stone
Enchanter.removeEnchantment(<aether_legacy:holystone>);
Enchanter.registerEnchantment(<aether_legacy:dungeon_block:2>, <aether_legacy:healing_stone>, 200);

//Gravitite Ingots
Enchanter.removeEnchantment(<aether_legacy:gravitite_ore>);
Enchanter.registerEnchantment(<aether_legacy:gravitite_ore>, <ore:ingotGravitite>.firstItem, 600);
  
//Aether Enchanter
Enchanter.registerEnchanterFuel(elec,2400);
Enchanter.registerEnchanterFuel(<aether_legacy:ambrosium_shard>,480);

//Aether
Enchanter.registerEnchantment(<aether_legacy:valkyrie_pickaxe>, 8800);
Enchanter.registerEnchantment(<aether_legacy:valkyrie_axe>, 8800);
Enchanter.registerEnchantment(<aether_legacy:valkyrie_shovel>, 8800);
Enchanter.registerEnchantment(<aether_legacy:valkyrie_lance>, 8800);

Enchanter.registerEnchantment(<aether_legacy:valkyrie_helmet>, 8800);
Enchanter.registerEnchantment(<aether_legacy:valkyrie_chestplate>, 8800);
Enchanter.registerEnchantment(<aether_legacy:valkyrie_leggings>, 8800);
Enchanter.registerEnchantment(<aether_legacy:valkyrie_boots>, 8800);


Enchanter.registerEnchantment(<aether_legacy:gravitite_sword>, 8800);
Enchanter.registerEnchantment(<aether_legacy:gravitite_pickaxe>, 8800);
Enchanter.registerEnchantment(<aether_legacy:gravitite_axe>, 8800);
Enchanter.registerEnchantment(<aether_legacy:gravitite_shovel>, 8800);


Enchanter.registerEnchantment(<aether_legacy:gravitite_helmet>, 8800);
Enchanter.registerEnchantment(<aether_legacy:gravitite_chestplate>, 8800);
Enchanter.registerEnchantment(<aether_legacy:gravitite_leggings>, 8800);
Enchanter.registerEnchantment(<aether_legacy:gravitite_boots>, 8800);



Enchanter.registerEnchantment(<aether_legacy:zanite_sword>, 8800);
Enchanter.registerEnchantment(<aether_legacy:zanite_pickaxe>, 8800);
Enchanter.registerEnchantment(<aether_legacy:zanite_axe>, 8800);
Enchanter.registerEnchantment(<aether_legacy:zanite_shovel>, 8800);


Enchanter.registerEnchantment(<aether_legacy:zanite_helmet>, 8800);
Enchanter.registerEnchantment(<aether_legacy:zanite_chestplate>, 8800);
Enchanter.registerEnchantment(<aether_legacy:zanite_leggings>, 8800);
Enchanter.registerEnchantment(<aether_legacy:zanite_boots>, 8800);


Enchanter.registerEnchantment(<aether_legacy:neptune_helmet>, 8800);
Enchanter.registerEnchantment(<aether_legacy:neptune_chestplate>, 8800);
Enchanter.registerEnchantment(<aether_legacy:neptune_leggings>, 8800);
Enchanter.registerEnchantment(<aether_legacy:neptune_boots>, 8800);


Enchanter.registerEnchantment(<aether_legacy:phoenix_helmet>, 8800);
Enchanter.registerEnchantment(<aether_legacy:phoenix_chestplate>, 8800);
Enchanter.registerEnchantment(<aether_legacy:phoenix_leggings>, 8800);
Enchanter.registerEnchantment(<aether_legacy:phoenix_boots>, 8800);


Enchanter.registerEnchantment(<aether_legacy:flaming_sword>, 8800);
Enchanter.registerEnchantment(<aether_legacy:lightning_sword>, 8800);
Enchanter.registerEnchantment(<aether_legacy:holy_sword>, 8800);
Enchanter.registerEnchantment(<aether_legacy:vampire_blade>, 8800);
Enchanter.registerEnchantment(<aether_legacy:pig_slayer>, 8800);
Enchanter.registerEnchantment(<aether_legacy:notch_hammer>, 8800);
Enchanter.registerEnchantment(<aether_legacy:phoenix_bow>, 8800);


//Stone
Enchanter.registerEnchantment(<pyrotech:stone_hammer>, 500);

//Iron
Enchanter.registerEnchantment(<pyrotech:iron_hammer>, 2000);
Enchanter.registerEnchantment(<minecraft:shears>, 2000);
Enchanter.registerEnchantment(<dungeontactics:potshot>, 2000);
Enchanter.registerEnchantment(<dungeontactics:coin_cannon>, 2000);
Enchanter.registerEnchantment(<dungeontactics:backfire_cannon>, 2000);

//Onyx
Enchanter.registerEnchantment(<simpleores:onyx_helmet>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_chestplate>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_leggings>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_boots>, 15600);

Enchanter.registerEnchantment(<simpleores:onyx_pickaxe>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_axe>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_shovel>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_hoe>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_sword>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_bow>, 15600);
Enchanter.registerEnchantment(<betterwithaddons:greatbow>, 15600);
Enchanter.registerEnchantment(<simpleores:onyx_shears>, 15600);
Enchanter.registerEnchantment(<pyrotech:obsidian_hammer>, 15600);

Enchanter.registerEnchantment(<spartancompat:dagger_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:longsword_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:katana_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:saber_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:rapier_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:greatsword_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:hammer_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:warhammer_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:boomerang_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:battleaxe_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:mace_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:glaive_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:staff_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:spear_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:halberd_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:pike_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:lance_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:longbow_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:crossbow_onyx>, 15600);
//Enchanter.registerEnchantment(<spartancompat:throwing_knife_onyx>, 15600);
//Enchanter.registerEnchantment(<spartancompat:throwing_axe_onyx>, 15600);
Enchanter.registerEnchantment(<spartancompat:javelin_onyx>, 15600);

//mythril
Enchanter.registerEnchantment(<simpleores:mythril_helmet>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_chestplate>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_leggings>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_boots>, 14400);

Enchanter.registerEnchantment(<simpleores:mythril_pickaxe>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_axe>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_shovel>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_hoe>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_sword>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_bow>, 14400);
Enchanter.registerEnchantment(<spartanshields:shield_basic_lead>, 14400);
Enchanter.registerEnchantment(<simpleores:mythril_shears>, 14400);

Enchanter.registerEnchantment(<spartancompat:dagger_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:longsword_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:katana_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:saber_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:rapier_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:greatsword_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:hammer_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:warhammer_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:boomerang_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:battleaxe_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:mace_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:glaive_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:staff_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:spear_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:halberd_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:pike_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:lance_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:longbow_mythril>, 14400);
//Enchanter.registerEnchantment(<spartancompat:throwing_knife_mythril>, 14400);
//Enchanter.registerEnchantment(<spartancompat:throwing_axe_mythril>, 14400);
Enchanter.registerEnchantment(<spartancompat:javelin_mythril>, 14400);

//Viridium
Enchanter.registerEnchantment(<simpleores:adamantium_helmet>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_chestplate>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_leggings>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_boots>, 12000);

Enchanter.registerEnchantment(<simpleores:adamantium_pickaxe>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_axe>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_shovel>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_hoe>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_sword>, 12000);
Enchanter.registerEnchantment(<simpleores:adamantium_shears>, 12000);

Enchanter.registerEnchantment(<spartancompat:dagger_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:longsword_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:katana_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:saber_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:rapier_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:greatsword_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:hammer_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:warhammer_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:boomerang_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:battleaxe_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:mace_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:glaive_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:staff_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:spear_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:halberd_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:pike_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:lance_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:longbow_adamantium>, 12000);
//Enchanter.registerEnchantment(<spartancompat:throwing_knife_adamantium>, 12000);
//Enchanter.registerEnchantment(<spartancompat:throwing_axe_adamantium>, 12000);
Enchanter.registerEnchantment(<spartancompat:javelin_adamantium>, 12000);

Enchanter.registerEnchantment(<cyclicmagic:glove_climb>, 12000);

//Wroughtnaught
Enchanter.registerEnchantment(<mowziesmobs:wrought_axe>, 32200);
Enchanter.registerEnchantment(<mowziesmobs:wrought_helmet>, 32200);

//Soul Forged Steel
Enchanter.registerEnchantment(<betterwithmods:steel_helmet>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_chest>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_pants>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_boots>, 14400);

Enchanter.registerEnchantment(<betterwithmods:steel_pickaxe>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_axe>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_shovel>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_hoe>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_sword>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_mattock>, 14400);
Enchanter.registerEnchantment(<betterwithmods:steel_hacksaw>, 14400);
Enchanter.registerEnchantment(<betterwithaddons:steel_spade>, 14400);
Enchanter.registerEnchantment(<betterwithaddons:steel_matchpick>, 14400);
Enchanter.registerEnchantment(<betterwithaddons:steel_machete>, 14400);
Enchanter.registerEnchantment(<betterwithaddons:steel_kukri>, 14400);
Enchanter.registerEnchantment(<betterwithaddons:steel_carpentersaw>, 14400);
Enchanter.registerEnchantment(<betterwithaddons:steel_masonpick>, 14400);
Enchanter.registerEnchantment(<pyrotech:diamond_hammer>, 14400);

Enchanter.registerEnchantment(<spartancompat:dagger_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:longsword_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:katana_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:saber_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:rapier_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:greatsword_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:hammer_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:warhammer_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:boomerang_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:battleaxe_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:mace_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:glaive_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:staff_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:spear_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:halberd_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:pike_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:lance_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:longbow_soulforged_steel>, 14400);
//Enchanter.registerEnchantment(<spartancompat:throwing_knife_soulforged_steel>, 14400);
//Enchanter.registerEnchantment(<spartancompat:throwing_axe_soulforged_steel>, 14400);
Enchanter.registerEnchantment(<spartancompat:javelin_soulforged_steel>, 14400);

//Dragon Bone
Enchanter.registerEnchantment(<iceandfire:dragonbone_pickaxe>, 12000);
Enchanter.registerEnchantment(<iceandfire:dragonbone_axe>, 12000);
Enchanter.registerEnchantment(<iceandfire:dragonbone_shovel>, 12000);
Enchanter.registerEnchantment(<iceandfire:dragonbone_hoe>, 12000);
Enchanter.registerEnchantment(<iceandfire:dragonbone_sword>, 12000);

Enchanter.registerEnchantment(<spartanfire:dagger_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:longsword_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:katana_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:saber_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:rapier_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:greatsword_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:hammer_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:warhammer_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:boomerang_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:battleaxe_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:mace_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:glaive_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:staff_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:spear_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:halberd_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:pike_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:lance_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:longbow_dragonbone>, 12000);
//Enchanter.registerEnchantment(<spartanfire:throwing_knife_dragonbone>, 12000);
//Enchanter.registerEnchantment(<spartanfire:throwing_axe_dragonbone>, 12000);
Enchanter.registerEnchantment(<spartanfire:javelin_dragonbone>, 12000);

//Dragon Scale Armor
Enchanter.registerEnchantment(<iceandfire:armor_red_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_red_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_red_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_red_boots>, 12000);

Enchanter.registerEnchantment(<iceandfire:armor_bronze_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_bronze_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_bronze_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_bronze_boots>, 12000);

Enchanter.registerEnchantment(<iceandfire:armor_green_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_green_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_green_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_green_boots>, 12000);

Enchanter.registerEnchantment(<iceandfire:armor_gray_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_gray_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_gray_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_gray_boots>, 12000);


Enchanter.registerEnchantment(<iceandfire:armor_blue_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_blue_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_blue_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_blue_boots>, 12000);

Enchanter.registerEnchantment(<iceandfire:armor_white_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_white_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_white_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_white_boots>, 12000);

Enchanter.registerEnchantment(<iceandfire:armor_sapphire_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_sapphire_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_sapphire_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_sapphire_boots>, 12000);

Enchanter.registerEnchantment(<iceandfire:armor_silver_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_silver_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_silver_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_silver_boots>, 12000);

Enchanter.registerEnchantment(<iceandfire:armor_silver_metal_helmet>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_silver_metal_chestplate>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_silver_metal_leggings>, 12000);
Enchanter.registerEnchantment(<iceandfire:armor_silver_metal_boots>, 12000);

//Fire Dragon Steel
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_helmet>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_chestplate>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_leggings>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_boots>, 28800);

Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_pickaxe>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_axe>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_shovel>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_hoe>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_fire_sword>, 28800);

Enchanter.registerEnchantment(<spartanfire:dagger_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:longsword_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:katana_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:saber_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:rapier_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:greatsword_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:hammer_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:warhammer_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:boomerang_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:battleaxe_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:mace_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:glaive_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:staff_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:spear_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:halberd_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:pike_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:lance_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:longbow_fire_dragonsteel>, 28800);
//Enchanter.registerEnchantment(<spartanfire:throwing_knife_fire_dragonsteel>, 28800);
//Enchanter.registerEnchantment(<spartanfire:throwing_axe_fire_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:javelin_fire_dragonsteel>, 28800);

//Ice Dragon Steel
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_helmet>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_chestplate>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_leggings>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_boots>, 28800);

Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_pickaxe>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_axe>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_shovel>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_hoe>, 28800);
Enchanter.registerEnchantment(<iceandfire:dragonsteel_ice_sword>, 28800);

Enchanter.registerEnchantment(<spartanfire:dagger_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:longsword_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:katana_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:saber_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:rapier_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:greatsword_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:hammer_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:warhammer_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:boomerang_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:battleaxe_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:mace_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:glaive_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:staff_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:spear_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:halberd_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:pike_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:lance_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:longbow_ice_dragonsteel>, 28800);
//Enchanter.registerEnchantment(<spartanfire:throwing_knife_ice_dragonsteel>, 28800);
//Enchanter.registerEnchantment(<spartanfire:throwing_axe_ice_dragonsteel>, 28800);
Enchanter.registerEnchantment(<spartanfire:javelin_ice_dragonsteel>, 28800);

//Iced and Flamed Dragonbone Weapons
Enchanter.registerEnchantment(<iceandfire:dragonbone_sword_ice>, 14400);
Enchanter.registerEnchantment(<spartanfire:dagger_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:longsword_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:katana_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:saber_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:rapier_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:greatsword_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:hammer_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:warhammer_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:boomerang_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:battleaxe_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:mace_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:glaive_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:staff_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:spear_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:halberd_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:pike_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:lance_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:longbow_ice_dragonbone>, 14400);
//Enchanter.registerEnchantment(<spartanfire:throwing_knife_ice_dragonbone>, 14400);
//Enchanter.registerEnchantment(<spartanfire:throwing_axe_ice_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:javelin_ice_dragonbone>, 14400);

Enchanter.registerEnchantment(<iceandfire:dragonbone_sword_fire>, 14400);
Enchanter.registerEnchantment(<spartanfire:dagger_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:longsword_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:katana_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:saber_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:rapier_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:greatsword_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:hammer_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:warhammer_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:boomerang_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:battleaxe_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:mace_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:glaive_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:staff_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:spear_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:halberd_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:pike_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:lance_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:longbow_fire_dragonbone>, 14400);
//Enchanter.registerEnchantment(<spartanfire:throwing_knife_fire_dragonbone>, 14400);
//Enchanter.registerEnchantment(<spartanfire:throwing_axe_fire_dragonbone>, 14400);
Enchanter.registerEnchantment(<spartanfire:javelin_fire_dragonbone>, 14400);

//Endorium
Enchanter.registerEnchantment(<endreborn:armour_helmet_helmet>, 12000);
Enchanter.registerEnchantment(<endreborn:armour_chestplate_obsidian>, 12000);
Enchanter.registerEnchantment(<endreborn:armour_leggings_obsidian>, 12000);
Enchanter.registerEnchantment(<endreborn:armour_boots_obsidian>, 12000);

Enchanter.registerEnchantment(<endreborn:tool_sword_endorium>, 12000);
Enchanter.registerEnchantment(<endreborn:tool_magnifier>, 12000);
Enchanter.registerEnchantment(<endreborn:ender_bow>, 12000);
Enchanter.registerEnchantment(<endreborn:entropy_wand>, 12000);

//Wither bone and Frosted Amedian
Enchanter.registerEnchantment(<netherex:wither_bone_helmet>, 7700);
Enchanter.registerEnchantment(<netherex:wither_bone_chestplate>, 7700);
Enchanter.registerEnchantment(<netherex:wither_bone_leggings>, 7700);
Enchanter.registerEnchantment(<netherex:wither_bone_boots>, 7700);

Enchanter.registerEnchantment(<netherex:frosted_amedian_pickaxe>, 9600);
Enchanter.registerEnchantment(<netherex:frosted_amedian_axe>, 9600);
Enchanter.registerEnchantment(<netherex:frosted_amedian_shovel>, 9600);
Enchanter.registerEnchantment(<netherex:frosted_amedian_hoe>, 9600);
Enchanter.registerEnchantment(<netherex:frosted_amedian_sword>, 9600);

//Ironroot
Enchanter.registerEnchantment(<twilightforest:ironwood_helmet>, 5300);
Enchanter.registerEnchantment(<twilightforest:ironwood_chestplate>, 5300);
Enchanter.registerEnchantment(<twilightforest:ironwood_leggings>, 5300);
Enchanter.registerEnchantment(<twilightforest:ironwood_boots>, 5300);

Enchanter.registerEnchantment(<twilightforest:ironwood_pickaxe>, 6000);
Enchanter.registerEnchantment(<twilightforest:ironwood_axe>, 6000);
Enchanter.registerEnchantment(<twilightforest:ironwood_shovel>, 6000);
Enchanter.registerEnchantment(<twilightforest:ironwood_hoe>, 6000);
Enchanter.registerEnchantment(<twilightforest:ironwood_sword>, 6000);

//Steeleaf
Enchanter.registerEnchantment(<twilightforest:steeleaf_helmet>, 6000);
Enchanter.registerEnchantment(<twilightforest:steeleaf_chestplate>, 6000);
Enchanter.registerEnchantment(<twilightforest:steeleaf_leggings>, 6000);
Enchanter.registerEnchantment(<twilightforest:steeleaf_boots>, 6000);

Enchanter.registerEnchantment(<twilightforest:steeleaf_pickaxe>, 7700);
Enchanter.registerEnchantment(<twilightforest:steeleaf_axe>, 7700);
Enchanter.registerEnchantment(<twilightforest:steeleaf_shovel>, 7700);
Enchanter.registerEnchantment(<twilightforest:steeleaf_hoe>, 7700);
Enchanter.registerEnchantment(<twilightforest:steeleaf_sword>, 7700);

//Fiery Iron
Enchanter.registerEnchantment(<twilightforest:fiery_helmet>, 7700);
Enchanter.registerEnchantment(<twilightforest:fiery_chestplate>, 7700);
Enchanter.registerEnchantment(<twilightforest:fiery_leggings>, 7700);
Enchanter.registerEnchantment(<twilightforest:fiery_boots>, 7700);

Enchanter.registerEnchantment(<twilightforest:fiery_pickaxe>, 9600);
Enchanter.registerEnchantment(<twilightforest:fiery_sword>, 9600);

//Epic Quality
Enchanter.registerEnchantment(<mod_lavacow:sludge_wand>, 12000);
Enchanter.registerEnchantment(<mod_lavacow:bonesword>, 12000);
Enchanter.registerEnchantment(<mod_lavacow:war>, 12000);
Enchanter.registerEnchantment(<iceandfire:myrmex_desert_staff>, 12000);
Enchanter.registerEnchantment(<iceandfire:myrmex_jungle_staff>, 12000);
Enchanter.registerEnchantment(<spartanweaponry:crossbow_wood>, 12000);
Enchanter.registerEnchantment(<rats:black_death_mask>, 12000);

//Legendary Quality
Enchanter.registerEnchantment(<betteranimalsplus:hirschgeistskullwearable>, 32200);
Enchanter.registerEnchantment(<aether_legacy:notch_hammer>, 32200);
Enchanter.registerEnchantment(<endreborn:ender_sword>, 32200);
Enchanter.registerEnchantment(<iceandfire:hippogryph_sword>, 32200);
Enchanter.registerEnchantment(<iceandfire:gorgon_head>, 32200);
Enchanter.registerEnchantment(<iceandfire:pixie_wand>, 32200);
Enchanter.registerEnchantment(<iceandfire:cyclops_eye>, 32200);
Enchanter.registerEnchantment(<iceandfire:siren_flute>, 32200);
Enchanter.registerEnchantment(<iceandfire:hippocampus_slapper>, 32200);
Enchanter.registerEnchantment(<iceandfire:deathworm_gauntlet_yellow>, 32200);
Enchanter.registerEnchantment(<iceandfire:deathworm_gauntlet_white>, 32200);
Enchanter.registerEnchantment(<iceandfire:deathworm_gauntlet_red>, 32200);
Enchanter.registerEnchantment(<iceandfire:cockatrice_scepter>, 32200);
Enchanter.registerEnchantment(<iceandfire:stymphalian_bird_dagger>, 32200);
Enchanter.registerEnchantment(<iceandfire:amphithere_macuahuitl>, 32200);
Enchanter.registerEnchantment(<iceandfire:tide_trident>, 32200);
Enchanter.registerEnchantment(<iceandfire:troll_weapon.axe>, 32200);
Enchanter.registerEnchantment(<iceandfire:troll_weapon.column>, 32200);
Enchanter.registerEnchantment(<iceandfire:troll_weapon.column_forest>, 32200);
Enchanter.registerEnchantment(<iceandfire:troll_weapon.column_frost>, 32200);
Enchanter.registerEnchantment(<iceandfire:troll_weapon.hammer>, 32200);
Enchanter.registerEnchantment(<iceandfire:troll_weapon.trunk>, 32200);
Enchanter.registerEnchantment(<iceandfire:troll_weapon.trunk_frost>, 32200);
Enchanter.registerEnchantment(<msmlegacy:aethers_guard>, 12000);
Enchanter.registerEnchantment(<rats:plague_scythe>, 32200);
Enchanter.registerEnchantment(<msmlegacy:wither_bane>, 32200);
Enchanter.registerEnchantment(<msmlegacy:crystaline_blade>, 32200);
Enchanter.registerEnchantment(<mod_lavacow:piranhalauncher>, 32200);

//Relics-Godly
Enchanter.registerEnchantment(<msmlegacy:relic_aqueous>, 28800);
Enchanter.registerEnchantment(<msmlegacy:relic_candy>, 28800);
Enchanter.registerEnchantment(<dungeontactics:steel_sword>, 28800);
Enchanter.registerEnchantment(<spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}), 240);
Enchanter.registerEnchantment(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 5 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}), 32200);
Enchanter.registerEnchantment(<msmlegacy:dawn_star>, 32200);
Enchanter.registerEnchantment(<dungeontactics:silver_sword>, 32200);
Enchanter.registerEnchantment(<msmlegacy:eye_end_blade>, 32200);
Enchanter.registerEnchantment(<msmlegacy:glacial_blade>, 32200);


//Special
Enchanter.registerEnchantment(<spartanshields:shield_basic_diamond>, 7700);
