import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTables;
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

// Slider chest
val sliderChest = LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_reward");
val sliderChestMain = sliderChest.getPool("main");
sliderChestMain.addItemEntry(<glaretorch:itemglaretorch>, 1, 0, [Functions.setCount(5, 18)], []);
sliderChestMain.addItemEntry(<glaretorch:itemglaretorch>, 2, 0, [Functions.setCount(1, 5)], []);
sliderChestMain.addItemEntry(<glaretorch:itemglaretorch>, 1, 40, [Functions.setCount(24, 48)], []);

sliderChestMain.addItemEntry(<contenttweaker:block_electrum>, 2, 0, [Functions.setCount(2, 3)], []);
sliderChestMain.addItemEntry(<scalinghealth:healingitem>, 1, 0, [Functions.setCount(2, 3)], []);
sliderChestMain.addItemEntry(<scalinghealth:healingitem:1>, 1, 8, [Functions.setCount(1, 3)], []);

