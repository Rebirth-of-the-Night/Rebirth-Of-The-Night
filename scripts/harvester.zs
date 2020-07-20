import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;

mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:crowngold");

var scythe = <harvestersnight:harvester_scythe>;
var lapis = <minecraft:dye:4>;


val enchantments1 as IEnchantmentDefinition[] = [<enchantment:nyx:lunar_edge>, <enchantment:minecraft:smite>, <enchantment:dungeontactics:runed
>];

var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(1).makeTag();
enchantmentMap1 += enchantments1[1].makeEnchantment(1).makeTag();
enchantmentMap1 += enchantments1[2].makeEnchantment(1).makeTag();

recipes.remove(<harvestersnight:harvester_scythe>);

val harvester = LootTables.getTable("harvestersnight:entities/harvester");
val harvesterMain = harvester.getPool("scythe");
harvesterMain.removeEntry("harvestersnight:harvester_scythe");

<entity:harvestersnight:harvester>.addPlayerOnlyDrop(<harvestersnight:harvester_scythe>.withTag(enchantmentMap1) % 100, 1, 1);


recipes.addShaped("Soul Chassis", <multiblockmobs:soul_chassis>,[
	[<simpleores:tin_ingot>, null, <simpleores:tin_ingot>],
    [<simpleores:tin_ingot>, lapis, <simpleores:tin_ingot>],
    [null, <simpleores:tin_ingot>, null]
]);
