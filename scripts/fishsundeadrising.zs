import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


mods.jei.JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]}));
mods.ltt.LootTable.removeGlobalItem("minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 77 as short}]})");
mods.ltt.LootTable.removeGlobalItem("mod_lavacow:poisonspore");


<mod_lavacow:glowshroom>.displayName = "Teal Glowshroom";
<quark:glowshroom>.displayName = "Blue Glowshroom";
<biomesoplenty:mushroom:3>.displayName = "Green Glowshroom";

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
recipes.removeByRecipeName("mod_lavacow:mushroomstew");

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

mods.betterwithmods.Anvil.addShaped(<mod_lavacow:bonesword>, 
[
   [null, null, <ore:monsterTooth>, <spartanfire:witherbone_handle>],
   [null, <ore:monsterTooth>, <minecraft:bone>, <ore:monsterTooth>],
   [<ore:monsterTooth>, <minecraft:bone>, <ore:monsterTooth>, null],
   [<ore:monsterTooth>, <ore:monsterTooth>, null, null]
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
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <mod_lavacow:hyphae>);
brewing.removeRecipe(<mod_lavacow:fissionpotion>, <mod_lavacow:mootenheart>);

//chef rat recipes
mods.rats.recipes.addChefRatRecipe(<mod_lavacow:parasite_item>, <mod_lavacow:sausage_roll>);





