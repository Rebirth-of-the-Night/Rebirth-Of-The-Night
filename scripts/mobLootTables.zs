import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;

//vanilla
val irongolem = LootTables.getTable("minecraft:entities/iron_golem");
irongolem.clear(); 

//PrimitiveMobs ######################
val gob = LootTables.getTable("primitivemobs:entities/goblin");
val gobMain = gob.getPool("goblin_drops");
gobMain.removeEntry("minecraft:iron_ingot");
val gob1 = gob.addPool("gob1", 1, 1, 0, 0);
gob1.addItemEntryHelper(<minecraft:leather>, 1, 1, [Functions.setCount(0, 1), Functions.lootingEnchantBonus(0, 1, 64)], []);

// Treasure Slime
val lootSlime = LootTables.getTable("primitivemobs:entities/special/treasure_slime");
val lslimeMain = lootSlime.getPool("treasureslime_spawnitem");
lslimeMain.removeEntry("minecraft:diamond");
lslimeMain.removeEntry("minecraft:ender_eye");
lslimeMain.removeEntry("minecraft:blaze_powder");
lslimeMain.addItemEntryHelper(<betterwithmods:material:26>, 4, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<rats:cheese>, 6, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<dungeontactics:diamond_nugget>, 1, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<dungeontactics:silver_nugget>, 5, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<simpleores:copper_ingot>, 6, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<simpleores:tin_ingot>, 5, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<harvestcraft:dragonfruititem>, 6, 0, [Functions.setCount(1, 1)], []);
lslimeMain.addItemEntryHelper(<harvestcraft:limeitem>, 7, 0, [Functions.setCount(1, 1)], []);


//Filch Lizard Spawn Items
val lootFilch = LootTables.getTable("primitivemobs:entities/special/filch_lizard_spawn");
val filchMain = lootFilch.getPool("filchlizard_spawnitem");
filchMain.addItemEntryHelper(<simpleores:copper_ingot>, 7, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:agaveitem>, 7, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<simpleores:tin_ingot>, 6, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:agaveseeditem>, 6, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:bone>, 5, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<rats:raw_rat>, 4, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<iceandfire:myrmex_desert_resin>, 3, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:poisonous_potato>, 3, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<dungeontactics:silver_ingot>, 3, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:rabbit_foot>, 2, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:torch>, 2, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<totemexpansion:totem_base>, 2, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<rats:herb_bundle>, 2, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<betterwithmods:mystery_meat>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<minecraft:skull>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<harvestcraft:pizzasliceitem>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<iceandfire:myrmex_desert_egg>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<dungeontactics:bag_food>, 1, 0, [Functions.setCount(1, 1)], []);
filchMain.addItemEntryHelper(<bountifulbaubles:spectralsilt>, 1, 0, [Functions.setCount(1, 1)], []);






