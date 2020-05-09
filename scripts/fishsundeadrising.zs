import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//removed loot
mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]}));
mods.ltt.LootTable.removeGlobalItem("minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]})");
mods.ltt.LootTable.removeGlobalItem("mod_lavacow:poisonspore");
mods.ltt.LootTable.removeGlobalItem("mod_lavacow:shattered_ice");

<mod_lavacow:glowshroom>.displayName = "Teal Glowshroom";
<quark:glowshroom>.displayName = "Blue Glowshroom";
<biomesoplenty:mushroom:3>.displayName = "Green Glowshroom";

<mod_lavacow:dreamcatcher>.displayName = "§2Dreamcatcher";
<mod_lavacow:halo_necklace>.displayName = "§5Radiant Necklace";

//removed netherex salamander armor
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_helmet>);
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_chestplate>);
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_leggings>);
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_boots>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_helmet>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_chestplate>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_leggings>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_boots>);


//removed or modified food
mods.jei.JEI.removeAndHide(<mod_lavacow:netherstew>);
mods.jei.JEI.removeAndHide(<mod_lavacow:canepork>);
mods.jei.JEI.removeAndHide(<mod_lavacow:parasite_item_cooked>);
mods.jei.JEI.removeAndHide(<mod_lavacow:mousse>);
mods.jei.JEI.removeAndHide(<mod_lavacow:meatball>);
mods.jei.JEI.removeAndHide(<mod_lavacow:moltenpan>);
recipes.remove(<mod_lavacow:canebeef>);
recipes.remove(<mod_lavacow:sausage_roll>);
recipes.remove(<mod_lavacow:canerottenmeat>);
recipes.remove(<mod_lavacow:green_bacon_and_eggs>);
recipes.removeByRecipeName("mod_lavacow:mushroomstew");

//removed or modified weapons
mods.jei.JEI.removeAndHide(<mod_lavacow:moltenaxe>);
mods.jei.JEI.removeAndHide(<mod_lavacow:moltenhammer>);
mods.jei.JEI.removeAndHide(<mod_lavacow:reapers_scythe>);
mods.jei.JEI.removeAndHide(<mod_lavacow:holy_grenade>);
recipes.remove(<mod_lavacow:war>);
recipes.remove(<mod_lavacow:bonesword>);
recipes.remove(<mod_lavacow:tooth_dagger>);

//misc
mods.jei.JEI.removeAndHide(<mod_lavacow:holy_sludge>);
mods.jei.JEI.removeAndHide(<mod_lavacow:potion_of_mooten_lava>);
mods.jei.JEI.removeAndHide(<mod_lavacow:fissionpotion>);
recipes.remove(<mod_lavacow:halo_necklace>);
recipes.remove(<mod_lavacow:dreamcatcher>);
// THIS WOULD MAKE COOL ENDGAME LOOT OK I DON'T WANT TO JUST TRASH IT COMPLETELY
mods.jei.JEI.removeAndHide(<mod_lavacow:goldenheart>);

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

recipes.addShaped("greeneggsham", <mod_lavacow:green_bacon_and_eggs>,[
	[<mod_lavacow:plagued_porkchop>, <harvestcraft:friedeggitem>, <harvestcraft:friedeggitem>],
    [<rats:herb_bundle>, <harvestcraft:honeyitem>, null],
]);

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
	mods.betterwithmods.Anvil.addShaped(<mod_lavacow:bonesword>, [
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

//chef rat recipes
mods.rats.recipes.addChefRatRecipe(<mod_lavacow:parasite_item>, <mod_lavacow:sausage_roll>);

// Oozemancer Staff
recipes.remove(<mod_lavacow:sludge_wand>);

mods.betterwithaddons.Infuser.addShaped(<mod_lavacow:sludge_wand>, [
   [null, <mod_lavacow:silky_sludge>, <contenttweaker:nature_rune>.anyDamage().transformDamage()],
   [<minecraft:vine>, <mod_lavacow:mossy_stick>, <mod_lavacow:silky_sludge>], 
   [<mod_lavacow:mossy_stick>, <minecraft:vine>, null]],
16);

// dreamcatcher
val bFeatherOre = <ore:blackFeather>;
bFeatherOre.add([<animania:charcoal_peacock_feather>, <twilightforest:raven_feather>, <mod_lavacow:feather_black>]);

mods.betterwithaddons.Infuser.addShaped(<mod_lavacow:dreamcatcher>, [
   [<mod_lavacow:mossy_stick>, <contenttweaker:mind_rune>.anyDamage().transformDamage(), <mod_lavacow:mossy_stick>],[<mod_lavacow:mossy_stick>, <minecraft:web>, <mod_lavacow:mossy_stick>], [bFeatherOre, bFeatherOre, bFeatherOre]],
   16);






