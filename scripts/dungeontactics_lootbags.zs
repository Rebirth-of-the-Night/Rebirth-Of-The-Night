import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

// Clearing out all drops of all loot bags. Clean slate!
val magic = LootTweaker.getTable("dungeontactics:loot_bags/magic_bag");
magic.clear();

val arbour = LootTweaker.getTable("dungeontactics:loot_bags/arbour_bag");
arbour.clear();

val book = LootTweaker.getTable("dungeontactics:loot_bags/book_bag");
book.clear();

val food = LootTweaker.getTable("dungeontactics:loot_bags/food_bag");
food.clear();

val mystery = LootTweaker.getTable("dungeontactics:loot_bags/mystery_bag");
mystery.clear();

val ore = LootTweaker.getTable("dungeontactics:loot_bags/ore_bag");
ore.clear();

val potion = LootTweaker.getTable("dungeontactics:loot_bags/potion_bag");
potion.clear();

val quiver = LootTweaker.getTable("dungeontactics:loot_bags/quiver_bag");
quiver.clear();

val record = LootTweaker.getTable("dungeontactics:loot_bags/record_bag");
record.clear();

val tool = LootTweaker.getTable("dungeontactics:loot_bags/tool_bag");
tool.clear();