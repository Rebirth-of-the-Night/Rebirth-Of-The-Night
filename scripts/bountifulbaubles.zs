import crafttweaker.item.IIngredient;

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

// Potions

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <simpleores:mythril_ingot>, <bountifulbaubles:potionrecall>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <quark:arrow_ender>, <bountifulbaubles:potionwormhole>);

// Ender dragon drops cracked scales AND scale fragments. Use fragments to craft into cracked scales. Use cracked scales to craft into the scale bauble.

// Cracked Ender Dragon Scale

recipes.addShapeless("Cracked Scale", <bountifulbaubles:brokenblackdragonscale>,
   	[<endreborn:dragon_scales>, <endreborn:dragon_scales>, <endreborn:dragon_scales>]);

// Balloon

recipes.remove(<bountifulbaubles:trinketballoon>);

recipes.addShaped("Balloon", <bountifulbaubles:trinketballoon>,[
[<dungeontactics:magic_powder>, <contenttweaker:air_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>],
[<rustic:cloudsbluff>, <bountifulbaubles:spectralsilt>, <rustic:cloudsbluff>], 
[null, <minecraft:string>, null]]);
    
// Sin Pendant

recipes.remove(<bountifulbaubles:amuletsinempty>);

recipes.addShaped("Sin Pendant", <bountifulbaubles:amuletsinempty>,[
[null, <minecraft:string>, null],
[<minecraft:string>, <dungeontactics:magic_powder>, <minecraft:string>], 
[null, <iceandfire:silver_ingot>, null]]);

// Wrath Pendant

recipes.remove(<bountifulbaubles:amuletsinwrath>);

//FierceBeastHead oredict 
val oreDictEnt = <ore:fierceBeastHead>;
//oreDictEnt.add(IItemStack... item_items);
oreDictEnt.add([<betteranimalsplus:wolfhead>, <betteranimalsplus:wolfhead_1>, <betteranimalsplus:wolfhead_2>, <betteranimalsplus:wolfhead_3>, <betteranimalsplus:wolfhead_4>, <betteranimalsplus:wolfhead_5>, <betteranimalsplus:wolfhead_6>, <betteranimalsplus:boarhead>, <betteranimalsplus:boarhead_1>, <betteranimalsplus:boarhead_2>, <betteranimalsplus:boarhead_3>, <betteranimalsplus:boarhead_4>, <betteranimalsplus:bearhead>, <betteranimalsplus:bearhead_1>, <betteranimalsplus:bearhead_2>, <betteranimalsplus:bearhead_3>]);


mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:amuletsinwrath>,[
[<toroquest:royal_helmet>,<contenttweaker:soul_rune>.anyDamage().transformDamage(),<mowziesmobs:barako_mask>],
[<bountifulbaubles:spectralsilt>,<bountifulbaubles:amuletsinempty>,<bountifulbaubles:spectralsilt>],
[<ore:fierceBeastHead>,<quark:black_ash>,<ore:fierceBeastHead>]], 16);

// Pride Pendant

recipes.remove(<bountifulbaubles:amuletsinpride>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:amuletsinpride>,[
[<bountifulbaubles:crowngold>, <contenttweaker:life_rune>.anyDamage().transformDamage(), <minecraft:golden_sword>],
[<bountifulbaubles:spectralsilt>, <bountifulbaubles:amuletsinempty>, <bountifulbaubles:spectralsilt>], 
[null, <scalinghealth:crystalshard>, null]], 16);
   
// Gluttony Pendant

recipes.remove(<bountifulbaubles:amuletsingluttony>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:amuletsingluttony>,[
[null, <contenttweaker:strength_rune>.anyDamage().transformDamage(), null],
[<bountifulbaubles:spectralsilt>, <bountifulbaubles:amuletsinempty>, <bountifulbaubles:spectralsilt>], 
[<mod_lavacow:scythe_claw>, <minecraft:golden_apple>, <mod_lavacow:scythe_claw>]], 16);

// Ender Dragon Scale

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketblackdragonscale>,[
[<bountifulbaubles:spectralsilt>, <bountifulbaubles:brokenblackdragonscale>, <simpleores:onyx_gem>],
[<quark:black_ash>, <contenttweaker:nether_rune>.anyDamage().transformDamage(), <quark:black_ash>], 
[<simpleores:onyx_gem>, <bountifulbaubles:brokenblackdragonscale>, <bountifulbaubles:spectralsilt>]], 32);

// Obsidian Skull

recipes.remove(<bountifulbaubles:trinketobsidianskull>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketobsidianskull>,[
[<bountifulbaubles:spectralsilt>, <endreborn:item_shard_obsidian>, <bountifulbaubles:spectralsilt>],
[<endreborn:item_shard_obsidian>, <iceandfire:cyclops_skull>, <endreborn:item_shard_obsidian>], 
[<bountifulbaubles:spectralsilt>, <contenttweaker:nether_orb>, <bountifulbaubles:spectralsilt>]], 16);

// Magic Mirror

recipes.remove(<bountifulbaubles:magicmirror>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:magicmirror>,[
[<biomesoplenty:biome_essence>, <bountifulbaubles:potionrecall>, <biomesoplenty:biome_essence>],
[<iceandfire:silver_ingot>, <contenttweaker:end_orb>.anyDamage().transformDamage(), <iceandfire:silver_ingot>], 
[<bountifulbaubles:spectralsilt>, <iceandfire:silver_ingot>, <bountifulbaubles:spectralsilt>]], 16);

// Cobalt Shield

recipes.remove(<bountifulbaubles:shieldcobalt>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:shieldcobalt>,[
[<bountifulbaubles:spectralsilt>, <iceandfire:silver_ingot>, <bountifulbaubles:spectralsilt>],
[<iceandfire:silver_ingot>, <spartanshields:shield_basic_iron>, <iceandfire:silver_ingot>], 
[<bountifulbaubles:spectralsilt>, <contenttweaker:strength_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>]], 32);
   
//Wormhole Mirror

recipes.remove(<bountifulbaubles:wormholemirror>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:wormholemirror>,[
[null, <endreborn:item_shard_obsidian>, null],
[<endreborn:item_shard_obsidian>, <bountifulbaubles:potionwormhole>, <endreborn:item_shard_obsidian>], 
[<bountifulbaubles:spectralsilt>, <bountifulbaubles:magicmirror>, <bountifulbaubles:spectralsilt>]], 32);
   
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
[null, <simpleores:mythril_ingot>, null],
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

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketbrokenheart>,[
[<scalinghealth:heartcontainer>, <contenttweaker:soul_rune>.anyDamage().transformDamage(), <scalinghealth:heartcontainer>],
[<twilightforest:charm_of_life_2>, <twilightforest:block_storage:4>, <twilightforest:charm_of_life_2>], 
[<scalinghealth:heartcontainer>, <contenttweaker:life_rune>.anyDamage().transformDamage(), <scalinghealth:heartcontainer>]], 64);
   
// Bezoar

recipes.remove(<bountifulbaubles:trinketbezoar>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketbezoar>,[
[<mowziesmobs:naga_fang>, <bountifulbaubles:spectralsilt>, <minecraft:poisonous_potato>],
[<bountifulbaubles:spectralsilt>, <contenttweaker:poison_orb>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>], 
[<betterwithmods:material:54>, <bountifulbaubles:spectralsilt>, <mod_lavacow:poisonstinger>]], 32);
   
// Shulker Heart

recipes.remove(<bountifulbaubles:trinketshulkerheart>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketshulkerheart>,[
[<bountifulbaubles:spectralsilt>, <contenttweaker:air_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>],
[<scalinghealth:crystalshard>, <minecraft:shulker_shell>, <scalinghealth:crystalshard>], 
[<bountifulbaubles:spectralsilt>, <contenttweaker:earth_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>]], 32);
   
// Ring of Overclocking

recipes.remove(<bountifulbaubles:ringoverclocking>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:ringoverclocking>,[
[<bountifulbaubles:spectralsilt>, <netherex:coolmar_spider_fang>, <bountifulbaubles:spectralsilt>],
[<contenttweaker:material_part:8>, <qualitytools:emerald_ring>, <contenttweaker:material_part:8>], 
[<bountifulbaubles:spectralsilt>, <contenttweaker:energy_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>]],32);
   

// Crown

recipes.addShaped("BB_Crown", <bountifulbaubles:crowngold>.withTag({Quality: {}}),[
	[null, null, null],
	[<minecraft:gold_ingot>, <biomesoplenty:gem:1>, <minecraft:gold_ingot>], 
	[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);

// Sunglasses

recipes.remove(<bountifulbaubles:trinketmagiclenses>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketmagiclenses>,[
[<bountifulbaubles:spectralsilt>, <contenttweaker:luna_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>],
[<minecraft:stained_glass_pane:15>, <arcanearchives:matrix_brace>, <minecraft:stained_glass_pane:15>], 
[<bountifulbaubles:spectralsilt>, <contenttweaker:sol_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>]], 32);
   
// Cross Necklace

recipes.remove(<bountifulbaubles:amuletcross>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:amuletcross>,[
[null, <contenttweaker:strength_rune>.anyDamage().transformDamage(), null],
[<contenttweaker:material_part:16>, <qualitytools:emerald_amulet>, <contenttweaker:material_part:16>], 
[<bountifulbaubles:spectralsilt>, <contenttweaker:material_part:16>, <bountifulbaubles:spectralsilt>]], 16);

// Lucky Horseshoe

recipes.remove(<bountifulbaubles:trinketluckyhorseshoe>);

mods.betterwithaddons.Infuser.addShaped(<bountifulbaubles:trinketluckyhorseshoe>,[
[<endreborn:item_end_shard>, null, <endreborn:item_end_shard>],
[<ore:ingotElectrum>, <contenttweaker:aether_rune>.anyDamage().transformDamage(), <ore:ingotElectrum>], 
[<ore:ingotElectrum>, <aether_legacy:enchanted_gravitite>, <ore:ingotElectrum>]], 32);


/////// non-baubles (is this legal? I will make it legal.)

recipes.remove(<rats:plague_doctorate>);

mods.betterwithaddons.Infuser.addShaped(<rats:plague_doctorate>,[
[<rats:plague_essence>, null, <rats:contaminated_food>],
[<contenttweaker:plague_rune>.anyDamage().transformDamage(), <wards:enchanted_paper>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage()], 
[<rats:contaminated_food>, null, <rats:plague_essence>]], 8);





