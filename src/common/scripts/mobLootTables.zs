import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IItemStack;
import mods.ltt.LootTable;
import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;

//vanilla
val irongolem = LootTweaker.getTable("minecraft:entities/iron_golem");
irongolem.clear(); 

LootTable.removeGlobalItem("minecraft:spawn_egg");
LootTable.removeGlobalItem("minecraft:shield");
LootTable.removeGlobalItem("minecraft:glowstone_dust");

<entity:minecraft:blaze>.addDrop(<minecraft:blaze_rod>,1,3);
<entity:minecraft:horse>.addDrop(<animania:raw_horse>,1,3);

// double security for godswords... you know... I have trust issues after those rough few patches
LootTable.removeGlobalItem("msmlegacy:dawn_star");
LootTable.removeGlobalItem("msmlegacy:vampiric_blade");
LootTable.removeGlobalItem("msmlegacy:gladiolus");
LootTable.removeGlobalItem("msmlegacy:draconic_blade");
LootTable.removeGlobalItem("msmlegacy:eye_end_blade");
LootTable.removeGlobalItem("msmlegacy:crystaline_blade");
LootTable.removeGlobalItem("msmlegacy:glacial_blade");
LootTable.removeGlobalItem("msmlegacy:aethers_guard");
LootTable.removeGlobalItem("msmlegacy:wither_bane");
LootTable.removeGlobalItem("msmlegacy:adminium_ark");
LootTable.removeGlobalItem("msmlegacy:relic_aqueous");
LootTable.removeGlobalItem("msmlegacy:relic_candy");
LootTable.removeGlobalItem("msmlegacy:relic_infinity");
LootTable.removeGlobalItem("msmlegacy:relic_keyblade");
LootTable.removeGlobalItem("msmlegacy:relic_master");
LootTable.removeGlobalItem("msmlegacy:relic_master");
LootTable.removeGlobalItem("msmlegacy:relic_molten");
LootTable.removeGlobalItem("msmlegacy:relic_pie");


<entity:iceandfire:if_troll>.addPlayerOnlyDrop(<behgameon:accessory_1> % 35, 1, 1);

//QoL drops
//ghast tears
<entity:minecraft:ghast>.addPlayerOnlyDrop(<minecraft:ghast_tear> % 80, 1, 2);

//skulls used for crafting
<entity:iceandfire:if_troll>.addPlayerOnlyDrop(<iceandfire:troll_skull>, 1, 1);
<entity:iceandfire:cyclops>.addPlayerOnlyDrop(<iceandfire:cyclops_skull>, 1, 1);

//Mowzies
//skydrake
<entity:mowziesmobs:naga>.addPlayerOnlyDrop(<mowziesmobs:naga_fang>, 1, 1);

<entity:mowziesmobs:grottol>.addDrop(<arcanearchives:radiant_dust>,2,5);
<entity:mowziesmobs:grottol>.addDrop(<arcanearchives:raw_quartz>,2,3);


// aether
LootTable.removeGlobalItem("aether_legacy:life_shard");

// defiled lands
LootTable.removeGlobalItem("defiledlands:umbrium_ingot");

// SpecialMobs
val lemonSlime = LootTweaker.getTable("specialmobs:entities/slime/lemon");
lemonSlime.clear();
val strawberrySlime = LootTweaker.getTable("specialmobs:entities/slime/strawberry");
strawberrySlime.clear();
val blueberrySlime = LootTweaker.getTable("specialmobs:entities/slime/blueberry");
blueberrySlime.clear();
val blackberrySlime = LootTweaker.getTable("specialmobs:entities/slime/blackberry");
blackberrySlime.clear();
val watermelonSlime = LootTweaker.getTable("specialmobs:entities/slime/watermelon");
watermelonSlime.clear();
val grapeSlime = LootTweaker.getTable("specialmobs:entities/slime/grape");
grapeSlime.clear();


//BetterAnimals+
<entity:betteranimalsplus:zotzpyre>.addDrop(<contenttweaker:monster_hide>,1,2);

//DungeonTactics
LootTable.removeGlobalItem("dungeontactics:phylactery");


//Fishs Undead Rising
LootTable.removeGlobalItem("mod_lavacow:hyphae");

//PrimitiveMobs ######################
<entity:primitivemobs:harpy>.removeDrop(<minecraft:gold_nugget>);
<entity:primitivemobs:grovesprite>.removeDrop(<primitivemobs:wonder_sap>);
//<entity:primitivemobs:grovesprite>.addPlayerOnlyDrop(<primitivemobs:wonder_sap>, 0, 1);

val gob = LootTweaker.getTable("primitivemobs:entities/goblin");
val gobMain = gob.getPool("goblin_drops");
gobMain.removeEntry("minecraft:iron_ingot");
val gob1 = gob.addPool("gob1", 1, 1, 1, 2);
gob1.addItemEntryHelper(<contenttweaker:tattered_hide>, 1, 1, [Functions.setCount(0, 1), Functions.lootingEnchantBonus(0, 1, 64)], []);

// Treasure Slime
val lootSlime = LootTweaker.getTable("primitivemobs:entities/special/treasure_slime");
val lslimeMain = lootSlime.getPool("treasureslime_spawnitem");
lslimeMain.removeEntry("minecraft:diamond");
lslimeMain.removeEntry("minecraft:ender_eye");
lslimeMain.removeEntry("minecraft:blaze_powder");
lslimeMain.addItemEntryHelper(<betterwithmods:material:26>, 4, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<dungeontactics:diamond_nugget>, 1, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<iceandfire:silver_nugget>, 5, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<simpleores:copper_ingot>, 6, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<simpleores:tin_ingot>, 5, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<harvestcraft:dragonfruititem>, 6, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<harvestcraft:limeitem>, 7, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<dungeontactics:magic_powder>, 1, 0, [Functions.setCount(1, 1)], []);


//Filch Lizard Spawn Items
val lootFilch = LootTweaker.getTable("primitivemobs:entities/special/filch_lizard_spawn");
val filchMain = lootFilch.getPool("filchlizard_spawnitem");
filchMain.addItemEntryHelper(<simpleores:copper_ingot>, 7, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:cactusfruititem>, 7, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:agaveitem>, 7, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<simpleores:tin_ingot>, 6, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:agaveseeditem>, 6, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:cactusfruitseeditem>, 5, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:bone>, 5, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<iceandfire:myrmex_desert_resin>, 3, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:poisonous_potato>, 3, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<iceandfire:silver_ingot>, 3, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:rabbit_foot>, 2, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:torch>, 2, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<totemexpansion:totem_base>, 2, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:skull>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:pizzasliceitem>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<iceandfire:myrmex_desert_egg>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<dungeontactics:bag_food>, 1, 0, [Functions.setCount(1, 1)], []);

//Filch Lizard Steal Items
val stealFilch = LootTweaker.getTable("primitivemobs:entities/special/filch_lizard_steal");

val filchStealItems as IItemStack[] = [
    <iceandfire:silver_ingot>,
    <iceandfire:silver_nugget>,
    <dungeontactics:diamond_nugget>,
    <simpleores:copper_ingot>,
    <simpleores:tin_ingot>,
    <simpleores:mythril_ingot>,
    <simpleores:adamantium_ingot>,
    <simpleores:onyx_gem>,
    <iceandfire:myrmex_desert_egg>,
    <mowziesmobs:ice_crystal>,
    <minecraft:ender_eye>,
    <iceandfire:shiny_scales>,
    <bountifulbaubles:magicmirror>,
    <harvestcraft:cactusfruitjuiceitem>,
    <harvestcraft:pizzasliceitem>,
    <harvestcraft:pizzaitem>,
    <dungeontactics:magic_powder>,
    <aether_legacy:zanite_gemstone>,
    <aether_legacy:ambrosium_shard>,
    <aether_legacy:golden_amber>,
    <minecraft:golden_apple>,
    <minecraft:golden_carrot>,
    <aether_legacy:victory_medal>,
    <toroquest:royal_helmet>,
    <quark:gold_button>,
    <minecraft:blaze_rod>,
    <minecraft:gold_nugget>,
    <rotn_blocks:exorite_crystal>,
    <minecraft:golden_apple:1>,
    <biomesoplenty:gem:1>,
    <biomesoplenty:gem:2>,
    <biomesoplenty:gem:6>,
    //nuggs
    <ore:nuggetElectrum>.firstItem,
    <ore:nuggetViridium>.firstItem,
    <ore:nuggetMythril>.firstItem,
    //lizard want shiny from arcane archives
    <arcanearchives:raw_quartz>,
    <arcanearchives:shaped_quartz>,
    <arcanearchives:containment_field>,
    <arcanearchives:matrix_brace>,
    <arcanearchives:material_interface>,
    <arcanearchives:radiant_dust>,
    <arcanearchives:scintillating_inlay>,
    <arcanearchives:radiant_key>,
    <arcanearchives:quartz_sliver>,
    <arcanearchives:monitoring_crystal>,
    <bountifulbaubles:amuletcross>,
    <mod_lavacow:canebeef>,
    <minecraft:experience_bottle>
] as IItemStack[];

for i, item in filchStealItems {
    LootTweaker.getTable("primitivemobs:entities/special/filch_lizard_steal")
        .addPool("filch_lizard_"~(i + 8), 1, 1, 0, 0)
        .addItemEntry(item, 1);
}

//New Haunted Tools
var hauntedTools as int[string] = {
    //wood
    "spartanweaponry:club_wood" : 10,
    "spartanweaponry:spear_wood" : 10,
    "spartanweaponry:pike_wood" : 10,
//  "spartanweaponry:throwing_axe_wood" : 10,
    "spartanshields:shield_basic_wood" : 10,
    "spartanweaponry:javelin_wood" : 9,
    "spartanweaponry:staff" : 10,

    //stone
    "spartanweaponry:dagger_stone" : 8,
    "spartanweaponry:club_studded" : 8,
    "spartanweaponry:caestus" : 8,
    "spartanweaponry:spear_stone" : 8,
//  "spartanweaponry:throwing_knife_stone" : 8,
//  "spartanweaponry:throwing_axe_stone" : 8,
    "spartanweaponry:javelin_stone" : 8,
    "spartanweaponry:mace_stone" : 8,
    "spartanweaponry:staff_stone" : 8,
    "spartanshields:shield_basic_stone" : 7,

    // copper
    "simpleores:copper_axe" : 6,
    "spartanweaponry:dagger_copper" : 6,
    "spartanweaponry:hammer_copper" : 6,
    "spartanweaponry:spear_copper" : 6,
    "spartanweaponry:pike_copper" : 6,
//  "spartanweaponry:throwing_knife_copper" : 6,
//  "spartanweaponry:throwing_axe_copper" : 6,
    "spartanweaponry:javelin_copper" : 6,
    "spartanweaponry:mace_copper" : 6,

    //iron
    "spartanweaponry:dagger_iron" : 5,
    "spartanweaponry:longsword_iron" : 5,
    "spartanweaponry:katana_iron" : 5,
    "spartanweaponry:caestus_studded" : 5,
    "spartanweaponry:saber_iron" : 4,
    "spartanweaponry:rapier_iron" : 4,
    "spartanweaponry:greatsword_iron" : 4,
    "spartanweaponry:hammer_iron" : 5,
    "spartanweaponry:warhammer_iron" : 5,
    "spartanweaponry:spear_iron" : 5,
    "spartanweaponry:halberd_iron" : 5,
    "spartanweaponry:pike_iron" : 5,
    "spartanweaponry:lance_iron" : 5,
//  "spartanweaponry:throwing_knife_iron" : 5,
//  "spartanweaponry:throwing_axe_iron" : 5,
    "spartanweaponry:javelin_iron" : 5,
    "spartanweaponry:battleaxe_iron" : 5,
    "spartanweaponry:mace_iron" : 5,
    "spartanweaponry:glaive_iron" : 5,
    "spartanweaponry:staff_iron" : 5,
    "spartanshields:shield_basic_iron" : 4,

    //tin
    "simpleores:tin_axe" : 4,

    //gold
    "spartanweaponry:dagger_gold" : 3,
    "spartanweaponry:longsword_gold" : 3,
    "spartanweaponry:katana_gold" : 3,
    "spartanweaponry:saber_gold" : 2,
    "spartanweaponry:rapier_gold" : 2,
    "spartanweaponry:greatsword_gold" : 2,
    "spartanweaponry:hammer_gold" : 3,
    "spartanweaponry:warhammer_gold" : 3,
    "spartanweaponry:spear_gold" : 3,
    "spartanweaponry:halberd_gold" : 3,
    "spartanweaponry:pike_gold" : 3,
    "spartanweaponry:lance_gold" : 3,
//  "spartanweaponry:throwing_knife_gold" : 3,
//  "spartanweaponry:throwing_axe_gold" : 3,
    "spartanweaponry:javelin_gold" : 3,
    "spartanweaponry:battleaxe_gold" : 3,
    "spartanweaponry:mace_gold" : 3,
    "spartanweaponry:glaive_gold" : 3,
    "spartanweaponry:staff_gold" : 3,
    "spartanshields:shield_basic_gold" : 2,

    //silver
    "iceandfire:silver_sword" : 2,
    "iceandfire:silver_pickaxe" : 2,
    "iceandfire:silver_shovel" : 2,
    "iceandfire:silver_axe" : 2,
    "iceandfire:silver_hoe" : 2,
    "spartanweaponry:dagger_silver" : 2,
    "spartanweaponry:longsword_silver" : 2,
    "spartanweaponry:katana_silver" : 2,
    "spartanweaponry:saber_silver" : 1,
    "spartanweaponry:rapier_silver" : 1,
    "spartanweaponry:greatsword_silver" : 1,
    "spartanweaponry:hammer_silver" : 2,
    "spartanweaponry:warhammer_silver" : 2,
    "spartanweaponry:spear_silver" : 2,
    "spartanweaponry:halberd_silver" : 2,
    "spartanweaponry:pike_silver" : 2,
    "spartanweaponry:lance_silver" : 2,
//  "spartanweaponry:throwing_knife_silver" : 2,
//  "spartanweaponry:throwing_axe_silver" : 2,
    "spartanweaponry:javelin_silver" : 2,
    "spartanweaponry:battleaxe_silver" : 2,
    "spartanweaponry:mace_silver" : 2,
    "spartanweaponry:glaive_silver" : 2,
    "spartanweaponry:staff_silver" : 2,
    "spartanshields:shield_basic_silver" : 1
} as int[string];

for itemString, weight in hauntedTools {
    LootTweaker.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(itemUtils.getItem(itemString), weight as int, itemString);
}

var hauntedToolsRemove as string[] = [
    "minecraft:diamond_sword",
    "minecraft:diamond_pickaxe",
    "minecraft:diamond_axe",
    "minecraft:diamond_hoe"
] as string[];

for i in hauntedToolsRemove {
    LootTweaker.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").removeEntry(i);
}


//spider silk
val lootSpider = LootTweaker.getTable("minecraft:entities/spider");
val lspiderMain = lootSpider.getPool("main");
lspiderMain.removeEntry("minecraft:string");
lspiderMain.addItemEntryHelper(<contenttweaker:spider_silk>, 100, 0, [Functions.setCount(0, 2)], []);
lspiderMain.addItemEntryHelper(<contenttweaker:spider_silk>, 50, 0, [Functions.setCount(0, 5)], []);
lspiderMain.addItemEntryHelper(<contenttweaker:spider_silk>, 1, 1000, [Functions.setCount(2, 10)], []);

val lootCaveSpider = LootTweaker.getTable("minecraft:entities/cave_spider");
val lcavespiderMain = lootCaveSpider.getPool("main");
lcavespiderMain.removeEntry("minecraft:string");
lcavespiderMain.addItemEntryHelper(<contenttweaker:spider_silk>, 100, 0, [Functions.setCount(0, 2)], []);
lcavespiderMain.addItemEntryHelper(<contenttweaker:spider_silk>, 50, 0, [Functions.setCount(0, 5)], []);
lcavespiderMain.addItemEntryHelper(<contenttweaker:spider_silk>, 1, 1000, [Functions.setCount(2, 10)], []);

//Sheep Intestines
val sheepPrimeTable = LootTweaker.getTable("animania:sheep_prime");
val sheepPrimeMeat = sheepPrimeTable.getPool("meat");
sheepPrimeMeat.addItemEntryHelper(<contenttweaker:sheep_intestines>, 1, 0, [Functions.setCount(1, 1)], []);

val sheepTable = LootTweaker.getTable("animania:sheep_regular");
val sheepMeat = sheepTable.getPool("meat");
sheepMeat.addItemEntryHelper(<contenttweaker:sheep_intestines>, 1, 0, [Functions.setCount(1, 1)], []);
