import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.jei.JEI;


//mods.eplus.Eplus.blacklistItem(<msmlegacy:wither_bane>);
//mods.eplus.Eplus.blacklistItem(<atop:amethyst_sword>);


recipes.remove(<eplus:advanced_table>);
recipes.remove(<eplus:table_upgrade>);

recipes.addShaped("Table Upgrade", <eplus:table_upgrade>,[
[<minecraft:gold_block>, <eplus:decorative_book>, <minecraft:gold_block>],
[<minecraft:obsidian>, <simpleores:mythril_ingot>, <minecraft:obsidian>], 
[<minecraft:gold_block>, <contenttweaker:knowledge_orb>, <minecraft:gold_block>]]);
      


mods.jei.JEI.hideCategory("minecraft.anvil");
mods.jei.JEI.hideCategory("endreborn.user");


mods.rockytweaks.Anvil.remove([<dungeontactics:silver_sword>]); // true darks edge
mods.rockytweaks.Anvil.remove([<msmlegacy:dawn_star:*>]); // true lights edge
mods.rockytweaks.Anvil.remove([<msmlegacy:eye_end_blade:*>]); // interdim blade
mods.rockytweaks.Anvil.remove([<msmlegacy:glacial_blade:*>]); // dragons bane
mods.rockytweaks.Anvil.remove([<msmlegacy:crystaline_blade:*>]); // lights edge
mods.rockytweaks.Anvil.remove([<msmlegacy:wither_bane:*>]); // darks edge
mods.rockytweaks.Anvil.remove([<atop:amethyst_sword>]); // mari
mods.rockytweaks.Anvil.remove([<msmlegacy:relic_aqueous:*>]);
mods.rockytweaks.Anvil.remove([<msmlegacy:relic_candy:*>]);

mods.rockytweaks.Anvil.remove([<betterwithmods:steel_pickaxe>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_axe>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_shovel>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_hoe>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_mattock>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_hacksaw>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_helmet>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_chest>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_pants>]);
mods.rockytweaks.Anvil.remove([<betterwithmods:steel_boots>]);
mods.rockytweaks.Anvil.remove([<betterwithaddons:steel_spade>]);
mods.rockytweaks.Anvil.remove([<betterwithaddons:steel_matchpick>]);
mods.rockytweaks.Anvil.remove([<betterwithaddons:steel_machete>]);
mods.rockytweaks.Anvil.remove([<betterwithaddons:steel_kukri>]);
mods.rockytweaks.Anvil.remove([<betterwithaddons:steel_carpentersaw>]);
mods.rockytweaks.Anvil.remove([<betterwithaddons:steel_masonpick>]);




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             REMOVING ENCHANTMENT BOOKS FROM JEI AND LOOT TABLES
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

mods.ltt.LootTable.removeModItem("randomenchantments");
mods.ltt.LootTable.removeModItem("msmlegacy");
mods.ltt.LootTable.removeModItem("livingenchantment");

mods.ltt.LootTable.removeModEntry("randomenchantments");
mods.ltt.LootTable.removeModEntry("msmlegacy");
mods.ltt.LootTable.removeModEntry("livingenchantment");

mods.ltt.LootTable.removeModTable("randomenchantments");
mods.ltt.LootTable.removeModTable("msmlegacy");
mods.ltt.LootTable.removeModTable("livingenchantment");


mods.jei.JEI.hide(<minecraft:enchanted_book>);

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

		mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag(enchantMap));

	} 

	enchantLoopCounter += 1;
}
*/