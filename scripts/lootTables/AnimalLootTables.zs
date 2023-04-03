import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import mods.ltt.LootTable;
import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;

<entity:minecraft:horse>.addDrop(<animania:raw_horse>,1,2,0.7);

// BetterAnimals+
<entity:betteranimalsplus:zotzpyre>.addDrop(<contenttweaker:monster_hide>,1,2);

// new loot tables must be assigned to entities via spawn.json, within Incontrol's config folder 

// Badger Loot
val badgerTable = LootTweaker.newTable("rotn:bap_badger");
val badgerPool1 = badgerTable.addPool("pool1",1,1,0,0);
badgerPool1.addEmptyEntry(250, 0, "no_drops");
badgerPool1.addItemEntry(<primitivemobs:wonder_sap>, 85, 0, [Functions.setCount(1, 2)], []);
badgerPool1.addItemEntry(<rats:little_black_worm>, 80, 0, [Functions.setCount(1, 4)], []);
badgerPool1.addItemEntry(<contenttweaker:steel_artifact>, 35, 0, [Functions.setCount(1, 1)], []);

badgerPool1.addItemEntry(<primitivemobs:wonder_sap>, 1, 1000, [Functions.setCount(2, 3)], []); //luck
badgerPool1.addItemEntry(<rats:little_black_worm>, 1, 1000, [Functions.setCount(2, 4)], []); //luck
badgerPool1.addItemEntry(<contenttweaker:steel_artifact>, 2, 1000, [Functions.setCount(1, 2)], []); //luck

badgerPool1.addItemEntry(<primitivemobs:wonder_sap>, 1, 0, [Functions.setCount(2, 5)], [Conditions.randomChanceWithLooting(0.925, 60.0)]); //looting


// Animania
// Cows
val mushroomTable = LootTweaker.getTable("animania:cow_mooshroom");
val mushroomBeef = mushroomTable.getPool("beef");
mushroomBeef.setRolls(2, 2);

val cowRegularTable = LootTweaker.getTable("animania:cow_regular");
val cowRegularBeef = cowRegularTable.getPool("beef");
cowRegularBeef.setRolls(2, 2);

val cowPrimeTable = LootTweaker.getTable("animania:cow_prime");
val cowPrimeBeef = cowPrimeTable.getPool("beef");
cowPrimeBeef.setRolls(2, 2);

// Goats
val goatRegularTable = LootTweaker.getTable("animania:goat_regular");
val goatRegularBeef = goatRegularTable.getPool("meat");
goatRegularBeef.setRolls(2, 2);

val goatPrimeTable = LootTweaker.getTable("animania:goat_prime");
val goatPrimeBeef = goatPrimeTable.getPool("meat");
goatPrimeBeef.setRolls(2, 2);

// Pigs
val pigRegularTable = LootTweaker.getTable("animania:pig_regular");
val pigRegularBeef = pigRegularTable.getPool("meat");
pigRegularBeef.setRolls(2, 2);

val pigPrimeTable = LootTweaker.getTable("animania:pig_prime");
val pigPrimeBeef = pigPrimeTable.getPool("meat");
pigPrimeBeef.setRolls(2, 2);

// Sheeps
val sheepRegularTable = LootTweaker.getTable("animania:sheep_regular");
val sheepRegularBeef = sheepRegularTable.getPool("meat");
val sheepRegularProduce = sheepRegularTable.addPool("produce", 1, 1, 1, 1);
sheepRegularBeef.setRolls(2, 2);
sheepRegularProduce.addItemEntry(<contenttweaker:sheep_intestines>, 1, 0, [Functions.setCount(1, 1)], []);

val sheepPrimeTable = LootTweaker.getTable("animania:sheep_prime");
val sheepPrimeBeef = sheepPrimeTable.getPool("meat");
val sheepPrimeProduce = sheepPrimeTable.addPool("produce", 1, 1, 1, 1);
sheepPrimeBeef.setRolls(2, 2);
sheepPrimeProduce.addItemEntry(<contenttweaker:sheep_intestines>, 1, 0, [Functions.setCount(1, 1)], []);

