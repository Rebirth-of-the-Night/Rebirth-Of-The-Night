import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityDefinition;

recipes.remove(<rats:marbled_cheese_dirt>);
recipes.addShapeless("marbled_cheese_dirt",<rats:marbled_cheese_dirt>,[<rats:marbled_cheese>,<ore:dirt>]);

recipes.remove(<rats:marbled_cheese_grass>);
recipes.addShapeless("marbled_cheese_grass",<rats:marbled_cheese_grass>,[<rats:marbled_cheese>,<ore:grass>]);

// renamed
<rats:tiny_coin>.displayName = "§aInsignia of the Giant Rat";
<rats:vial_of_sentience>.displayName = "§cGod-Essence";
<rats:ratlantean_flame>.displayName = "Soulfire";
<rats:psionic_rat_brain>.displayName = "§cAscendant Brain";
<rats:feral_bagh_nakhs>.displayName = "Feral Bagh Nakh";

<rats:confit_byaldi>.displayName = "§cConfit Byaldi";
<rats:black_death_mask>.displayName = "§5Black Death Mask";
<rats:black_death_mask>.addTooltip(format.darkPurple("Epic Armor"));
<rats:plague_scythe>.displayName = "§6Plague Scythe";
<rats:plague_scythe>.addTooltip(format.gold("Legendary Weapon"));


// tooltips
<rats:plague_essence>.removeTooltip("Rare drop from Plague Rats");
<rats:plague_essence>.addTooltip("§7Rare drop from plagued beasts and corrupted monsters");
<rats:tiny_coin>.addTooltip("§7The Giant Rat makes all of the rules.");

<rats:contaminated_food>.removeTooltip("Nourishing morsel");
<rats:rat_fez>.removeTooltip("Definitely not throwing shade at another mod");
<rats:vial_of_sentience>.removeTooltip("A serum that can, §lin theory§r§7, reverse the de-evolution of a Ratlantean.");

///////////////completely hidden upgrades. we can add some of these later
//will never add these ones due to mod incompatibility or just not in spirit of the pack
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_ore_doubling>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_basic_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_advanced_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_elite_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_extreme_energy>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_milker>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_breeder>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_lumberjack>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_disenchanter>);

// maybe add these later with magic mods and/or Twilight Forest progression
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_basic_ratlantean>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_feral_bite>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_ratinator>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_psychic>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_nonbeliever>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_combined>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_combined_creative>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_god>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_archeologist>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_crafting>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_buccaneer>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_aristocrat>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_bucket>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_big_bucket>);
mods.jei.JEI.removeAndHide(<rats:rat_upgrade_miner>);

//more removed items
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
recipes.remove(<rats:rat_upgrade_tnt_survivor>);
recipes.remove(<rats:feathery_wing>);
recipes.remove(<rats:cheese>);
recipes.remove(<rats:rat_burger>);
recipes.remove(<rats:potato_pancake>);
recipes.remove(<rats:rat_upgrade_disenchanter>);
recipes.remove(<rats:rat_upgrade_armor>);
recipes.remove(<rats:rat_upgrade_enchanter>);
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
<entity:rats:ratlantean_spirit>.addPlayerOnlyDrop(<betterwithmods:material:25> %30, 1, 3);

<entity:rats:feral_ratlantean>.removeDrop(<rats:marbled_cheese_rat_head>);
<entity:rats:feral_ratlantean>.removeDrop(<rats:rat_toga>);

//addPlayerOnlyDrop(weightedItem, min, max);
<entity:rats:plague_beast>.addPlayerOnlyDrop(<rats:feral_rat_claw> %25, 1, 2);
<entity:rats:plague_beast>.addPlayerOnlyDrop(<mod_lavacow:pigboarhide> %40, 1, 2);

//Fish's Undead Rising Mob Loot Additions
<entity:mod_lavacow:ithaqua>.addPlayerOnlyDrop(<rats:plague_essence> %50, 1, 3);
<entity:mod_lavacow:ithaqua>.addPlayerOnlyDrop(<mod_lavacow:pigboarhide> %60, 1, 3);
<entity:mod_lavacow:undeadswine>.addPlayerOnlyDrop(<rats:plague_essence> %20, 1, 2);
<entity:mod_lavacow:undeadswine>.addPlayerOnlyDrop(<rats:plague_leech> %20, 1, 2);
<entity:mod_lavacow:zombiepiranha>.addPlayerOnlyDrop(<rats:plague_leech> %40, 1);


mods.jei.JEI.addDescription(<rats:plague_leech>,"A disgusting critter typically found on plagued-infested beasts. Some species are hardy enough to survive in the guts of living creatures.");

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

recipes.addShaped("rats_tnt_expert", <rats:rat_upgrade_tnt_survivor>,[
	[<rats:charged_creeper_chunk>, <betterwithmods:mining_charge>, <rats:charged_creeper_chunk>],
    [<betterwithmods:mining_charge>, <rats:rat_upgrade_tnt>, <betterwithmods:mining_charge>],
    [<rats:charged_creeper_chunk>, <betterwithmods:mining_charge>, <rats:charged_creeper_chunk>]
]);

/* recipes.addShaped("rats_disenchanter_upgrade", <rats:rat_upgrade_disenchanter>,[
	[<bountifulbaubles:disintegrationtablet>, <disenchanter:disenchantmenttable>, <bountifulbaubles:disintegrationtablet>],
    [<dungeontactics:mithril_ingot>, <rats:rat_upgrade_enchanter>, <dungeontactics:mithril_ingot>],
    [<bountifulbaubles:disintegrationtablet>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:disintegrationtablet>]
]); */

recipes.addShaped("rats_armor_upgrade", <rats:rat_upgrade_armor>, [
    [<minecraft:iron_ingot>, <spartanshields:shield_basic_iron>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <rats:rat_upgrade_basic>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>]
]);

recipes.addShaped("rats_enchanter_upgrade",<rats:rat_upgrade_enchanter>,[
    [<minecraft:book>,<minecraft:enchanting_table>,<minecraft:book>],
    [<ore:bookshelf>,<rats:rat_upgrade_basic>,<ore:bookshelf>],
    [<minecraft:book>,<minecraft:experience_bottle>,<minecraft:book>]
]);

// cheese workaround until official fix
val orecheese = <ore:foodCheese>;
orecheese.remove(<rats:cheese>);
recipes.removeByRecipeName("rats:block_of_cheese"); //Compacted in a compacting bin, pirotech_other.zs

<rats:cheese>.displayName = "Cheese Chunk";
<rats:cheese>.addTooltip("For you, it's hardly worth the effort to eat. For a rat, it's a perfect treat!");
recipes.addShapeless("cheeseChunk", <rats:cheese>*4, [<ore:foodCheese>]);

val chWheel = <ore:foodCheeseWheel>;
chWheel.add([<animania:friesian_cheese_wheel>, <animania:holstein_cheese_wheel>, <animania:jersey_cheese_wheel>, <animania:goat_cheese_wheel>, <animania:sheep_cheese_wheel>]);

recipes.addShapeless("cheeseChunks", <rats:cheese>*16, [<ore:foodCheeseWheel>]);

recipes.addShapeless("blocktocheeseChunks", <rats:cheese>*16, [<rats:block_of_cheese>]);

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
<harvestcraft:spidereyepieitem>.displayName = "Eye Pie";
recipes.addShapeless(<harvestcraft:spidereyepieitem>, [<harvestcraft:bakewareitem>.transformReplace(<harvestcraft:bakewareitem>), <ore:foodDough>, <ore:eyeball>, <ore:listAllsugar>, <rats:herb_bundle>]);


//new mob soup
recipes.addShapeless(<harvestcraft:mobsoupitem>, [<harvestcraft:potitem>.transformReplace(<harvestcraft:potitem>), <harvestcraft:stockitem>, <minecraft:spider_eye>, <minecraft:rotten_flesh>, <minecraft:slime_ball>, <ore:listAllsalt>, <rats:herb_bundle>]);

recipes.remove(<rats:assorted_vegetables>);
val oreAssVeg = <ore:foodVegetable>;
oreAssVeg.addItems([<harvestcraft:turnipitem>, <harvestcraft:rhubarbitem>, <harvestcraft:leekitem>, <harvestcraft:gingeritem>, <harvestcraft:onionitem>, <harvestcraft:beetitem>, <harvestcraft:scallionitem>, <harvestcraft:parsnipitem>, <harvestcraft:radishitem>, <harvestcraft:rutabagaitem>, <harvestcraft:sweetpotatoitem> ]);
recipes.addShaped("rats_assorted_vegetables", <rats:assorted_vegetables>, [[<ore:foodVegetable>, <ore:foodVegetable>, <ore:foodVegetable>], [<ore:foodVegetable>, <ore:foodVegetable>, <ore:foodVegetable>], [<ore:foodVegetable>, <ore:foodVegetable>, <ore:foodVegetable>]]);

// herb bundle
recipes.remove(<rats:herb_bundle>);

val oreHerbEnt = <ore:sweetHerb>;
oreHerbEnt.addItems([<biomesoplenty:flower_0>, <biomesoplenty:flower_0:1>, <biomesoplenty:flower_0:3>, <biomesoplenty:flower_0:4>, <biomesoplenty:flower_0:5>, <biomesoplenty:flower_0:6>, <biomesoplenty:flower_0:7>, <biomesoplenty:flower_0:8>, <biomesoplenty:flower_0:9>, <biomesoplenty:flower_0:11>, <biomesoplenty:flower_0:12>, <biomesoplenty:flower_0:13>, <biomesoplenty:flower_0:14>, <biomesoplenty:flower_1>, <biomesoplenty:flower_1:1>, <biomesoplenty:flower_1:2>, <biomesoplenty:flower_1:3>, <biomesoplenty:flower_1:5>, <betteranimalsplus:trillium>, <rustic:chamomile>, <harvestcraft:garlicitem>, <harvestcraft:spiceleafitem>, <harvestcraft:cinnamonitem>]);
oreHerbEnt.addItems([<minecraft:yellow_flower>, <minecraft:red_flower>, <minecraft:red_flower:1>, <minecraft:red_flower:2>, <minecraft:red_flower:3>, <minecraft:red_flower:4>, <minecraft:red_flower:4>, <minecraft:red_flower:5>, <minecraft:red_flower:6>, <minecraft:red_flower:7>, <minecraft:red_flower:8>]);

recipes.addShaped("rats_herb_bundle", <rats:herb_bundle> * 9, [[<ore:sweetHerb>, <ore:sweetHerb>, <ore:sweetHerb>], [<ore:sweetHerb>, <rats:assorted_vegetables>, <ore:sweetHerb>], [<ore:sweetHerb>, <ore:sweetHerb>, <ore:sweetHerb>]]);

recipes.remove(<rats:rat_fez>);
recipes.addShaped("rat_fez", <rats:rat_fez>, [[null, <minecraft:string>, null], [<minecraft:wool:14>, <ore:foodCheese>, <minecraft:wool:14>], [<minecraft:wool:14>, null, <minecraft:wool:14>]]);

// treacle
val MoldOredict = <ore:agedMold>;
MoldOredict.add(<betternether:gray_mold>);
MoldOredict.add(<betternether:red_mold>);

recipes.addShaped("moldyTreacle", <rats:treacle>,[
	[<harvestcraft:maplesyrupitem>, <ore:agedMold>],
    [<ore:agedMold>, <minecraft:glass_bottle>]
]);

recipes.addShapeless(<rats:treacle>, [<harvestcraft:maplesyrupitem>, <minecraft:experience_bottle>]);

/// Brewing
brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}), <minecraft:skull:4>, <minecraft:splash_potion>.withTag({Potion: "potioncore:explode"}));
brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}), <rats:charged_creeper_chunk>, <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_explode"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <minecraft:skull:4>, <minecraft:potion>.withTag({Potion: "potioncore:explode"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <rats:charged_creeper_chunk>, <minecraft:potion>.withTag({Potion: "potioncore:strong_explode"}));

brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}), <minecraft:skull:4>, <minecraft:lingering_potion>.withTag({Potion: "potioncore:explode"}));
brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}), <rats:charged_creeper_chunk>, <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_explode"}));

//chef rat recipes
mods.rats.recipes.addChefRatRecipe(<minecraft:golden_apple:1>, <rats:confit_byaldi>);
mods.rats.recipes.addChefRatRecipe(<minecraft:skull>, <harvestcraft:spaghettidinneritem>);
mods.rats.recipes.addChefRatRecipe(<minecraft:rotten_flesh>, <harvestcraft:zombiejerkyitem>);
mods.rats.recipes.addChefRatRecipe(<minecraft:spider_eye>, <harvestcraft:spidereyesoupitem>);
mods.rats.recipes.addChefRatRecipe(<biomesoplenty:fleshchunk>, <minecraft:rotten_flesh>);
mods.rats.recipes.addChefRatRecipe(<aether_legacy:cooked_enchanted_cockatrice>, <harvestcraft:deluxechickencurryitem>);
mods.rats.recipes.addChefRatRecipe(<quark:root>, <harvestcraft:roastedrootveggiemedleyitem>);
mods.rats.recipes.addChefRatRecipe(<quark:rune:16>, <harvestcraft:epicbaconitem>);
mods.rats.recipes.addChefRatRecipe(<endreborn:dragon_scales>, <harvestcraft:mobsoupitem>);
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
mods.rats.recipes.addChefRatRecipe(<rats:tiny_coin>, <harvestcraft:chocolatesprinklecakeitem>);
mods.rats.recipes.addChefRatRecipe(<nyx:fallen_star>, <harvestcraft:starfruititem>);

//gem cutter rat recipes
mods.rats.recipes.addGemcutterRatRecipe(<contenttweaker:phosphophyllite>,<bountifulbaubles:spectralsilt>);
mods.rats.recipes.addGemcutterRatRecipe(<biomesoplenty:gem>, <netherex:amethyst_crystal>);
mods.rats.recipes.addGemcutterRatRecipe(<netherex:amethyst_crystal>, <biomesoplenty:gem>);
mods.rats.recipes.addGemcutterRatRecipe(<nyx:fallen_star>, <minecraft:glowstone_dust>*2);
mods.rats.recipes.addGemcutterRatRecipe(<minecraft:nether_star>, <nyx:fallen_star>*16);