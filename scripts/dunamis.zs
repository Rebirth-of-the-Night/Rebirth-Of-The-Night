import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemCondition;
import mods.betterwithaddons.Infuser;

// Scepters
#bases

RecipeBuilder.get("mage")
  .setName("scepter_base_mundane")
  .setShaped([
    [<contenttweaker:vis_speck>, <minecraft:dye:4>, <ore:ingotGold>],
    [<contenttweaker:vis_speck>, <ore:mundaneWood>, <minecraft:dye:4>],
    [<ore:ingotGold>, <contenttweaker:vis_speck>, <contenttweaker:vis_speck>]])
  .addOutput(<contenttweaker:scepter_base_mundane>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("scepter_base_arcane")
  .setShaped([
    [<contenttweaker:vis_sliver>, <betternether:cincinnasite>, <ore:ingotGravitite>],
    [<contenttweaker:vis_sliver>, <ore:arcaneWood>, <betternether:cincinnasite>],
    [<ore:ingotGravitite>, <contenttweaker:vis_sliver>, <contenttweaker:vis_sliver>]])
  .addOutput(<contenttweaker:scepter_base_arcane>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("scepter_base_mystical")
  .setShaped([
    [<contenttweaker:vis_shard>, <nyx:meteor_shard>, <simpleores:mythril_ingot>],
    [<contenttweaker:vis_shard>, <ore:mysticalWood>, <nyx:meteor_shard>],
    [<simpleores:mythril_ingot>, <contenttweaker:vis_shard>, <contenttweaker:vis_shard>]])
  .addOutput(<contenttweaker:scepter_base_mystical>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Cloud Staff

# Change durability
<aether_legacy:cloud_staff>.maxDamage = 32;

# Recipe

RecipeBuilder.get("mage")
  .setName("cloud_staff")
  .setShaped([
    [null, <rustic:cloudsbluff>, <contenttweaker:slider_eye>],
    [<contenttweaker:vis_speck>, <contenttweaker:scepter_base_mundane>, <rustic:cloudsbluff>],
    [<contenttweaker:pristine_diamond>, <contenttweaker:vis_speck>, null]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<aether_legacy:cloud_staff:32>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<aether_legacy:cloud_staff>,
[<aether_legacy:cloud_staff>.anyDamage(),<contenttweaker:vis_speck>], 32);

// Evocation Scepter
# Change durability
<arcaneworld:fang_wand>.maxDamage = 64;

# Recipe
recipes.remove(<arcaneworld:fang_wand>);
RecipeBuilder.get("mage")
  .setName("fang_wand")
  .setShaped([
    [null, <endreborn:item_end_essence>, <contenttweaker:voids_call>],
    [<contenttweaker:vis_sliver>, <contenttweaker:scepter_base_arcane>, <endreborn:item_end_essence>],
    [<contenttweaker:voidseen_exorite>, <contenttweaker:vis_sliver>, null]])
  .addTool(<endreborn:item_end_rune>, 1)
  .addTool(<contenttweaker:mind_rune>, 1)
  .addOutput(<arcaneworld:fang_wand:64>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<arcaneworld:fang_wand>,
[<arcaneworld:fang_wand>.anyDamage(),<contenttweaker:vis_sliver>], 64);

// Inert Charm

RecipeBuilder.get("mage")
  .setName("blank_charm")
  .setShaped([
    [<contenttweaker:vis_speck>, <minecraft:clay_ball>, <contenttweaker:vis_speck>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<contenttweaker:vis_speck>, <minecraft:clay_ball>, <contenttweaker:vis_speck>]])
  .addOutput(<contenttweaker:blank_charm>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//Magicked Lens
RecipeBuilder.get("mage")
  .setName("magicked_lens")
  .setShaped([
    [<hitwithaxe:bark:41>, <contenttweaker:pristine_diamond>, <hitwithaxe:bark:41>],
    [<ore:dustElectrum>.firstItem, <betternether:quartz_glass_framed_pane>, <ore:dustElectrum>.firstItem],
    [<hitwithaxe:bark:41>, <contenttweaker:pristine_diamond>, <hitwithaxe:bark:41>]])
  .addTool(<contenttweaker:order_rune>, 1)
  .addTool(<contenttweaker:balance_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<contenttweaker:magicked_lens>)
  .create();

//Unattuned Focus
RecipeBuilder.get("mage")
  .setName("unattuned_focus")
  .setShaped([
    [<biomesoplenty:log_1:5>, <contenttweaker:slider_eye>, <biomesoplenty:log_1:5>],
    [<biomesoplenty:log_1:5>, null, <biomesoplenty:log_1:5>],
    [<biomesoplenty:log_1:5>, <contenttweaker:magicked_lens>, <biomesoplenty:log_1:5>]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:mind_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<contenttweaker:unattuned_focus>)
  .create();

// runes

# inert

RecipeBuilder.get("mage")
  .setName("blank_rune")
  .setShapeless([<contenttweaker:vis_speck>, <ore:rock>])
  .addOutput(<contenttweaker:blank_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# mundane

RecipeBuilder.get("mage")
  .setName("luna_rune")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:luna_quintessence>*4])
  .addOutput(<contenttweaker:luna_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("sol_rune")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:sol_quintessence>*4])
  .addOutput(<contenttweaker:sol_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("water_rune")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:water_quintessence>*4])
  .addOutput(<contenttweaker:water_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("air_rune")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:air_quintessence>*4])
  .addOutput(<contenttweaker:air_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("fire_rune")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:fire_quintessence>*4])
  .addOutput(<contenttweaker:fire_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("earth_rune")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:earth_quintessence>*4])
  .addOutput(<contenttweaker:earth_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# arcane

RecipeBuilder.get("mage")
  .setName("disint_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:disint_quintessence>*6])
  .addOutput(<contenttweaker:disint_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("strength_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:strength_quintessence>*6])
  .addOutput(<contenttweaker:strength_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("poison_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:poison_quintessence>*6])
  .addOutput(<contenttweaker:poison_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("energy_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:energy_quintessence>*6])
  .addOutput(<contenttweaker:energy_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("life_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:life_quintessence>*6])
  .addOutput(<contenttweaker:life_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("soul_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:soul_quintessence>*6])
  .addOutput(<contenttweaker:soul_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("death_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:death_quintessence>*6])
  .addOutput(<contenttweaker:death_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("chaos_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:chaos_quintessence>*6])
  .addOutput(<contenttweaker:chaos_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("knowledge_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:knowledge_quintessence>*6])
  .addOutput(<contenttweaker:knowledge_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("mind_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:mind_quintessence>*6])
  .addOutput(<contenttweaker:mind_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("balance_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:balance_quintessence>*6])
  .addOutput(<contenttweaker:balance_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("creation_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:creation_quintessence>*6])
  .addOutput(<contenttweaker:creation_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("order_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:order_quintessence>*6])
  .addOutput(<contenttweaker:order_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("nature_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:nature_quintessence>*6])
  .addOutput(<contenttweaker:nature_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("illusion_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:illusion_quintessence>*6])
  .addOutput(<contenttweaker:illusion_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("trans_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:trans_quintessence>*6])
  .addOutput(<contenttweaker:trans_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("arcane_rune")
  .setShaped([
    [<contenttweaker:vis_sliver>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:arcane_quintessence>*6])
  .addOutput(<contenttweaker:arcane_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# mystical

RecipeBuilder.get("mage")
  .setName("fae_rune")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:fae_quintessence>*8])
  .addOutput(<contenttweaker:fae_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("holding_rune")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:holding_quintessence>*8])
  .addOutput(<contenttweaker:holding_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("plague_rune")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:plague_quintessence>*8])
  .addOutput(<contenttweaker:plague_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("draconic_rune")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:draconic_quintessence>*8])
  .addOutput(<contenttweaker:draconic_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("aether_rune")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:aether_quintessence>*8])
  .addOutput(<contenttweaker:aether_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("nether_rune")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:nether_quintessence>*8])
  .addOutput(<contenttweaker:nether_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("end_rune")
  .setShaped([
    [<contenttweaker:vis_shard>],
    [<contenttweaker:blank_rune>]])
  .setSecondaryIngredients([<contenttweaker:end_quintessence>*8])
  .addOutput(<endreborn:item_end_rune>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// OreDicts

val mundaneRune = <ore:mundaneRune>;
mundaneRune.add(
    <contenttweaker:air_rune>,
    <contenttweaker:water_rune>,
    <contenttweaker:fire_rune>,
    <contenttweaker:earth_rune>,
    <contenttweaker:luna_rune>,
    <contenttweaker:sol_rune>
);

val arcaneRune = <ore:arcaneRune>;
arcaneRune.add(
    <contenttweaker:balance_rune>,
    <contenttweaker:chaos_rune>,
    <contenttweaker:creation_rune>,
    <contenttweaker:death_rune>,
    <contenttweaker:energy_rune>,
    <contenttweaker:illusion_rune>,
    <contenttweaker:knowledge_rune>,
    <contenttweaker:life_rune>,
    <contenttweaker:mind_rune>,
    <contenttweaker:nature_rune>,
    <contenttweaker:order_rune>,
    <contenttweaker:poison_rune>,
    <contenttweaker:soul_rune>,
    <contenttweaker:strength_rune>,
    <contenttweaker:trans_rune>,
    <contenttweaker:disint_rune>,
    <contenttweaker:arcane_rune>
);

val mysticalRune = <ore:mysticalRune>;
mysticalRune.add(
    <contenttweaker:holding_rune>,
    <contenttweaker:nether_rune>,
    <contenttweaker:plague_rune>,
    <contenttweaker:time_rune>,
    <contenttweaker:aether_rune>,
    <contenttweaker:draconic_rune>,
    <contenttweaker:fae_rune>
);

val mundaneSapling = <ore:mundaneSapling>;
mundaneSapling.add(
    <minecraft:sapling>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>,
    <biomesoplenty:sapling_0>,
    <biomesoplenty:sapling_0:1>,
    <biomesoplenty:sapling_0:2>,
    <biomesoplenty:sapling_0:5>,
    <biomesoplenty:sapling_0:6>,
    <biomesoplenty:sapling_1>,
    <biomesoplenty:sapling_1:1>,
    <biomesoplenty:sapling_1:2>,
    <biomesoplenty:sapling_1:3>,
    <biomesoplenty:sapling_1:5>,
    <biomesoplenty:sapling_1:6>,
    <biomesoplenty:sapling_2>,
    <biomesoplenty:sapling_2:1>,
    <biomesoplenty:sapling_2:2>,
    <biomesoplenty:sapling_2:3>,
    <biomesoplenty:sapling_2:4>,
    <biomesoplenty:sapling_2:5>,
    <biomesoplenty:sapling_2:6>,
    <biomesoplenty:sapling_2:7>,
    <dynamictrees:oakseed>,
    <dynamictrees:spruceseed>,
    <dynamictrees:birchseed>,
    <dynamictrees:jungleseed>,
    <dynamictrees:acaciaseed>,
    <dynamictrees:darkoakseed>,
    <dynamictreesbop:floweringoakseed>,
    <dynamictreesbop:yellowautumnseed>,
    <dynamictreesbop:orangeautumnseed>,
    <dynamictreesbop:oakdyingseed>,
    <dynamictreesbop:mapleseed>,
    <dynamictreesbop:firseed>,
    <dynamictreesbop:whitecherryseed>,
    <dynamictreesbop:pinkcherryseed>,
    <dynamictreesbop:jacarandaseed>,
    <dynamictreesbop:redwoodseed>,
    <dynamictreesbop:willowseed>,
    <dynamictreesbop:pineseed>,
    <dynamictreesbop:palmseed>,
    <dynamictreesbop:mahoganyseed>,
    <dynamictreesbop:mangroveseed>,
    <dynamictreesbop:ebonyseed>,
    <dynamictreesbop:bambooseed>,
    <dynamictreesbop:eucalyptusseed>,
    <dynamictreesphc:papayaseed>,
    <dynamictreesphc:cherryseed>,
    <dynamictreesphc:figseed>,
    <dynamictreesphc:soursopseed>,
    <dynamictreesphc:rambutanseed>,
    <dynamictreesphc:jackfruitseed>,
    <dynamictreesphc:lemonseed>,
    <dynamictreesphc:pearseed>,
    <dynamictreesphc:oliveseed>,
    <dynamictreesphc:spiderwebseed>,
    <dynamictreesphc:pomegranateseed>,
    <dynamictreesphc:cashewseed>,
    <dynamictreesphc:vanillabeanseed>,
    <dynamictreesphc:starfruitseed>,
    <dynamictreesphc:bananaseed>,
    <dynamictreesphc:plumseed>,
    <dynamictreesphc:avocadoseed>,
    <dynamictreesphc:pecanseed>,
    <dynamictreesphc:pistachioseed>,
    <dynamictreesphc:hazelnutseed>,
    <dynamictreesphc:limeseed>,
    <dynamictreesphc:peppercornseed>,
    <dynamictreesphc:almondseed>,
    <dynamictreesphc:gooseberryseed>,
    <dynamictreesphc:peachseed>,
    <dynamictreesphc:chestnutseed>,
    <dynamictreesphc:pawpawseed>,
    <dynamictreesphc:coconutseed>,
    <dynamictreesphc:mangoseed>,
    <dynamictreesphc:apricotseed>,
    <dynamictreesphc:orangeseed>,
    <dynamictreesphc:walnutseed>,
    <dynamictreesphc:lycheeseed>,
    <dynamictreesphc:persimmonseed>,
    <dynamictreesphc:guavaseed>,
    <dynamictreesphc:breadfruitseed>,
    <dynamictreesphc:nutmegseed>,
    <dynamictreesphc:durianseed>,
    <dynamictreesphc:tamarindseed>,
    <dynamictreesphc:passionfruitseed>,
    <dynamictreesphc:cinnamonseed>,
    <dynamictreesphc:mapleseed>,
    <dynamictreesphc:paperbarkseed>,
    <dynamictreesphc:dateseed>,
    <dynamictreesphc:dragonfruitseed>,
    <dynamictreesquark:blossomingseed>,
    <dynamictreesquark:swampoakseed>,
    <dynamictreesttf:sicklytwilightoakseed>,
    <dynamictreesttf:canopyseed>,
    <dynamictreesttf:mangroveseed>,
    <dynamictreesttf:darkwoodseed>,
    <growthcraft_cellar:cork_sapling>,
    <harvestcraft:date_sapling>,
    <harvestcraft:papaya_sapling>,
    <harvestcraft:cherry_sapling>,
    <harvestcraft:fig_sapling>,
    <harvestcraft:soursop_sapling>,
    <harvestcraft:dragonfruit_sapling>,
    <harvestcraft:rambutan_sapling>,
    <harvestcraft:jackfruit_sapling>,
    <harvestcraft:passionfruit_sapling>,
    <harvestcraft:lemon_sapling>,
    <harvestcraft:pear_sapling>,
    <harvestcraft:spiderweb_sapling>,
    <harvestcraft:grapefruit_sapling>,
    <harvestcraft:pomegranate_sapling>,
    <harvestcraft:cashew_sapling>,
    <harvestcraft:vanillabean_sapling>,
    <harvestcraft:starfruit_sapling>,
    <harvestcraft:banana_sapling>,
    <harvestcraft:plum_sapling>,
    <harvestcraft:avocado_sapling>,
    <harvestcraft:pecan_sapling>,
    <harvestcraft:pistachio_sapling>,
    <harvestcraft:hazelnut_sapling>,
    <harvestcraft:lime_sapling>,
    <harvestcraft:peppercorn_sapling>,
    <harvestcraft:almond_sapling>,
    <harvestcraft:gooseberry_sapling>,
    <harvestcraft:peach_sapling>,
    <harvestcraft:chestnut_sapling>,
    <harvestcraft:pawpaw_sapling>,
    <harvestcraft:coconut_sapling>,
    <harvestcraft:mango_sapling>,
    <harvestcraft:apricot_sapling>,
    <harvestcraft:orange_sapling>,
    <harvestcraft:walnut_sapling>,
    <harvestcraft:lychee_sapling>,
    <harvestcraft:persimmon_sapling>,
    <harvestcraft:guava_sapling>,
    <harvestcraft:breadfruit_sapling>,
    <harvestcraft:nutmeg_sapling>,
    <harvestcraft:durian_sapling>,
    <harvestcraft:tamarind_sapling>,
    <harvestcraft:cinnamon_sapling>,
    <harvestcraft:maple_sapling>,
    <harvestcraft:paperbark_sapling>,
    <quark:variant_sapling>,
    <quark:variant_sapling:1>,
    <rustic:sapling_apple>,
    <rustic:oliveseed>,
    <twilightforest:twilight_sapling>,
    <twilightforest:twilight_sapling:1>,
    <twilightforest:twilight_sapling:2>,
    <twilightforest:twilight_sapling:3>,
    <aether_legacy:skyroot_sapling>,
    <dynamictreestheaether:skyrootseed>,
    <defiledlands:tenebra_sapling>,
    <dynamictreesdefiledlands:tenebraseed>
);

val arcaneSapling = <ore:arcaneSapling>;
arcaneSapling.add(
    <dynamictreestheaether:crystalseed>,
    <aether_legacy:golden_oak_sapling>,
    <dynamictreestheaether:goldenoakseed>,
    <rustic:sapling:1>,
    <stygian:endcanopysapling>,
    <biomesoplenty:sapling_1:4>,
    <biomesoplenty:sapling_1:7>,
    <biomesoplenty:sapling_0:7>,
    <biomesoplenty:sapling_0:4>,
    <biomesoplenty:sapling_0:3>,
    <betterwithmods:blood_sapling>,
    <dynamictreesbop:magicseed>,
    <dynamictreesbop:umbranseed>,
    <twilightforest:twilight_sapling:9>,
    <dynamictreesttf:rainbowoakseed>,
    <dynamictreesbop:hellbarkseed>,
    <rustic:ironwoodseed>,
    <dynamictreesbop:umbranseed>,
    <dynamictreesbop:umbranconiferseed>,
    <twilightforest:twilight_sapling:4>,
    <dynamictreesttf:robusttwilightoakseed>
);

val mysticalSapling = <ore:mysticalSapling>;
mysticalSapling.add(
    <twilightforest:twilight_sapling:8>,
    <dynamictreesttf:sortingtreeseed>,
    <dynamictreesttf:minerstreeseed>,
    <twilightforest:twilight_sapling:7>,
    <twilightforest:twilight_sapling:5>,
    <twilightforest:twilight_sapling:6>,
    <dynamictreesttf:treeoftimeseed>,
    <dynamictreesttf:treeoftransformationseed>,
    <betterwithaddons:sapling_luretree>
);

val mundaneScepter = <ore:mundaneScepter>;
mundaneScepter.add(
  <aether_legacy:cloud_staff>,
  <iceandfire:lich_staff>,
  <defiledlands:tears_flame>
);

val arcaneScepter = <ore:arcaneScepter>;
arcaneScepter.add(
  <mod_lavacow:sludge_wand>
);

val mysticalScepter = <ore:mysticalScepter>;
mysticalScepter.add(
  <twilightforest:lifedrain_scepter>
);