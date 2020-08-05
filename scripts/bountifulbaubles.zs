import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketluckyhorseshoe");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:magicmirror");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketobsidianskull");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:shieldobsidian");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:enderdragonscale");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:brokenblackdragonscale");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:ringiron");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:phantomprism");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketshulkerheart");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:amuletsinwrath");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:amuletsinpride");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:amuletsingluttony");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:ringfreeaction");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketmagiclenses");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketbezoar");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:ringoverclocking");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketapple");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketbrokenheart");
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketvitamins");

recipes.remove(<bountifulbaubles:brokenblackdragonscale>);


mods.jei.JEI.removeAndHide(<bountifulbaubles:flaregun>);
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:flaregun");
mods.jei.JEI.removeAndHide(<bountifulbaubles:flare_red>);
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:flare_red");

// Oredicts

val cloudAny = <ore:cloudAny>;
cloudAny.add(
	<aether_legacy:aercloud>,
	<aether_legacy:aercloud:2>,
	<aether_legacy:aercloud:1>,
	<rustic:cloudsbluff>
);

val gemAny = <ore:gemAny>;
gemAny.add(
  <minecraft:diamond>,
  <biomesoplenty:gem:2>,
  <biomesoplenty:gem:0>,
  <minecraft:emerald>,
  <biomesoplenty:gem:6>,
  <aether_legacy:zanite_gemstone>,
  <biomesoplenty:gem:1>
);

// Potions

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:ingotMythril>, <bountifulbaubles:potionrecall>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <quark:arrow_ender>, <bountifulbaubles:potionwormhole>);

// Rings, amulets, oh my

recipes.remove(<bountifulbaubles:amuletsinempty>);
recipes.remove(<qualitytools:emerald_amulet>);
recipes.remove(<qualitytools:emerald_ring>);


RecipeBuilder.get("mage")
  .setShaped([
    [<rustic:chain>, <rustic:chain>, <rustic:chain>],
    [<rustic:chain>, <contenttweaker:vis_speck>, <rustic:chain>],
    [<iceandfire:silver_nugget>, <iceandfire:silver_ingot>, <iceandfire:silver_nugget>]])
  .addOutput(<bountifulbaubles:amuletsinempty>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<rustic:chain_gold>, <rustic:chain_gold>, <rustic:chain_gold>],
    [<rustic:chain_gold>, <contenttweaker:vis_speck>, <rustic:chain_gold>],
    [<minecraft:gold_nugget>, <ore:gemAny>, <minecraft:gold_nugget>]])
  .addOutput(<qualitytools:emerald_amulet>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:gold_nugget>, <ore:gemAny>, <minecraft:gold_nugget>],
    [<minecraft:gold_nugget>, <contenttweaker:vis_speck>, <minecraft:gold_nugget>],
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]])
  .addOutput(<qualitytools:emerald_ring>)
  .create();

// Ender dragon drops cracked scales AND scale fragments. Use fragments to craft into cracked scales. Use cracked scales to craft into the scale bauble.

// Cracked Ender Dragon Scale

recipes.addShapeless("Cracked Scale", <bountifulbaubles:brokenblackdragonscale>,
   	[<endreborn:dragon_scales>, <endreborn:dragon_scales>, <endreborn:dragon_scales>]);

// Balloon

recipes.remove(<bountifulbaubles:trinketballoon>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <ore:cloudAny>, <contenttweaker:vis_speck>],
    [<ore:cloudAny>, <minecraft:wool:14>, <ore:cloudAny>],
    [<contenttweaker:vis_speck>, <minecraft:string>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<bountifulbaubles:trinketballoon>)
  .create();
    
// Wrath Pendant

recipes.remove(<bountifulbaubles:amuletsinwrath>);

//FierceBeastHead oredict 
val oreDictEnt = <ore:fierceBeastHead>;
//oreDictEnt.add(IItemStack... item_items);
oreDictEnt.add([<betteranimalsplus:wolfhead>, <betteranimalsplus:wolfhead_1>, <betteranimalsplus:wolfhead_2>, <betteranimalsplus:wolfhead_3>, <betteranimalsplus:wolfhead_4>, <betteranimalsplus:wolfhead_5>, <betteranimalsplus:wolfhead_6>, <betteranimalsplus:boarhead>, <betteranimalsplus:boarhead_1>, <betteranimalsplus:boarhead_2>, <betteranimalsplus:boarhead_3>, <betteranimalsplus:boarhead_4>, <betteranimalsplus:bearhead>, <betteranimalsplus:bearhead_1>, <betteranimalsplus:bearhead_2>, <betteranimalsplus:bearhead_3>]);


RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <contenttweaker:pristine_diamond>, <contenttweaker:vis_sliver>],
    [<ore:fierceBeastHead>, <bountifulbaubles:amuletsinempty>, <ore:fierceBeastHead>],
    [<contenttweaker:vis_sliver>, <mowziesmobs:barakoa_mask_fury>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addOutput(<bountifulbaubles:amuletsinwrath>)
  .create();

// Pride Pendant

recipes.remove(<bountifulbaubles:amuletsinpride>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <contenttweaker:pristine_diamond>, <contenttweaker:vis_sliver>],
    [<scalinghealth:crystalshard>, <bountifulbaubles:amuletsinempty>, <scalinghealth:crystalshard>],
    [<contenttweaker:vis_sliver>, <toroquest:royal_helmet>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addOutput(<bountifulbaubles:amuletsinpride>)
  .create();
   
// Gluttony Pendant

recipes.remove(<bountifulbaubles:amuletsingluttony>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <contenttweaker:pristine_diamond>, <contenttweaker:vis_sliver>],
    [<betternether:black_apple>, <bountifulbaubles:amuletsinempty>, <aether_legacy:white_apple>],
    [<contenttweaker:vis_sliver>, <minecraft:golden_apple>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(<bountifulbaubles:amuletsingluttony>)
  .create();

// Ender Dragon Scale

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <bountifulbaubles:brokenblackdragonscale>, <contenttweaker:vis_shard>],
    [<futuremc:wither_rose>, <contenttweaker:holy_zanite>, <futuremc:wither_rose>],
    [<contenttweaker:vis_shard>, <bountifulbaubles:brokenblackdragonscale>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:nether_rune>, 1)
  .addTool(<contenttweaker:death_rune>, 1)
  .addOutput(<bountifulbaubles:trinketblackdragonscale>)
  .create();

// Obsidian Skull

recipes.remove(<bountifulbaubles:trinketobsidianskull>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:draconium>, <contenttweaker:vis_shard>],
    [<endreborn:item_shard_obsidian>, <ore:dragonSkull>, <endreborn:item_shard_obsidian>],
    [<contenttweaker:vis_shard>, <endreborn:item_shard_obsidian>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:nether_rune>, 1)
  .addTool(<contenttweaker:draconic_rune>, 1)
  .addOutput(<bountifulbaubles:trinketobsidianskull>)
  .create();

// Magic Mirror

recipes.remove(<bountifulbaubles:magicmirror>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <iceandfire:silver_ingot>, <contenttweaker:vis_shard>],
    [<iceandfire:silver_ingot>, <bountifulbaubles:potionrecall>, <iceandfire:silver_ingot>],
    [<contenttweaker:vis_shard>, <contenttweaker:voidseen_amethyst>, <contenttweaker:vis_shard>]])
  .addTool(<endreborn:item_end_rune>, 1)
  .addOutput(<bountifulbaubles:magicmirror>)
  .create();

// Cobalt Shield

recipes.remove(<bountifulbaubles:shieldcobalt>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <bountifulbaubles:amuletcross>, <contenttweaker:vis_sliver>],
    [<betterwithmods:material:20>, <spartanshields:shield_basic_iron>, <betterwithmods:material:20>],
    [<contenttweaker:vis_sliver>, <betterwithmods:material:20>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addOutput(<bountifulbaubles:shieldcobalt>)
  .create();
   
//Wormhole Mirror

recipes.remove(<bountifulbaubles:wormholemirror>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <endreborn:item_shard_obsidian>, <contenttweaker:vis_shard>],
    [<endreborn:item_shard_obsidian>, <bountifulbaubles:potionwormhole>, <endreborn:item_shard_obsidian>],
    [<contenttweaker:vis_shard>, <bountifulbaubles:magicmirror>, <contenttweaker:vis_shard>]])
  .addTool(<endreborn:item_end_rune>, 1)
  .addTool(<contenttweaker:soul_rune>, 1)
  .addOutput(<bountifulbaubles:wormholemirror>)
  .create();
   
//Ankh Charm

recipes.remove(<bountifulbaubles:trinketankhcharm>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketankhcharm>,[
[<bountifulbaubles:trinketapple>, <bountifulbaubles:trinketmixeddragonscale>, <bountifulbaubles:trinketmagiclenses>],
[<bountifulbaubles:ringfreeaction>, <contenttweaker:spectral_shard>, <bountifulbaubles:trinketvitamins>], 
[<nyx:comet_shard>, <dungeontactics:charm_bleak>, <nyx:comet_shard>]], 64);
   
// Mixed Color Dragon Scale

recipes.remove(<bountifulbaubles:trinketmixeddragonscale>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketmixeddragonscale>,[
[null, <endreborn:dragon_scales>, null],
[<bountifulbaubles:trinketbezoar>, <minecraft:fermented_spider_eye>, <bountifulbaubles:trinketblackdragonscale>], 
[<dungeontactics:charm_toxic>, <contenttweaker:spectral_shard>, <dungeontactics:charm_barren>]], 64);
   
// Ring of Free Action

recipes.remove(<bountifulbaubles:ringfreeaction>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:ringfreeaction>,[
[null, <ore:ingotMythril>, null],
[<minecraft:web>, <bountifulbaubles:ringoverclocking>, <minecraft:web>], 
[<dungeontactics:charm_heavy>, <contenttweaker:spectral_shard>, <bountifulbaubles:trinketshulkerheart>]], 64);
   
// Vitamins

recipes.remove(<bountifulbaubles:trinketvitamins>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketvitamins>,[
[<endreborn:catalyst>, <arcanearchives:radiant_dust>, <endreborn:catalyst>],
[<twilightforest:giant_sword>, <minecraft:glass_bottle>, <twilightforest:giant_pickaxe>], 
[<dungeontactics:charm_emaciated>, <contenttweaker:spectral_shard>, <dungeontactics:charm_sapping>]], 64);
   
// Forbidden Fruit

recipes.remove(<bountifulbaubles:trinketapple>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketapple>,[
[null, <aether_legacy:healing_stone>, null],
[<twilightforest:hydra_chop>, <minecraft:golden_apple:1>, <twilightforest:moonworm_queen>], 
[<dungeontactics:charm_famine>, <contenttweaker:spectral_shard>, <dungeontactics:charm_unintelligible>]], 64);
   
// Broken Heart

recipes.remove(<bountifulbaubles:trinketbrokenheart>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <scalinghealth:heartcontainer>, <contenttweaker:vis_shard>],
    [<scalinghealth:heartcontainer>, <twilightforest:charm_of_life_2>, <scalinghealth:heartcontainer>],
    [<contenttweaker:vis_shard>, <scalinghealth:heartcontainer>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:soul_rune>, 1)
  .addOutput(<bountifulbaubles:trinketbrokenheart>)
  .create();
   
// Bezoar

recipes.remove(<bountifulbaubles:trinketbezoar>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <mod_lavacow:poisonstinger>, <contenttweaker:vis_shard>],
    [<mod_lavacow:poisonspore>, <contenttweaker:poisonetched_emerald>, <minecraft:poisonous_potato>],
    [<contenttweaker:vis_shard>, <mowziesmobs:naga_fang>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:poison_rune>, 1)
  .addTool(<contenttweaker:water_rune>, 1)
  .addOutput(<bountifulbaubles:trinketbezoar>)
  .create();
   
// Shulker Heart

recipes.remove(<bountifulbaubles:trinketshulkerheart>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <scalinghealth:heartcontainer>, <contenttweaker:vis_shard>],
    [<aether_legacy:enchanted_gravitite>, <contenttweaker:voidseen_amethyst>, <minecraft:shulker_shell>],
    [<contenttweaker:vis_shard>, <betterwithmods:anchor>, <contenttweaker:vis_shard>]])
  .addTool(<endreborn:item_end_rune>, 1)
  .addTool(<contenttweaker:earth_rune>, 1)
  .addOutput(<bountifulbaubles:trinketshulkerheart>)
  .create();
   
// Ring of Overclocking

recipes.remove(<bountifulbaubles:ringoverclocking>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:electrified_zanite>, <contenttweaker:vis_shard>],
    [<netherex:coolmar_spider_fang>, <qualitytools:emerald_ring>, <netherex:frost_rod>],
    [<contenttweaker:vis_shard>, <iceandfire:hippocampus_fin>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(<bountifulbaubles:ringoverclocking>)
  .create();
   

// Sunglasses

recipes.remove(<bountifulbaubles:trinketmagiclenses>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <glaretorch:itemglaretorchlarge2>, <contenttweaker:vis_shard>],
    [<nyx:fallen_star>, <doggytalents:sunglasses>, <nyx:fallen_star>],
    [<contenttweaker:vis_shard>, <mowziesmobs:glowing_jelly>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:luna_rune>, 1)
  .addTool(<contenttweaker:sol_rune>, 1)
  .addOutput(<bountifulbaubles:trinketmagiclenses>)
  .create();
   
// Cross Necklace

recipes.remove(<bountifulbaubles:amuletcross>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <qualitytools:emerald_amulet>, <contenttweaker:vis_speck>],
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
    [<contenttweaker:vis_speck>, <minecraft:gold_nugget>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<bountifulbaubles:amuletcross>)
  .create();

// Lucky Horseshoe

recipes.remove(<bountifulbaubles:trinketluckyhorseshoe>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:vis_shard>, <contenttweaker:vis_shard>],
    [<endreborn:item_end_shard>, <contenttweaker:vis_shard>, <endreborn:item_end_shard>],
    [<contenttweaker:material_part:12>, <aether_legacy:enchanted_gravitite>, <contenttweaker:material_part:12>]])
  .addTool(<contenttweaker:aether_rune>, 1)
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<bountifulbaubles:trinketluckyhorseshoe>)
  .create();

//remove and hide original BB disint tablet
mods.jei.JEI.removeAndHide(<bountifulbaubles:disintegrationtablet>);

/////// non-baubles (is this legal? I will make it legal.)

recipes.remove(<rats:plague_doctorate>);

mods.betterwithaddons.Infuser.addShaped(<rats:plague_doctorate>,[
[<rats:plague_essence>, null, <rats:contaminated_food>],
[<contenttweaker:plague_rune>.anyDamage().transformDamage(), <wards:enchanted_paper>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage()], 
[<rats:contaminated_food>, null, <rats:plague_essence>]], 8);





