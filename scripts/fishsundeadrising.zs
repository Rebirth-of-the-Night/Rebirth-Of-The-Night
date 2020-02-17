import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


////// this is not done.
////// need: -add oredict bonedagger recipe. -add oredict bonesword recipe, witherbone handle in steel anvil. 
////// The bigger they are, the harder they fall. Deals 5% of enemy's maximum HP as damage.
////// null, null, <ore:monsterTooth>, <ore:monsterTooth>
////// null, <ore:monsterTooth>, witherbone, <ore:monsterTooth>
////// <ore:monsterTooth>, witherbone, <ore:monsterTooth>, null
////// handle or something idk, <ore:monsterTooth>, null, null
////// need: war/Nether Cannon recipe
////// need: remove all these damn tooltips (see the ones that I attempted to remove and only half actually succeeded)
////// need to remove partial set bonus tooltips from item description and use SetBonus instead


mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]}));
mods.ltt.LootTable.removeGlobalItem("minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]})");

//removed netherex salamander armor
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_helmet>);
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_chestplate>);
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_leggings>);
mods.jei.JEI.removeAndHide(<netherex:orange_salamander_hide_boots>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_helmet>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_chestplate>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_leggings>);
mods.jei.JEI.removeAndHide(<netherex:black_salamander_hide_boots>);


//food
mods.jei.JEI.removeAndHide(<mod_lavacow:netherstew>);
mods.jei.JEI.removeAndHide(<mod_lavacow:canebeef>);
mods.jei.JEI.removeAndHide(<mod_lavacow:canepork>);
mods.jei.JEI.removeAndHide(<mod_lavacow:parasite_item_cooked>);
mods.jei.JEI.removeAndHide(<mod_lavacow:mousse>);
mods.jei.JEI.removeAndHide(<mod_lavacow:meatball>);
mods.jei.JEI.removeAndHide(<mod_lavacow:moltenpan>);
mods.jei.JEI.removeAndHide(<mod_lavacow:parasite_item_cooked>);
recipes.remove(<mod_lavacow:sausage_roll>);
recipes.remove(<mod_lavacow:canerottenmeat>);
recipes.remove(<mod_lavacow:green_bacon_and_eggs>);

//weapons
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

mods.betterwithmods.Anvil.addShaped(<mod_lavacow:bonesword>, 
[
   [null, null, <ore:monsterTooth>, <ore:monsterTooth>],
   [null, <ore:monsterTooth>, <ore:stickWood>, <ore:monsterTooth>],
   [<ore:monsterTooth>, <ore:stickWood>, <ore:monsterTooth>, null],
   [<ore:stickWood>, <ore:monsterTooth>, null, null]
]);

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
brewing.removeRecipe(<mod_lavacow:fissionpotion>, <mod_lavacow:hyphae>);
brewing.removeRecipe(<mod_lavacow:potion_of_mooten_lava>, <mod_lavacow:mootenheart>);

//chef rat recipes
mods.rats.recipes.addChefRatRecipe(<mod_lavacow:parasite_item>, <mod_lavacow:sausage_roll>);





