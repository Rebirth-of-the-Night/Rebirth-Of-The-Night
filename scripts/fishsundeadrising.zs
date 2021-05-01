import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.betterwithmods.Anvil;
import mods.ltt.LootTable;
import mods.betterwithaddons.Infuser;

//removed loot
JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]}));
LootTable.removeGlobalItem("minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]})");
LootTable.removeGlobalItem("mod_lavacow:poisonspore");
LootTable.removeGlobalItem("mod_lavacow:shattered_ice");
LootTable.removeGlobalItem("mod_lavacow:undertaker_shovel");

<biomesoplenty:mushroom:3>.displayName = "Green Glowshroom";

//removed netherex salamander armor
JEI.removeAndHide(<netherex:orange_salamander_hide_helmet>);
JEI.removeAndHide(<netherex:orange_salamander_hide_chestplate>);
JEI.removeAndHide(<netherex:orange_salamander_hide_leggings>);
JEI.removeAndHide(<netherex:orange_salamander_hide_boots>);
JEI.removeAndHide(<netherex:black_salamander_hide_helmet>);
JEI.removeAndHide(<netherex:black_salamander_hide_chestplate>);
JEI.removeAndHide(<netherex:black_salamander_hide_leggings>);
JEI.removeAndHide(<netherex:black_salamander_hide_boots>);


//removed or modified food
JEI.removeAndHide(<mod_lavacow:netherstew>);
JEI.removeAndHide(<mod_lavacow:canepork>);
JEI.removeAndHide(<mod_lavacow:parasite_item_cooked>);
JEI.removeAndHide(<mod_lavacow:mousse>);
JEI.removeAndHide(<mod_lavacow:meatball>);
JEI.removeAndHide(<mod_lavacow:moltenpan>);
recipes.remove(<mod_lavacow:canebeef>);
recipes.remove(<mod_lavacow:sausage_roll>);
recipes.remove(<mod_lavacow:canerottenmeat>);
recipes.remove(<mod_lavacow:green_bacon_and_eggs>);
recipes.removeByRecipeName("mod_lavacow:mushroomstew");

//removed or modified weapons
JEI.removeAndHide(<mod_lavacow:moltenaxe>);
JEI.removeAndHide(<mod_lavacow:moltenhammer>);
JEI.removeAndHide(<mod_lavacow:reapers_scythe>);
JEI.removeAndHide(<mod_lavacow:holy_grenade>);
recipes.remove(<mod_lavacow:war>);
recipes.remove(<mod_lavacow:bonesword>);
recipes.remove(<mod_lavacow:tooth_dagger>);

//misc
JEI.removeAndHide(<mod_lavacow:holy_sludge>);
JEI.removeAndHide(<mod_lavacow:potion_of_mooten_lava>);
JEI.removeAndHide(<mod_lavacow:fissionpotion>);
recipes.remove(<mod_lavacow:halo_necklace>);
recipes.remove(<mod_lavacow:dreamcatcher>);
// THIS WOULD MAKE COOL ENDGAME LOOT OK I DON'T WANT TO JUST TRASH IT COMPLETELY
JEI.removeAndHide(<mod_lavacow:goldenheart>);

//tweaked armor
recipes.remove(<mod_lavacow:felarmor_helmet>);
recipes.remove(<mod_lavacow:felarmor_chestplate>);
recipes.remove(<mod_lavacow:felarmor_leggings>);
recipes.remove(<mod_lavacow:felarmor_boots>);
recipes.remove(<mod_lavacow:swinemask>);
recipes.remove(<mod_lavacow:swinearmor_chestplate>);
recipes.remove(<mod_lavacow:swinearmor_leggings>);
recipes.remove(<mod_lavacow:swinearmor_boots>);

//Fish's Undead Rising Mob Loot
<entity:mod_lavacow:zombiefrozen>.addPlayerOnlyDrop(<minecraft:packed_ice> %60, 1, 2);
<entity:mod_lavacow:zombiemushroom>.addPlayerOnlyDrop(<rustic:deathstalk_mushroom> %30, 1, 2);
<entity:mod_lavacow:zombiemushroom>.addPlayerOnlyDrop(<rustic:mooncap_mushroom> %50, 1, 2);
<entity:mod_lavacow:zombiemushroom>.addPlayerOnlyDrop(<mod_lavacow:glowshroom> %70, 1, 2);
<entity:mod_lavacow:undertaker>.addPlayerOnlyDrop(<contenttweaker:necromantic_brain> %100, 1);

// new oredict
val salahideOredict = <ore:salamanderhide>;
salahideOredict.add(<netherex:orange_salamander_hide>);
salahideOredict.add(<netherex:black_salamander_hide>);

val oreMonsterTooth = <ore:monsterTooth>;
oreMonsterTooth.addItems([<iceandfire:sea_serpent_fang>, <mowziesmobs:naga_fang>, <netherex:coolmar_spider_fang>, <mod_lavacow:sharptooth>]);

// new food recipes

recipes.addShaped("canerotten", <mod_lavacow:canerottenmeat>,[
	[<minecraft:reeds>, <harvestcraft:zombiejerkyitem>, null],
    [<harvestcraft:zombiejerkyitem>, <rats:herb_bundle>, null],
]);

recipes.addShapeless("greeneggsham", <mod_lavacow:green_bacon_and_eggs>,[<mod_lavacow:plagued_porkchop>, <harvestcraft:friedeggitem>, <harvestcraft:friedeggitem>, <rats:herb_bundle>, <ore:listAllsugar>]);

//new weapon recipes
recipes.addShaped(<mod_lavacow:war>,[
[<quark:pipe>, <mod_lavacow:mootenheart>, <betterwithmods:material:27>],
[<betternether:cincinnasite>, <betternether:cincinnasite>, <minecraft:repeater>],
[null, null, <betternether:cincinnasite>]
]);

recipes.addShaped("bonedagger", <mod_lavacow:tooth_dagger>,[
	[null, <ore:monsterTooth>],
    [<ore:stickWood>, null]
]);

for item in oreMonsterTooth.items{
	Anvil.addShaped(<mod_lavacow:bonesword>, [
		[null, null, item, <spartanfire:witherbone_handle>],
		[null, item, <minecraft:bone>, item],
		[item, <minecraft:bone>, item, null],
		[item, item, null, null]
	]);
}

//netherbeast armor set
recipes.addShaped("felhelm", <mod_lavacow:felarmor_helmet>,[
	[<ore:salamanderhide>, <mod_lavacow:moltenbeef>, <ore:salamanderhide>],
    [<ore:salamanderhide>, null, <ore:salamanderhide>],
]);

recipes.addShaped("felchest", <mod_lavacow:felarmor_chestplate>,[
	[<ore:salamanderhide>, null, <ore:salamanderhide>],
    [<ore:salamanderhide>, <mod_lavacow:moltenbeef>, <ore:salamanderhide>],
	[<ore:salamanderhide>, <mod_lavacow:moltenbeef>, <ore:salamanderhide>],
]);

recipes.addShaped("fellegs", <mod_lavacow:felarmor_leggings>,[
	[<ore:salamanderhide>, <ore:salamanderhide>, <ore:salamanderhide>],
    [<mod_lavacow:moltenbeef>, null, <mod_lavacow:moltenbeef>],
	[<ore:salamanderhide>, null, <ore:salamanderhide>],
]);

recipes.addShaped("felboots", <mod_lavacow:felarmor_boots>,[
	[<ore:salamanderhide>, null, <ore:salamanderhide>],
    [<mod_lavacow:moltenbeef>, null, <mod_lavacow:moltenbeef>],
]);

//plagued leather armor set
recipes.addShaped("plaguehelm", <mod_lavacow:swinemask>,[
	[<mod_lavacow:pigboarhide>, <rats:plague_essence>, <mod_lavacow:pigboarhide>],
    [<mod_lavacow:pigboarhide>, null, <mod_lavacow:pigboarhide>],
]);

recipes.addShaped("plaguechest", <mod_lavacow:swinearmor_chestplate>,[
	[<mod_lavacow:pigboarhide>, null, <mod_lavacow:pigboarhide>],
    [<mod_lavacow:pigboarhide>, <rats:plague_essence>, <mod_lavacow:pigboarhide>],
	[<mod_lavacow:pigboarhide>, <mod_lavacow:pigboarhide>, <mod_lavacow:pigboarhide>],
]);

recipes.addShaped("plaguelegs", <mod_lavacow:swinearmor_leggings>,[
	[<mod_lavacow:pigboarhide>, <ore:salamanderhide>, <mod_lavacow:pigboarhide>],
    [<rats:plague_essence>, null, <rats:plague_essence>],
	[<mod_lavacow:pigboarhide>, null, <mod_lavacow:pigboarhide>],
]);

recipes.addShaped("plagueboots", <mod_lavacow:swinearmor_boots>,[
	[<mod_lavacow:pigboarhide>, null, <mod_lavacow:pigboarhide>],
    [<mod_lavacow:pigboarhide>, null, <mod_lavacow:pigboarhide>],
]);

/// Brewing
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <mod_lavacow:hyphae>);
brewing.removeRecipe(<mod_lavacow:fissionpotion>, <mod_lavacow:mootenheart>);

// chef rat recipes
mods.rats.recipes.addChefRatRecipe(<mod_lavacow:parasite_item>, <mod_lavacow:sausage_roll>);

// Oozemancer Staff
# Change durability
<mod_lavacow:sludge_wand>.maxDamage = 64;

# Recipe
recipes.remove(<mod_lavacow:sludge_wand>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <mod_lavacow:mossy_stick>, <mod_lavacow:silky_sludge>],
    [<contenttweaker:vis_sliver>, <contenttweaker:scepter_base_arcane>, <mod_lavacow:mossy_stick>],
    [<contenttweaker:overgrown_emerald>, <contenttweaker:vis_sliver>, null]])
  .addTool(<contenttweaker:nature_rune>, 1)
  .addTool(<contenttweaker:creation_rune>, 1)
  .addOutput(<mod_lavacow:sludge_wand:64>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<mod_lavacow:sludge_wand>,
[<mod_lavacow:sludge_wand>.anyDamage(),<contenttweaker:vis_sliver>], 64);

recipes.remove(<mod_lavacow:sludge_wand>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <mod_lavacow:silky_sludge>, <mod_lavacow:mossy_stick>],
    [<ore:vine>, <mod_lavacow:mossy_stick>, <mod_lavacow:silky_sludge>],
    [<mod_lavacow:mossy_stick>, <ore:vine>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:nature_rune>, 1)
  .addOutput(<mod_lavacow:sludge_wand>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// dreamcatcher
val bFeatherOre = <ore:blackFeather>;
bFeatherOre.add([<animania:charcoal_peacock_feather>, <twilightforest:raven_feather>, <mod_lavacow:feather_black>]);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <mod_lavacow:mossy_stick>, <contenttweaker:vis_sliver>],
    [<mod_lavacow:mossy_stick>, <minecraft:web>, <mod_lavacow:mossy_stick>],
    [<ore:blackFeather>, <ore:blackFeather>, <ore:blackFeather>]])
  .addTool(<contenttweaker:mind_rune>, 1)
  .addOutput(<mod_lavacow:dreamcatcher>)
  .create();

// halo necklace

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <bountifulbaubles:amuletcross>, <contenttweaker:vis_shard>],
    [<ore:ingotElectrum>.firstItem, <contenttweaker:holy_zanite>, <ore:ingotElectrum>.firstItem],
    [<mod_lavacow:scythe_claw>, <contenttweaker:fortified_ruby>, <mod_lavacow:scythe_claw>]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addOutput(<mod_lavacow:halo_necklace>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();



