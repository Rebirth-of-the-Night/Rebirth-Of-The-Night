import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:crowngold");

var scythe = <harvestersnight:harvester_scythe>;
var lapis = <minecraft:dye:4>;


val enchantments1 as IEnchantmentDefinition[] = [<enchantment:minecraft:sweeping>, <enchantment:minecraft:smite>, <enchantment:dungeontactics:runed
>];

var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(3).makeTag();
enchantmentMap1 += enchantments1[1].makeEnchantment(1).makeTag();
enchantmentMap1 += enchantments1[2].makeEnchantment(1).makeTag();

recipes.remove(<harvestersnight:harvester_scythe>);
recipes.addShaped("Harvesters Scythe", <harvestersnight:harvester_scythe>.withTag(enchantmentMap1),[
	[lapis, lapis, lapis],
    [lapis, scythe, lapis],
    [lapis, lapis, lapis]
]);


recipes.addShaped("Soul Chassis", <multiblockmobs:soul_chassis>,[
	[<simpleores:tin_ingot>, null, <simpleores:tin_ingot>],
    [<simpleores:tin_ingot>, lapis, <simpleores:tin_ingot>],
    [null, <simpleores:tin_ingot>, null]
]);
