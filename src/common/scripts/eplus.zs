#modloaded defiledlands

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.jei.JEI;
import mods.rockytweaks.Anvil;
import mods.eplus.Eplus;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.ltt.LootTable;


// Eplus.blacklistItem(<msmlegacy:wither_bane>);
// Eplus.blacklistItem(<atop:amethyst_sword>);

JEI.removeAndHide(<eplus:decorative_book:1>);
JEI.removeAndHide(<eplus:decorative_book:2>);
JEI.removeAndHide(<eplus:decorative_book:3>);
JEI.removeAndHide(<eplus:decorative_book:4>);
JEI.removeAndHide(<eplus:decorative_book:5>);
JEI.removeAndHide(<eplus:decorative_book:6>);



recipes.remove(<eplus:advanced_table>);
recipes.remove(<eplus:table_upgrade>);

RecipeBuilder.get("mage")
  .setShaped([
	[<minecraft:gold_block>, <eplus:decorative_book>, <minecraft:gold_block>],
	[<minecraft:obsidian>, <ore:ingotMythril>, <minecraft:obsidian>], 
	[<minecraft:gold_block>, <wards:enchanted_paper>, <minecraft:gold_block>]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<eplus:table_upgrade>)
  .create();


JEI.hideCategory("minecraft.anvil");
JEI.hideCategory("endreborn.user");


Anvil.remove([<dungeontactics:silver_sword>]); // true darks edge
Anvil.remove([<msmlegacy:dawn_star:*>]); // true lights edge
Anvil.remove([<msmlegacy:eye_end_blade:*>]); // interdim blade
Anvil.remove([<msmlegacy:glacial_blade:*>]); // dragons bane
Anvil.remove([<msmlegacy:crystaline_blade:*>]); // lights edge
Anvil.remove([<msmlegacy:wither_bane:*>]); // darks edge
Anvil.remove([<atop:amber_sword>]); // mari
Anvil.remove([<msmlegacy:relic_aqueous:*>]);
Anvil.remove([<msmlegacy:relic_candy:*>]);

Anvil.remove([<betterwithmods:steel_pickaxe>]);
Anvil.remove([<betterwithmods:steel_axe>]);
Anvil.remove([<betterwithmods:steel_shovel>]);
Anvil.remove([<betterwithmods:steel_hoe>]);
Anvil.remove([<betterwithmods:steel_mattock>]);
Anvil.remove([<betterwithmods:steel_hacksaw>]);
Anvil.remove([<betterwithmods:steel_helmet>]);
Anvil.remove([<betterwithmods:steel_chest>]);
Anvil.remove([<betterwithmods:steel_pants>]);
Anvil.remove([<betterwithmods:steel_boots>]);
Anvil.remove([<betterwithaddons:steel_spade>]);
Anvil.remove([<betterwithaddons:steel_matchpick>]);
Anvil.remove([<betterwithaddons:steel_machete>]);
Anvil.remove([<betterwithaddons:steel_kukri>]);
Anvil.remove([<betterwithaddons:steel_carpentersaw>]);
Anvil.remove([<betterwithaddons:steel_masonpick>]);




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             REMOVING ENCHANTMENT BOOKS FROM JEI AND LOOT TABLES
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

LootTable.removeModItem("randomenchantments");
LootTable.removeModItem("msmlegacy");
LootTable.removeModItem("livingenchantment");

LootTable.removeModEntry("randomenchantments");
LootTable.removeModEntry("msmlegacy");
LootTable.removeModEntry("livingenchantment");

LootTable.removeModTable("randomenchantments");
LootTable.removeModTable("msmlegacy");
LootTable.removeModTable("livingenchantment");


JEI.hide(<minecraft:enchanted_book>);

/*

val disabledEnchantments = [<enchantment:mod_lavacow:lifesteal>, <enchantment:msmlegacy:feast>] as IEnchantmentDefinition[];
val disabledEnchantmentLevels = [1,2,3];





//////////////////////////////////////////////////////////////////////////
var enchantLoopCounter = 0; //Enchant Array Locater
var enchantTag = disabledEnchantments[0].makeEnchantment(1).makeTag().ench[0];
var enchantMap = {}  as IData;

for enchant in disabledEnchantments {
	for enchantLevel in disabledEnchantmentLevels {

		enchantTag = disabledEnchantments[enchantLoopCounter].makeEnchantment(enchantLevel).makeTag().ench[0];

		enchantMap = {StoredEnchantments: [enchantTag]};

		JEI.removeAndHide(<minecraft:enchanted_book>.withTag(enchantMap));

	} 

	enchantLoopCounter += 1;
}
*/