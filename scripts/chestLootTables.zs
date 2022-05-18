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

// Sun spirit chest
val sunChest = LootTweaker.getTable("aether_legacy:chests/gold_dungeon_reward");
val sunChestMain = sunChest.getPool("main");
sunChestMain.addItemEntry(<arcaneworld:molten_core>, 10);

// Potion fix
val potionChest = LootTweaker.getTable("artifacts:underground_chest/potions");
val potionChestMain = potionChestMain.getPool("main");
potionChestMain.removeEntry("minecraft:potion");
potionChestMain.removeEntry("minecraft:splash_potion");
potionChestMain.removeEntry("minecraft:lingering_potion");
potionChestMain.removeEntry("minecraft:tipped_arrow");
potionChestMain.addItemEntry(<minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}), 10);
potionChestMain.addItemEntry(<scalinghealth:healingitem>, 8);
potionChestMain.addItemEntry(<scalinghealth:healingitem:1>, 4);