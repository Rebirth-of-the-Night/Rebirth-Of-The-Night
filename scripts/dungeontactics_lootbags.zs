import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
	// array with the loot bags that will be removed (i.e. all of them)
var ltArray = [
	"magic_bag",
	"arbour_bag",
	"book_bag",
	"food_bag",
	"mystery_bag",
	"ore_bag",
	"potion_bag",
	"quiver_bag",
	"record_bag",
	"tool_bag"
] as string[];

// Clearing out all drops of all loot bags. Clean slate!
for i in ltArray {
	LootTweaker.getTable("dungeontactics:loot_bags/" + i).clear();
}

// Removing magic scrolls from known sources
var scrollSrc = ["minecraft:chests/stronghold_crossing", "minecraft:entities/witch", "minecraft:entities/evocation_illager"] as string[];

for i in scrollSrc {
	val magicScroll = LootTweaker.getTable(i);
	val magicScrollMain = magicScroll.getPool("main");
	magicScrollMain.removeEntry("DT:MagicScroll");
}