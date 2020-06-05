import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;

//vanilla
val irongolem = LootTables.getTable("minecraft:entities/iron_golem");
irongolem.clear(); 

<entity:minecraft:blaze>.addDrop(<minecraft:blaze_rod>,1,3);
<entity:minecraft:horse>.addDrop(<animania:raw_horse>,1,3);

// double security for godswords... you know... I have trust issues after those rough few patches
mods.ltt.LootTable.removeGlobalItem("msmlegacy:dawn_star");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:vampiric_blade");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:gladiolus");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:draconic_blade");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:eye_end_blade");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:crystaline_blade");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:glacial_blade");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:aethers_guard");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:wither_bane");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:adminium_ark");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_aqueous");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_candy");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_infinity");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_keyblade");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_master");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_master");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_molten");
mods.ltt.LootTable.removeGlobalItem("msmlegacy:relic_pie");


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
mods.ltt.LootTable.removeGlobalItem("aether_legacy:life_shard");

// SpecialMobs

//PrimitiveMobs ######################
val gob = LootTables.getTable("primitivemobs:entities/goblin");
val gobMain = gob.getPool("goblin_drops");
gobMain.removeEntry("minecraft:iron_ingot");
val gob1 = gob.addPool("gob1", 1, 1, 1, 2);
gob1.addItemEntryHelper(<contenttweaker:tattered_hide>, 1, 1, [Functions.setCount(0, 1), Functions.lootingEnchantBonus(0, 1, 64)], []);

//BetterAnimals+
<entity:betteranimalsplus:zotzpyre>.addDrop(<contenttweaker:monster_hide>,1,2);

// Treasure Slime
val lootSlime = LootTables.getTable("primitivemobs:entities/special/treasure_slime");
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
val lootFilch = LootTables.getTable("primitivemobs:entities/special/filch_lizard_spawn");
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
filchMain.addItemEntryHelper(<bountifulbaubles:spectralsilt>, 1, 0, [Functions.setCount(1, 1)], []);

//Filch Lizard Steal Items
val stealFilch = LootTables.getTable("primitivemobs:entities/special/filch_lizard_steal");

val filch8 = stealFilch.addPool("filch_lizard_008", 1, 1, 0, 0);
filch8.addItemEntry(<iceandfire:silver_ingot>, 1);

val filch9 = stealFilch.addPool("filch_lizard_009", 1, 1, 0, 0);
filch9.addItemEntry(<iceandfire:silver_nugget>, 1);

val filch10= stealFilch.addPool("filch_lizard_010", 1, 1, 0, 0);
filch10.addItemEntry(<dungeontactics:diamond_nugget>, 1);

val filch11 = stealFilch.addPool("filch_lizard_011", 1, 1, 0, 0);
filch11.addItemEntry(<simpleores:copper_ingot>, 1);

val filch12 = stealFilch.addPool("filch_lizard_012", 1, 1, 0, 0);
filch12.addItemEntry(<simpleores:tin_ingot>, 1);

val filch13 = stealFilch.addPool("filch_lizard_013", 1, 1, 0, 0);
filch13.addItemEntry(<simpleores:mythril_ingot>, 1);

val filch14 = stealFilch.addPool("filch_lizard_014", 1, 1, 0, 0);
filch14.addItemEntry(<simpleores:adamantium_ingot>, 1);

val filch15 = stealFilch.addPool("filch_lizard_015", 1, 1, 0, 0);
filch15.addItemEntry(<simpleores:onyx_gem>, 1);

val filch16 = stealFilch.addPool("filch_lizard_016", 1, 1, 0, 0);
filch16.addItemEntry(<bountifulbaubles:spectralsilt>, 1);

val filch17 = stealFilch.addPool("filch_lizard_017", 1, 1, 0, 0);
filch17.addItemEntry(<iceandfire:myrmex_desert_egg>, 1);

val filch18 = stealFilch.addPool("filch_lizard_018", 1, 1, 0, 0);
filch18.addItemEntry(<mowziesmobs:ice_crystal>, 1);

val filch19 = stealFilch.addPool("filch_lizard_019", 1, 1, 0, 0);
filch19.addItemEntry(<minecraft:ender_eye>, 1);

val filch20 = stealFilch.addPool("filch_lizard_020", 1, 1, 0, 0);
filch20.addItemEntry(<iceandfire:shiny_scales>, 1);

val filch21 = stealFilch.addPool("filch_lizard_021", 1, 1, 0, 0);
filch21.addItemEntry(<bountifulbaubles:magicmirror>, 1);

val filch22 = stealFilch.addPool("filch_lizard_022", 1, 1, 0, 0);
filch22.addItemEntry(<harvestcraft:cactusfruitjuiceitem>, 1);

val filch23 = stealFilch.addPool("filch_lizard_023", 1, 1, 0, 0);
filch23.addItemEntry(<harvestcraft:pizzasliceitem>, 1);

val filch24 = stealFilch.addPool("filch_lizard_024", 1, 1, 0, 0);
filch24.addItemEntry(<harvestcraft:pizzaitem>, 1);

val filch26 = stealFilch.addPool("filch_lizard_026", 1, 1, 0, 0);
filch26.addItemEntry(<dungeontactics:magic_powder>, 1);

val filch27 = stealFilch.addPool("filch_lizard_027", 1, 1, 0, 0);
filch27.addItemEntry(<aether_legacy:zanite_gemstone>, 1);

val filch28 = stealFilch.addPool("filch_lizard_028", 1, 1, 0, 0);
filch28.addItemEntry(<aether_legacy:ambrosium_shard>, 1);

val filch29 = stealFilch.addPool("filch_lizard_029", 1, 1, 0, 0);
filch29.addItemEntry(<aether_legacy:golden_amber>, 1);

val filch30 = stealFilch.addPool("filch_lizard_030", 1, 1, 0, 0);
filch30.addItemEntry(<minecraft:golden_apple>, 1);

val filch31 = stealFilch.addPool("filch_lizard_031", 1, 1, 0, 0);
filch31.addItemEntry(<minecraft:golden_carrot>, 1);

val filch33 = stealFilch.addPool("filch_lizard_033", 1, 1, 0, 0);
filch33.addItemEntry(<aether_legacy:victory_medal>, 1);

val filch34 = stealFilch.addPool("filch_lizard_034", 1, 1, 0, 0);
filch34.addItemEntry(<bountifulbaubles:crowngold>, 1);

val filch35 = stealFilch.addPool("filch_lizard_035", 1, 1, 0, 0);
filch35.addItemEntry(<quark:gold_button>, 1);

val filch36 = stealFilch.addPool("filch_lizard_036", 1, 1, 0, 0);
filch36.addItemEntry(<minecraft:blaze_rod>, 1);

val filch37 = stealFilch.addPool("filch_lizard_037", 1, 1, 0, 0);
filch37.addItemEntry(<minecraft:gold_nugget>, 1);

val filch38 = stealFilch.addPool("filch_lizard_038", 1, 1, 0, 0);
filch38.addItemEntry(<biomesoplenty:gem>, 1);

val filch39 = stealFilch.addPool("filch_lizard_039", 1, 1, 0, 0);
filch39.addItemEntry(<minecraft:golden_apple:1>, 1);

val filch40 = stealFilch.addPool("filch_lizard_040", 1, 1, 0, 0);
filch40.addItemEntry(<biomesoplenty:gem:1>, 1);

val filch41 = stealFilch.addPool("filch_lizard_041", 1, 1, 0, 0);
filch41.addItemEntry(<biomesoplenty:gem:2>, 1);

val filch42 = stealFilch.addPool("filch_lizard_042", 1, 1, 0, 0);
filch42.addItemEntry(<biomesoplenty:gem:6>, 1);

//nuggs
val filch44 = stealFilch.addPool("filch_lizard_044", 1, 1, 0, 0);
filch44.addItemEntry(<contenttweaker:material_part:16>, 1);

val filch45 = stealFilch.addPool("filch_lizard_045", 1, 1, 0, 0);
filch45.addItemEntry(<contenttweaker:material_part:10>, 1);

val filch46 = stealFilch.addPool("filch_lizard_046", 1, 1, 0, 0);
filch46.addItemEntry(<contenttweaker:material_part:8>, 1);

//lizard want shiny from arcane archives
val filch47 = stealFilch.addPool("filch_lizard_047", 1, 1, 0, 0);
filch47.addItemEntry(<arcanearchives:raw_quartz>, 1);

val filch48 = stealFilch.addPool("filch_lizard_048", 1, 1, 0, 0);
filch48.addItemEntry(<arcanearchives:shaped_quartz>, 1);

val filch49 = stealFilch.addPool("filch_lizard_049", 1, 1, 0, 0);
filch49.addItemEntry(<arcanearchives:containment_field>, 1);

val filch50 = stealFilch.addPool("filch_lizard_050", 1, 1, 0, 0);
filch50.addItemEntry(<arcanearchives:matrix_brace>, 1);

val filch51 = stealFilch.addPool("filch_lizard_051", 1, 1, 0, 0);
filch51.addItemEntry(<arcanearchives:material_interface>, 1);

val filch52 = stealFilch.addPool("filch_lizard_052", 1, 1, 0, 0);
filch52.addItemEntry(<arcanearchives:radiant_dust>, 1);

val filch53 = stealFilch.addPool("filch_lizard_053", 1, 1, 0, 0);
filch53.addItemEntry(<arcanearchives:scintillating_inlay>, 1);

val filch54 = stealFilch.addPool("filch_lizard_054", 1, 1, 0, 0);
filch54.addItemEntry(<arcanearchives:radiant_key>, 1);

val filch55 = stealFilch.addPool("filch_lizard_055", 1, 1, 0, 0);
filch55.addItemEntry(<arcanearchives:quartz_sliver>, 1);

val filch56 = stealFilch.addPool("filch_lizard_056", 1, 1, 0, 0);
filch56.addItemEntry(<arcanearchives:monitoring_crystal>, 1);

val filch57 = stealFilch.addPool("filch_lizard_057", 1, 1, 0, 0);
filch57.addItemEntry(<bountifulbaubles:amuletcross>, 1);

val filch58 = stealFilch.addPool("filch_lizard_058", 1, 1, 0, 0);
filch58.addItemEntry(<mod_lavacow:canebeef>, 1);

val filch59 = stealFilch.addPool("filch_lizard_059", 1, 1, 0, 0);
filch59.addItemEntry(<minecraft:experience_bottle>, 1);


//New Haunted Tools
//wood
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:club_wood>, 10, 0, "spartanweaponry:club_wood");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:spear_wood>, 10, 0, "spartanweaponry:spear_wood");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:pike_wood>, 10, 0, "spartanweaponry:pike_wood");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_axe_wood>, 10, 0, "spartanweaponry:throwing_axe_wood");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanshields:shield_basic_wood>, 10, 0, "spartanshields:shield_basic_wood");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:javelin_wood>, 9, 0, "spartanweaponry:javelin_wood");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:staff>, 10, 0, "spartanweaponry:staff");

//stone
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:dagger_stone>, 8, 0, "spartanweaponry:dagger_stone");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:club_studded>, 8, 0, "spartanweaponry:club_studded");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:caestus>, 8, 0, "spartanweaponry:caestus");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:spear_stone>, 8, 0, "spartanweaponry:spear_stone");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_knife_stone>, 8, 0, "spartanweaponry:throwing_knife_stone");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_axe_stone>, 8, 0, "spartanweaponry:throwing_axe_stone");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:javelin_stone>, 8, 0, "spartanweaponry:javelin_stone");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:mace_stone>, 8, 0, "spartanweaponry:mace_stone");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:staff_stone>, 8, 0, "spartanweaponry:staff_stone");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanshields:shield_basic_stone>, 7, 0, "spartanshields:shield_basic_stone");

//copper
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<simpleores:copper_axe>, 6, 0, "simpleores:copper_axe");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:dagger_copper>, 6, 0, "spartanweaponry:dagger_copper");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:hammer_copper>, 6, 0, "spartanweaponry:hammer_copper");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:spear_copper>, 6, 0, "spartanweaponry:spear_copper");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:pike_copper>, 6, 0, "spartanweaponry:pike_copper");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_knife_copper>, 6, 0, "spartanweaponry:throwing_knife_copper");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_axe_copper>, 6, 0, "spartanweaponry:throwing_axe_copper");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:javelin_copper>, 6, 0, "spartanweaponry:javelin_copper");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:mace_copper>, 6, 0, "spartanweaponry:mace_copper");

//iron
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:dagger_iron>, 5, 0, "spartanweaponry:dagger_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:longsword_iron>, 5, 0, "spartanweaponry:longsword_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:katana_iron>, 5, 0, "spartanweaponry:katana_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:caestus_studded>, 5, 0, "spartanweaponry:caestus_studded");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:saber_iron>, 5, 0, "spartanweaponry:saber_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:rapier_iron>, 5, 0, "spartanweaponry:rapier_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:greatsword_iron>, 4, 0, "spartanweaponry:greatsword_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:hammer_iron>, 5, 0, "spartanweaponry:hammer_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:warhammer_iron>, 5, 0, "spartanweaponry:warhammer_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:spear_iron>, 5, 0, "spartanweaponry:spear_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:halberd_iron>, 5, 0, "spartanweaponry:halberd_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:pike_iron>, 5, 0, "spartanweaponry:pike_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:lance_iron>, 5, 0, "spartanweaponry:lance_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_knife_iron>, 5, 0, "spartanweaponry:throwing_knife_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_axe_iron>, 5, 0, "spartanweaponry:throwing_axe_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:javelin_iron>, 5, 0, "spartanweaponry:javelin_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:battleaxe_iron>, 5, 0, "spartanweaponry:battleaxe_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:mace_iron>, 5, 0, "spartanweaponry:mace_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:glaive_iron>, 5, 0, "spartanweaponry:glaive_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:staff_iron>, 5, 0, "spartanweaponry:staff_iron");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanshields:shield_basic_iron>, 4, 0, "spartanshields:shield_basic_iron");

//tin
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<simpleores:tin_axe>, 4, 0, "simpleores:tin_axe");

//gold
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:dagger_gold>, 3, 0, "spartanweaponry:dagger_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:longsword_gold>, 3, 0, "spartanweaponry:longsword_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:katana_gold>, 3, 0, "spartanweaponry:katana_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:saber_gold>, 3, 0, "spartanweaponry:saber_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:rapier_gold>, 3, 0, "spartanweaponry:rapier_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:greatsword_gold>, 2, 0, "spartanweaponry:greatsword_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:hammer_gold>, 3, 0, "spartanweaponry:hammer_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:warhammer_gold>, 3, 0, "spartanweaponry:warhammer_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:spear_gold>, 3, 0, "spartanweaponry:spear_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:halberd_gold>, 3, 0, "spartanweaponry:halberd_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:pike_gold>, 3, 0, "spartanweaponry:pike_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:lance_gold>, 3, 0, "spartanweaponry:lance_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_knife_gold>, 3, 0, "spartanweaponry:throwing_knife_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_axe_gold>, 3, 0, "spartanweaponry:throwing_axe_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:javelin_gold>, 3, 0, "spartanweaponry:javelin_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:battleaxe_gold>, 3, 0, "spartanweaponry:battleaxe_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:mace_gold>, 3, 0, "spartanweaponry:mace_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:glaive_gold>, 3, 0, "spartanweaponry:glaive_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:staff_gold>, 3, 0, "spartanweaponry:staff_gold");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanshields:shield_basic_gold>, 2, 0, "spartanshields:shield_basic_gold");

//silver
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<iceandfire:silver_sword>, 2, 0, "iceandfire:silver_sword");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<iceandfire:silver_pickaxe>, 2, 0, "iceandfire:silver_pickaxe");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<iceandfire:silver_shovel>, 2, 0, "iceandfire:silver_shovel");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<iceandfire:silver_axe>, 2, 0, "iceandfire:silver_axe");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<iceandfire:silver_hoe>, 2, 0, "iceandfire:silver_hoe");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:dagger_silver>, 2, 0, "spartanweaponry:dagger_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:longsword_silver>, 2, 0, "spartanweaponry:longsword_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:katana_silver>, 2, 0, "spartanweaponry:katana_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:saber_silver>, 2, 0, "spartanweaponry:saber_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:rapier_silver>, 2, 0, "spartanweaponry:rapier_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:greatsword_silver>, 1, 0, "spartanweaponry:greatsword_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:hammer_silver>, 2, 0, "spartanweaponry:hammer_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:warhammer_silver>, 2, 0, "spartanweaponry:warhammer_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:spear_silver>, 2, 0, "spartanweaponry:spear_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:halberd_silver>, 2, 0, "spartanweaponry:halberd_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:pike_silver>, 2, 0, "spartanweaponry:pike_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:lance_silver>, 2, 0, "spartanweaponry:lance_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_knife_silver>, 2, 0, "spartanweaponry:throwing_knife_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_axe_silver>, 2, 0, "spartanweaponry:throwing_axe_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:javelin_silver>, 2, 0, "spartanweaponry:javelin_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:battleaxe_silver>, 2, 0, "spartanweaponry:battleaxe_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:mace_silver>, 2, 0, "spartanweaponry:mace_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:glaive_silver>, 2, 0, "spartanweaponry:glaive_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:staff_silver>, 2, 0, "spartanweaponry:staff_silver");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanshields:shield_basic_silver>, 1, 0, "spartanshields:shield_basic_silver");

//diamond
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:dagger_diamond>, 1, 0, "spartanweaponry:dagger_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:longsword_diamond>, 1, 0, "spartanweaponry:longsword_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:katana_diamond>, 1, 0, "spartanweaponry:katana_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:saber_diamond>, 1, 0, "spartanweaponry:saber_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:rapier_diamond>, 1, 0, "spartanweaponry:rapier_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:hammer_diamond>, 1, 0, "spartanweaponry:hammer_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:warhammer_diamond>, 1, 0, "spartanweaponry:warhammer_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:spear_diamond>, 1, 0, "spartanweaponry:spear_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:halberd_diamond>, 1, 0, "spartanweaponry:halberd_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:pike_diamond>, 1, 0, "spartanweaponry:pike_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:lance_diamond>, 1, 0, "spartanweaponry:lance_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_knife_diamond>, 1, 0, "spartanweaponry:throwing_knife_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:throwing_axe_diamond>, 1, 0, "spartanweaponry:throwing_axe_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:javelin_diamond>, 1, 0, "spartanweaponry:javelin_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:battleaxe_diamond>, 1, 0, "spartanweaponry:battleaxe_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:mace_diamond>, 1, 0, "spartanweaponry:mace_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:glaive_diamond>, 1, 0, "spartanweaponry:glaive_diamond");
LootTables.getTable("primitivemobs:entities/special/haunted_tool").getPool("hauntedtool_spawnitem").addItemEntry(<spartanweaponry:staff_diamond>, 1, 0, "spartanweaponry:staff_diamond");






