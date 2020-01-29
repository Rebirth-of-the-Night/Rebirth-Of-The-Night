import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
//completely hidden recipes

mods.jei.JEI.removeAndHide(<rats:rat_upgrade_basic_ratlantean>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_feral_bite>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_ratinator>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_psychic>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_nonbeliever>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_combined>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_combined_creative>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_god>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_ore_doubling>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_basic_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_advanced_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_elite_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_extreme_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_archeologist>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_milker>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_crafting>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_buccaneer>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_aristocrat>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_bucket>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_big_bucket>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_lumberjack>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_miner>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_breeder>);
mods.jei.JEI.removeAndHide(<rats:gem_of_ratlantis>);
mods.jei.JEI.removeAndHide(<rats:idol_of_ratlantis>);
mods.jei.JEI.removeAndHide(<rats:upgrade_combiner>);
mods.jei.JEI.removeAndHide(<rats:upgrade_separator>);
mods.jei.JEI.removeAndHide(<rats:little_black_squash_balls>);
mods.jei.JEI.removeAndHide(<rats:little_black_worm>);
mods.jei.JEI.removeAndHide(<rats:arcane_technology>);
mods.jei.JEI.removeAndHide(<rats:vial_of_sentience>);
mods.jei.JEI.removeAndHide(<rats:marbled_cheese_golem_core>);
mods.jei.JEI.removeAndHide(<rats:marbled_cheese_rat_head>);
mods.jei.JEI.removeAndHide(<rats:compressed_rat>);
mods.jei.JEI.removeAndHide(<rats:brain_block>);
mods.jei.JEI.removeAndHide(<rats:ratglove_flower>);
mods.jei.JEI.removeAndHide(<rats:chunky_cheese_token>);
mods.jei.JEI.removeAndHide(<rats:token_fragment>);
mods.jei.JEI.removeAndHide(<rats:token_piece>);
mods.jei.JEI.removeAndHide(<rats:auto_curdler>);
mods.jei.JEI.removeAndHide(<rats:rat_crafting_table>);
mods.jei.JEI.removeAndHide(<rats:marbled_cheese_raw>);
mods.jei.JEI.removeAndHide(<rats:ratglove_petals>);
mods.jei.JEI.removeAndHide(<rats:psionic_rat_brain>);
mods.jei.JEI.removeAndHide(<rats:pirat_hat>);
mods.jei.JEI.removeAndHide(<rats:pirat_cutlass>);
mods.jei.JEI.removeAndHide(<rats:rat_nugget>);
mods.jei.JEI.removeAndHide(<rats:rat_nugget_ore>);
mods.jei.JEI.removeAndHide(<rats:ratlantean_flame>);
mods.jei.JEI.removeAndHide(<rats:cheese_cannonball>);
mods.jei.JEI.removeAndHide(<rats:feral_rat_claw>);
mods.jei.JEI.removeAndHide(<rats:centipede>);
mods.jei.JEI.removeAndHide(<rats:garbage_pile>);

// other removed recipes
recipes.remove(<rats:rat_upgrade_voodoo>);
recipes.remove(<rats:feathery_wing>);
recipes.remove(<rats:cheese>);
mods.rats.recipes.removeChefRatRecipe(<rats:confit_byaldi>);
mods.rats.recipes.removeChefRatRecipe(<rats:potato_kinishes>);
mods.rats.recipes.removeChefRatRecipe(<rats:string_cheese>);

// loot - b - gone

mods.ltt.LootTable.removeGlobalItem("rats:chunky_cheese_token");
mods.ltt.LootTable.removeGlobalItem("rats:token_fragment");
mods.ltt.LootTable.removeGlobalItem("rats:token_piece");
mods.ltt.LootTable.removeGlobalItem("rats:marbled_cheese_rat_head");
mods.ltt.LootTable.removeGlobalItem("rats:rat_toga");
mods.ltt.LootTable.removeGlobalItem("rats:ratlantean_flame");

//Mob Loot Tweaks


<entity:rats:ratlantean_spirit>.removeDrop(<rats:ratlantean_flame>);
<entity:rats:ratlantean_spirit>.removeDrop(<rats:marbled_cheese_rat_head>);
<entity:rats:ratlantean_spirit>.addPlayerOnlyDrop(<rats:plague_essence> %20, 1);
<entity:rats:ratlantean_spirit>.addPlayerOnlyDrop(<biomesoplenty:ash> %70, 1, 3);

<entity:rats:feral_ratlantean>.removeDrop(<rats:marbled_cheese_rat_head>);
<entity:rats:feral_ratlantean>.removeDrop(<rats:rat_toga>);

//addPlayerOnlyDrop(weightedItem, min, max);
<entity:rats:plague_beast>.addPlayerOnlyDrop(<rats:feral_rat_claw> %25, 1, 2);
<entity:rats:plague_beast>.addPlayerOnlyDrop(<mod_lavacow:pigboarhide> %40, 1, 2);

//Fish's Undead Rising Mob Loot Additions
<entity:mod_lavacow:wendigo>.addPlayerOnlyDrop(<rats:plague_essence> %50, 1, 3);
<entity:mod_lavacow:undeadswine>.addPlayerOnlyDrop(<rats:plague_essence> %20, 1);


// New Rat Item Recipes

recipes.addShaped("rat_toga", <rats:rat_toga>,[
	[null, null, null],
    [null, <minecraft:string>, null],
    [null, <harvestcraft:wovencottonitem>, null]
]);

recipes.addShaped("rat_voodoo", <rats:rat_upgrade_voodoo>,[
	[<rats:plague_essence>, <rats:top_hat>, <rats:plague_essence>],
    [<minecraft:totem_of_undying>, <rats:rat_upgrade_damage_protection>, <minecraft:totem_of_undying>],
    [<rats:plague_essence>, <minecraft:totem_of_undying>, <rats:plague_essence>]
]);

recipes.addShaped("feathery_wing", <rats:feathery_wing>,[
	[null, null, null],
    [<aether_legacy:aercloud>, <ore:feather>, <ore:feather>],
    [<ore:feather>, <ore:feather>, null]
]);

// remove archeologist rat recipes
mods.jei.JEI.hideCategory("rats.archeologist_rat");

// new pam's recipes

val eyeOredict = <ore:eyeball>;
eyeOredict.add(<minecraft:spider_eye>);
eyeOredict.add(<minecraft:fermented_spider_eye>);
eyeOredict.add(<biomesoplenty:double_plant:2>);
eyeOredict.add(<betternether:eye_seed>);
eyeOredict.add(<iceandfire:cyclops_eye>);
eyeOredict.add(<iceandfire:cockatrice_eye>);

//new eye pie
recipes.addShapeless(<harvestcraft:spidereyepieitem>, [<harvestcraft:bakewareitem>.transformReplace(<harvestcraft:bakewareitem>), <ore:foodDough>, <ore:eyeball>, <ore:listAllsugar>, <rats:herb_bundle>]);

//new mob soup
recipes.addShapeless(<harvestcraft:mobsoupitem>, [<harvestcraft:potitem>.transformReplace(<harvestcraft:potitem>), <harvestcraft:stockitem>, <minecraft:spider_eye>, <minecraft:rotten_flesh>, <minecraft:slime_ball>, <ore:listAllsalt>, <rats:herb_bundle>]);

//chef rat recipes
mods.rats.recipes.addChefRatRecipe(<minecraft:golden_apple:1>, <rats:confit_byaldi>);
mods.rats.recipes.addChefRatRecipe(<minecraft:skull>, <harvestcraft:spaghettidinneritem>);
mods.rats.recipes.addChefRatRecipe(<minecraft:rotten_flesh>, <harvestcraft:zombiejerkyitem>);
mods.rats.recipes.addChefRatRecipe(<minecraft:spider_eye>, <harvestcraft:spidereyesoupitem>);
mods.rats.recipes.addChefRatRecipe(<biomesoplenty:fleshchunk>, <minecraft:rotten_flesh>);
mods.rats.recipes.addChefRatRecipe(<aether_legacy:cooked_enchanted_cockatrice>, <harvestcraft:deluxechickencurryitem>);
mods.rats.recipes.addChefRatRecipe(<quark:root>, <harvestcraft:roastedrootveggiemedleyitem>);
mods.rats.recipes.addChefRatRecipe(<quark:rune:16>, <harvestcraft:epicbaconitem>);
mods.rats.recipes.addChefRatRecipe(<quark:enderdragon_scale>, <harvestcraft:mobsoupitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:deathworm_tounge>, <harvestcraft:sausageinbreaditem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:sea_serpent_scales_blue>, <harvestcraft:fishandchipsitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:sea_serpent_scales_bronze>, <harvestcraft:fishandchipsitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:sea_serpent_scales_deepblue>, <harvestcraft:fishandchipsitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:sea_serpent_scales_green>, <harvestcraft:fishandchipsitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:sea_serpent_scales_purple>, <harvestcraft:fishandchipsitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:sea_serpent_scales_red>, <harvestcraft:fishandchipsitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:sea_serpent_scales_teal>, <harvestcraft:fishandchipsitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_desert_egg>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_desert_egg:1>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_desert_egg:2>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_desert_egg:3>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_jungle_egg>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_jungle_egg:1>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_jungle_egg:2>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:myrmex_jungle_egg:3>, <harvestcraft:eggsbenedictitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:fire_dragon_heart>, <harvestcraft:heartybreakfastitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:ice_dragon_heart>, <harvestcraft:heartybreakfastitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:fire_dragon_flesh>, <harvestcraft:meatfeastpizzaitem>);
mods.rats.recipes.addChefRatRecipe(<iceandfire:ice_dragon_flesh>, <harvestcraft:meatfeastpizzaitem>);






