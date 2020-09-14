#loader contenttweaker

import crafttweaker.enchantments.IEnchantmentDefinition;
import mods.contenttweaker.enchantments.EnchantmentBuilder;

val finalStand = EnchantmentBuilder.create("curse_finalstand");

finalStand.allowedOnBooks = true;
finalStand.curse = true;
finalStand.setRarityRare();
finalStand.setTypeAll();
val finalStandInvalid as IEnchantmentDefinition[] = [
	<enchantment:minecraft:mending>
];
finalStand.canApplyTogether = function(thisEnchantment, other) {
	return !(finalStandInvalid has other);
};
finalStand.canApplyAtEnchantmentTable = function(thisEnchantment, item) {
	return false;
};
finalStand.calcEnchantabilityMin = function(thisEnchantment, level) {
	return 0;
};
finalStand.calcEnchantabilityMax = function(thisEnchantment, level) {
	return 999999;
};
finalStand.calcTranslatedName = function(thisEnchantment, level) {
	return "Curse of the Final Stand";
};
finalStand.register();
