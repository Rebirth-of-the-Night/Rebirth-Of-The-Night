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

// tooltips
<mod_lavacow:moltenbeef>.displayName = "Molten Scale";
<mod_lavacow:famine>.displayName = "Blade of Devouring Greed";
<mod_lavacow:war>.displayName = "Nether Cannon";
<mod_lavacow:sludge_wand>.displayName = "Oozemancer's Staff";

<mod_lavacow:famine>.removeTooltip("Gives Hunger. Restore 1 hunger points when hitting a non-undead entity.");
<mod_lavacow:famine>.addTooltip("And so cursed with hunger / that foul Wielder lashed out against the living / to satisfy their Yearning");
<mod_lavacow:sludge_wand>.removeTooltip("Right click to summon a loyal Lil'Sludge");
<mod_lavacow:sludge_wand>.addTooltip("Right-click to conjure a loyal li'l sludgeling from the staff for 1 minute.");
<mod_lavacow:war>.removeTooltip("Raise a war between you and your friend who built a wood cabin (need Fire Charge as ammunition)");
<mod_lavacow:war>.addTooltip("Glorious fiery destruction in handheld form. Uses Fire Charges as ammunition.");
<mod_lavacow:piranhalauncher>.removeTooltip("Right click to launch a Swarmer at target. (need Swarmer as ammunition)");
<mod_lavacow:piranhalauncher>.addTooltip("Right-click to launch an undead piranha. Uses Frenzy as ammunition.");
<mod_lavacow:intestine>.removeTooltip("Right click to find what's inside it");
<mod_lavacow:intestine>.addTooltip("Unpleasant to handle. Right-click to sift through the remains.");
<mod_lavacow:canerottenmeat>.removeTooltip("Gives Regeneration(0:08) when eaten, is also mimicrab's favorite.");
<mod_lavacow:canerottenmeat>.addTooltip("Disgusting, but has regenerative powers. Favored by rare species of hermit crabs.");
<mod_lavacow:swinemask>.removeTooltip("Grants player poison immunity.");
<mod_lavacow:swinemask>.removeTooltip("Undead Swine will be neutral to player");
<mod_lavacow:frozenthigh>.removeTooltip("Is edible. Attacks give target SlownessIII(0:04)");
<mod_lavacow:frozenthigh>.addTooltip("The cold has theoretically made this safe to eat... but it's still freezing to the touch.");
<mod_lavacow:green_bacon_and_eggs>.removeTooltip("Gives Haste(1:00) when eaten.");
<mod_lavacow:green_bacon_and_eggs>.addTooltip("This rather sickening meal was first created by the infamous chef, Samuel.");


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





