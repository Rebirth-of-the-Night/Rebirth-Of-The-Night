import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityDefinition;
import mods.betterwithmods.MiniBlocks;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;
import mods.ltt.LootTable;

recipes.remove(<rats:marbled_cheese_dirt>);
recipes.addShapeless("marbled_cheese_dirt",<rats:marbled_cheese_dirt>,[<rats:marbled_cheese>,<ore:dirt>]);

recipes.remove(<rats:marbled_cheese_grass>);
recipes.addShapeless("marbled_cheese_grass",<rats:marbled_cheese_grass>,[<rats:marbled_cheese>,<ore:grass>]);

// renamed
<rats:black_death_mask>.addTooltip(format.darkPurple("Epic Armor"));
<rats:plague_scythe>.addTooltip(format.gold("Legendary Weapon"));


// tooltips
<rats:tiny_coin>.addTooltip("§7The Giant Rat makes all of the rules.");

<rats:contaminated_food>.removeTooltip("morsel");
<rats:rat_fez>.removeTooltip("shade");
<rats:vial_of_sentience>.removeTooltip("serum");

///////////////completely hidden upgrades. we can add some of these later
//will never add these ones due to mod incompatibility or just not in spirit of the pack
JEI.removeAndHide(<rats:rat_upgrade_ore_doubling>);
JEI.removeAndHide(<rats:rat_upgrade_basic_energy>);
JEI.removeAndHide(<rats:rat_upgrade_advanced_energy>);
JEI.removeAndHide(<rats:rat_upgrade_elite_energy>);
JEI.removeAndHide(<rats:rat_upgrade_extreme_energy>);
JEI.removeAndHide(<rats:rat_upgrade_milker>);
JEI.removeAndHide(<rats:rat_upgrade_breeder>);
JEI.removeAndHide(<rats:rat_upgrade_lumberjack>);
JEI.removeAndHide(<rats:rat_upgrade_disenchanter>);
JEI.removeAndHide(<rats:rat_upgrade_enchanter>);
JEI.removeAndHide(<rats:rat_upgrade_fisherman>);

// maybe add these later with magic mods and/or Twilight Forest progression
JEI.removeAndHide(<rats:rat_upgrade_basic_ratlantean>);
JEI.removeAndHide(<rats:rat_upgrade_feral_bite>);
JEI.removeAndHide(<rats:rat_upgrade_ratinator>);
JEI.removeAndHide(<rats:rat_upgrade_psychic>);
JEI.removeAndHide(<rats:rat_upgrade_nonbeliever>);
JEI.removeAndHide(<rats:rat_upgrade_combined>);
JEI.removeAndHide(<rats:rat_upgrade_combined_creative>);
JEI.removeAndHide(<rats:rat_upgrade_god>);
JEI.removeAndHide(<rats:rat_upgrade_archeologist>);
JEI.removeAndHide(<rats:rat_upgrade_crafting>);
JEI.removeAndHide(<rats:rat_upgrade_buccaneer>);
JEI.removeAndHide(<rats:rat_upgrade_aristocrat>);
JEI.removeAndHide(<rats:rat_upgrade_bucket>);
JEI.removeAndHide(<rats:rat_upgrade_big_bucket>);
JEI.removeAndHide(<rats:rat_upgrade_miner>);

//more removed items
JEI.hide(<rats:rat_cage_decorated>);
JEI.hide(<rats:rat_cage_breeding_lantern>);
JEI.removeAndHide(<rats:gem_of_ratlantis>);
JEI.removeAndHide(<rats:idol_of_ratlantis>);
JEI.removeAndHide(<rats:upgrade_combiner>);
JEI.removeAndHide(<rats:upgrade_separator>);
JEI.removeAndHide(<rats:little_black_squash_balls>);
JEI.removeAndHide(<rats:little_black_worm>);
JEI.removeAndHide(<rats:arcane_technology>);
JEI.removeAndHide(<rats:vial_of_sentience>);
JEI.removeAndHide(<rats:marbled_cheese_golem_core>);
JEI.removeAndHide(<rats:marbled_cheese_rat_head>);
JEI.removeAndHide(<rats:compressed_rat>);
JEI.removeAndHide(<rats:brain_block>);
JEI.removeAndHide(<rats:ratglove_flower>);
JEI.removeAndHide(<rats:chunky_cheese_token>);
JEI.removeAndHide(<rats:token_fragment>);
JEI.removeAndHide(<rats:token_piece>);
JEI.removeAndHide(<rats:auto_curdler>);
JEI.removeAndHide(<rats:rat_crafting_table>);
JEI.removeAndHide(<rats:marbled_cheese_raw>);
JEI.removeAndHide(<rats:ratglove_petals>);
JEI.removeAndHide(<rats:psionic_rat_brain>);
JEI.removeAndHide(<rats:pirat_hat>);
JEI.removeAndHide(<rats:pirat_cutlass>);
JEI.removeAndHide(<rats:rat_nugget>);
JEI.removeAndHide(<rats:rat_nugget_ore>);
JEI.removeAndHide(<rats:ratlantean_flame>);
JEI.removeAndHide(<rats:cheese_cannonball>);
JEI.removeAndHide(<rats:feral_rat_claw>);
JEI.removeAndHide(<rats:centipede>);
JEI.removeAndHide(<rats:garbage_pile>);

JEI.removeAndHide(<rats:rat_burger>); // Dunno what we want to do with it, but removing it from jei since no recipe.

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
recipes.remove(<rats:rat_upgrade_replanter>);
recipes.remove(<rats:rat_upgrade_jury_rigged>);
recipes.removeByRecipeName("rats:rat_upgrade_basic");
recipes.remove(<rats:rat_upgrade_gemcutter>);
recipes.remove(<rats:rat_upgrade_warrior>);
mods.rats.recipes.removeChefRatRecipe(<rats:confit_byaldi>);
mods.rats.recipes.removeChefRatRecipe(<rats:potato_kinishes>);
mods.rats.recipes.removeChefRatRecipe(<rats:string_cheese>);


// loot - b - gone
LootTable.removeGlobalItem("rats:chunky_cheese_token");
LootTable.removeGlobalItem("rats:token_fragment");
LootTable.removeGlobalItem("rats:token_piece");
LootTable.removeGlobalItem("rats:marbled_cheese_rat_head");
LootTable.removeGlobalItem("rats:rat_toga");
LootTable.removeGlobalItem("rats:ratlantean_flame");

// Duplicate discs
JEI.removeAndHide(<rats:music_disc_mice_on_venus>);
JEI.removeAndHide(<rats:music_disc_living_mice>);
LootTable.removeGlobalItem("rats:music_disc_mice_on_venus");
LootTable.removeGlobalItem("rats:music_disc_living_mice");

//Mob Loot Tweaks
<entity:rats:ratlantean_spirit>.removeDrop(<rats:ratlantean_flame>);
<entity:rats:ratlantean_spirit>.removeDrop(<rats:marbled_cheese_rat_head>);

<entity:rats:feral_ratlantean>.removeDrop(<rats:marbled_cheese_rat_head>);
<entity:rats:feral_ratlantean>.removeDrop(<rats:rat_toga>);

// addPlayerOnlyDrop(weightedItem, min, max);


JEI.addDescription(<rats:plague_leech>,"A disgusting critter typically found on plagued-infested beasts. Some species are hardy enough to survive in the guts of living creatures.");

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

recipes.addShaped("rats_armor_upgrade", <rats:rat_upgrade_armor>, [
    [<ore:ingotIron>, <spartanshields:shield_basic_iron>, <ore:ingotIron>],
    [<ore:ingotIron>, <rats:rat_upgrade_basic>, <ore:ingotIron>],
    [<ore:ingotIron>, <minecraft:iron_block>, <ore:ingotIron>]
]);

/*recipes.addShaped("rats_enchanter_upgrade",<rats:rat_upgrade_enchanter>,[
    [<minecraft:book>,<minecraft:enchanting_table>,<minecraft:book>],
    [<ore:bookshelf>,<rats:rat_upgrade_basic>,<ore:bookshelf>],
    [<minecraft:book>,<minecraft:experience_bottle>,<minecraft:book>]
]); */

recipes.addShaped("rats_replanter_upgrade",<rats:rat_upgrade_replanter>,[
    [<ore:listAllseed>,<ore:listAllseed>,<ore:listAllseed>],
    [<ore:listAllseed>,<rats:rat_upgrade_farmer>,<ore:listAllseed>],
    [<ore:listAllseed>,<ore:listAllseed>,<ore:listAllseed>]
]);

recipes.addShaped("rats_juryrigged_upgrade",<rats:rat_upgrade_jury_rigged>,[
    [<simpleores:mythril_block>,<ore:glue>,<contenttweaker:block_electrum>],
    [<rats:rat_upgrade_basic>,<scalinghealth:healingitem>,<rats:rat_upgrade_basic>],
    [<betterwithmods:steel_block:0>,<ore:glue>,<betterwithmods:aesthetic:3>]
]);

recipes.addShaped("rats_basic_upgrade",<rats:rat_upgrade_basic>,[
    [<ore:ingotableGem>,<ore:foodCheese>,<ore:ingotableGem>],
    [<ore:foodCheese>,null,<ore:foodCheese>],
    [<ore:ingotableGem>,<ore:foodCheese>,<ore:ingotableGem>]
]);

recipes.addShaped("rats_gemcutter_upgrade",<rats:rat_upgrade_gemcutter>,[
    [<minecraft:flint>,<minecraft:emerald>,<minecraft:flint>],
    [<ore:ingotableGem>,<rats:rat_upgrade_basic>,<ore:ingotableGem>],
    [<minecraft:flint>,<minecraft:emerald>,<minecraft:flint>]
]);

recipes.addShaped("rats_warrior_upgrade",<rats:rat_upgrade_warrior>,[
    [<biomesoplenty:gem:1>,<minecraft:diamond_sword>,<biomesoplenty:gem:1>],
    [<rats:rat_upgrade_health>,<rats:rat_upgrade_strength>,<rats:rat_upgrade_armor>],
    [<biomesoplenty:gem:1>,<minecraft:diamond_block>,<biomesoplenty:gem:1>]
]);

// Plague Doctorate 

recipes.remove(<rats:plague_doctorate>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<rats:plague_essence>],
    [<wards:enchanted_paper>]])
  .addTool(<contenttweaker:plague_rune>, 1)
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addOutput(<rats:plague_doctorate>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// cheese workaround until official fix
val orecheese = <ore:foodCheese>;
orecheese.remove(<rats:cheese>);
recipes.removeByRecipeName("rats:block_of_cheese"); //Compacted in a compacting bin, pyrotech_other.zs

<rats:cheese>.addTooltip("For you, it's hardly worth the effort to eat. For a rat, it's a perfect treat!");
recipes.addShapeless("cheeseChunk", <rats:cheese>*4, [<ore:foodCheese>]);

val chWheel = <ore:foodCheeseWheel>;
chWheel.add([<animania:friesian_cheese_wheel>, <animania:holstein_cheese_wheel>, <animania:jersey_cheese_wheel>, <animania:goat_cheese_wheel>, <animania:sheep_cheese_wheel>]);

recipes.addShapeless("cheeseChunks", <rats:cheese>*16, [<ore:foodCheeseWheel>]);

recipes.addShapeless("blocktocheeseChunks", <rats:cheese>*16, [<rats:block_of_cheese>]);

// remove archeologist rat recipes
JEI.hideCategory("rats.archeologist_rat");

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
recipes.addShapeless(<harvestcraft:mobsoupitem>, [<harvestcraft:potitem>.transformReplace(<harvestcraft:potitem>), <harvestcraft:stockitem>, <minecraft:spider_eye>, <minecraft:rotten_flesh>, <ore:slimeball>, <ore:listAllsalt>, <rats:herb_bundle>]);

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

// chef rat recipes
mods.rats.recipes.addChefRatRecipe(<minecraft:golden_apple:1>, <rats:confit_byaldi>);
mods.rats.recipes.addChefRatRecipe(<minecraft:skull>, <harvestcraft:spaghettidinneritem>);
mods.rats.recipes.addChefRatRecipe(<minecraft:rotten_flesh>, <harvestcraft:zombiejerkyitem>);
mods.rats.recipes.addChefRatRecipe(<minecraft:spider_eye>, <harvestcraft:spidereyesoupitem>);
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
mods.rats.recipes.addGemcutterRatRecipe(<nyx:fallen_star>, <minecraft:glowstone_dust>*2);
mods.rats.recipes.addGemcutterRatRecipe(<minecraft:nether_star>, <nyx:fallen_star>*16);
