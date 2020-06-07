import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//remove and hide original BB disint tablet
mods.jei.JEI.removeAndHide(<bountifulbaubles:disintegrationtablet>);

//remove all original quark rune recipes
recipes.remove(<quark:rune:*>);

//changes to end rune behavior
recipes.remove(<endreborn:item_end_rune>);
val endrune = <endreborn:item_end_rune>;
endrune.maxStackSize = 1;
endrune.maxDamage = 8;

//make quark runes non stackable
val quarkrune = (<quark:rune:*>);
quarkrune.maxStackSize = 1;


//inert
recipes.addShapeless(<contenttweaker:blank_rune>.withTag({"Quark:RuneColor": 7, ench: [{lvl: 1 as short, id: 57 as short}], RepairCost: 1, "Quark:RuneAttached": 1 as byte}), [<ore:stone>, <dungeontactics:magic_powder>]);
recipes.addShaped(<contenttweaker:magic_orb>.withTag({"Quark:RuneColor": 7, ench: [{lvl: 1 as short, id: 57 as short}], RepairCost: 1, "Quark:RuneAttached": 1 as byte}), [[<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>],[<dungeontactics:magic_powder>, <minecraft:clay_ball>, <dungeontactics:magic_powder>], [<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>]]);


//mundane
recipes.addShaped(<contenttweaker:sol_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<minecraft:yellow_flower>, <contenttweaker:blank_rune>, <minecraft:gold_ingot>], 
[null, null, null]]);

recipes.addShaped(<contenttweaker:luna_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<betterwithaddons:wheatmat:0>, <contenttweaker:blank_rune>, <nyx:fallen_star>], 
[null, null, null]]);

recipes.addShaped(<contenttweaker:water_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<minecraft:water_bucket>|
<minecraft:potion>.withTag({Potion: "minecraft:water"})|
<harvestcraft:freshwateritem>|
<aether_legacy:skyroot_bucket:1>, <contenttweaker:blank_rune>, <minecraft:ice>|
<minecraft:packed_ice>|
<iceandfire:dragon_ice>|
<mod_lavacow:shattered_ice>|
<minecraftfuture:blue_ice>|
<minecraft:snowball>], 
[null, null, null]]);

recipes.addShaped(<contenttweaker:air_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<minecraft:glass_bottle>, <contenttweaker:blank_rune>, <rustic:wind_thistle>|
<minecraft:feather>|
<rustic:cloudsbluff>|
<aether_legacy:aercloud:*>], 
[null, null, null]]);

recipes.addShaped(<contenttweaker:fire_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<minecraft:coal:*>|
<betterwithmods:material:18>|
<betterwithmods:material:37>, <contenttweaker:blank_rune>, <minecraft:flint>|
<betterwithmods:material:26>|
<betterwithmods:material:25>], 
[null, null, null]]);

recipes.addShaped(<contenttweaker:earth_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<ore:dirt>, <contenttweaker:blank_rune>, <ore:cobblestone>], 
[null, null, null]]);

recipes.addShapeless(<contenttweaker:air_orb>, [<contenttweaker:air_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:sol_orb>, [<contenttweaker:sol_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:earth_orb>, [<contenttweaker:earth_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:water_orb>, [<contenttweaker:water_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:fire_orb>, [<contenttweaker:fire_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:luna_orb>, [<contenttweaker:luna_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);

//arcane
recipes.addShaped(<contenttweaker:spectral_shard>, [[<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>],[<bountifulbaubles:spectralsilt>, <minecraft:prismarine_shard>, <bountifulbaubles:spectralsilt>], [<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>]]);

recipes.addShaped(<contenttweaker:balance_rune>, [
[<dungeontactics:magic_powder>, <contenttweaker:air_rune>.anyDamage().transformDamage(), <contenttweaker:sol_rune>.anyDamage().transformDamage()],
[<contenttweaker:water_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], 
[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:earth_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>]]);

recipes.addShaped(<contenttweaker:chaos_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:air_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], 
[null, <minecraft:gunpowder>|<minecraft:fire_charge>|<rats:charged_creeper_chunk>|<betterwithmods:material:29>, null]]);

recipes.addShaped(<contenttweaker:energy_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:water_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], 
[null, <minecraft:redstone>|<betterwithmods:material:26>|<minecraft:sugar>|<dungeontactics:fish_swift>, null]]);

recipes.addShaped(<contenttweaker:disint_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:earth_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], 
[null, <biomesoplenty:ash>|<endreborn:catalyst>|<arcanearchives:radiant_dust>|<endreborn:item_end_essence>, null]]);

recipes.addShaped(<contenttweaker:creation_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], 
[null, <biomesoplenty:mudball>|<minecraft:clay_ball>|<minecraft:snowball>, null]]);

recipes.addShaped(<contenttweaker:death_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], 
[null, <quark:black_ash>|<minecraftfuture:flowerblack>|<iceandfire:witherbone>|<iceandfire:wither_shard>|<netherex:frosted_wither_bone>|<biomesoplenty:flower_0:2>|<minecraft:skull:1>|<iceandfire:cockatrice_skull>|<rustic:deathstalk_mushroom>, null]]);

recipes.addShaped(<contenttweaker:illusion_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:water_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], 
[null, <endreborn:block_phantom>|<twilightforest:twilight_sapling:9>|<twilightforest:carminite>|<primitivemobs:camouflage_dye>|<arcanearchives:raw_quartz>|<minecraft:prismarine_shard>|<iceandfire:shiny_scales>|<twilightforest:twilight_leaves>, null]]);

recipes.addShaped(<contenttweaker:order_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:earth_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], 
[null, <ore:StoneHugeBrick>|<harvestcraft:honeycombitem>|<minecraftfuture:honeycomb>|<minecraft:stonebrick:*>|<undergroundbiomes:fossil_piece:0>|<betteranimalsplus:antler>, null]]);

recipes.addShaped(<contenttweaker:trans_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], 
[null, <dynamictrees:dendropotion:6>|<twilightforest:borer_essence>|<twilightforest:twilight_sapling:6>|<twilightforest:magic_leaves:1>|<twilightforest:magic_log:1>|<iceandfire:pixie_dust>|<mod_lavacow:mimic_claw>|<dynamictrees:dendropotion:5>, null]]);

recipes.addShaped(<contenttweaker:knowledge_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], 
[null, <iceandfire:manuscript>|<villagenames:codex>|<quark:ancient_tome>|<minecraft:experience_bottle>, null]]);

recipes.addShaped(<contenttweaker:poison_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:earth_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:water_rune>.anyDamage().transformDamage()], 
[null, <minecraft:fermented_spider_eye>|<betterwithmods:material:54>|<minecraft:poisonous_potato>|<mowziesmobs:naga_fang>|<aether_legacy:skyroot_bucket:2>, null]]);

recipes.addShaped(<contenttweaker:soul_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:water_rune>.anyDamage().transformDamage()], 
[null, <quark:soul_powder>|<betterwithmods:material:23>|<quark:soul_bead>|<betterwithmods:material:38>, null]]);

recipes.addShaped(<contenttweaker:life_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:water_rune>.anyDamage().transformDamage()], 
[null, <scalinghealth:heartdust>|<contenttweaker:heartofthefallen>|<contenttweaker:heavensheart>|<mod_lavacow:undyingheart>|<mod_lavacow:mootenheart>|<iceandfire:fire_dragon_heart>|<iceandfire:ice_dragon_heart>|<scalinghealth:crystalshard>|<minecraft:speckled_melon>, null]]);

recipes.addShaped(<contenttweaker:nature_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:earth_rune>.anyDamage().transformDamage()], 
[null, <minecraft:tallgrass>|<biomesoplenty:plant_0:11>|<twilightforest:steeleaf_ingot>|<contenttweaker:4leaf_clover>|<ore:flower>|<ore:treeLeaves>|<minecraft:sapling:*>|<biomesoplenty:sapling_1:*>|<biomesoplenty:sapling_0:*>|<biomesoplenty:sapling_2:*>|<minecraft:vine>|<biomesoplenty:willow_vine:0>|<minecraft:waterlily>, null]]);

recipes.addShaped(<contenttweaker:strength_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:earth_rune>.anyDamage().transformDamage()], 
[null, <betterwithmods:material:14>|<endreborn:catalyst>|<twilightforest:steeleaf_ingot>|<betterwithmods:material:14>|<dungeontactics:steel_ingot>|<iceandfire:dragonsteel_fire_ingot>|<iceandfire:dragonsteel_ice_ingot>|<bountifulbaubles:brokenblackdragonscale>|<iceandfire:dragonscales_red>|<iceandfire:dragonscales_green>|<iceandfire:dragonscales_bronze>|<iceandfire:dragonscales_gray>|<iceandfire:dragonscales_blue>|<iceandfire:dragonscales_white>|<iceandfire:dragonscales_sapphire>|<iceandfire:dragonscales_silver>|<iceandfire:shiny_scales>|<dungeontactics:fish_muscle>|<rustic:ironberries>|<simpleores:onyx_gem>, null]]);

recipes.addShaped(<contenttweaker:mind_rune>, [
[null, <dungeontactics:magic_powder>, null],
[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:luna_rune>.anyDamage().transformDamage()], 
[null, <betterwithmods:material:15>|<minecraft:nether_wart>|<betternether:eye_seed>, null]]);

recipes.addShaped(<quark:rune:0>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeWhite>], [null, null, null]]);
recipes.addShaped(<quark:rune:1>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeOrange>], [null, null, null]]);
recipes.addShaped(<quark:rune:2>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeMagenta>], [null, null, null]]);
recipes.addShaped(<quark:rune:3>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLightBlue>], [null, null, null]]);
recipes.addShaped(<quark:rune:4>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeYellow>], [null, null, null]]);
recipes.addShaped(<quark:rune:5>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLime>], [null, null, null]]);
recipes.addShaped(<quark:rune:6>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyePink>], [null, null, null]]);
recipes.addShaped(<quark:rune:7>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeGray>], [null, null, null]]);
recipes.addShaped(<quark:rune:8>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLightGray>], [null, null, null]]);
recipes.addShaped(<quark:rune:9>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeCyan>], [null, null, null]]);
recipes.addShaped(<quark:rune:10>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyePurple>], [null, null, null]]);
recipes.addShaped(<quark:rune:11>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBlue>], [null, null, null]]);
recipes.addShaped(<quark:rune:12>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBrown>], [null, null, null]]);
recipes.addShaped(<quark:rune:13>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeGreen>], [null, null, null]]);
recipes.addShaped(<quark:rune:14>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeRed>], [null, null, null]]);
recipes.addShaped(<quark:rune:15>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBlack>], [null, null, null]]);
recipes.addShaped(<quark:rune:16>, [[<ore:dyeRed>, <ore:dyeBlue>, <ore:dyeLime>],[<ore:dyeYellow>, <contenttweaker:blank_rune>, <ore:dyeLightBlue>], [<ore:dyeMagenta>, <ore:dyeOrange>, <ore:dyeWhite>]]);




recipes.addShapeless(<contenttweaker:disint_orb>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:strength_orb>, [<contenttweaker:strength_rune>.anyDamage().transformDamage(), <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:poison_orb>, [<contenttweaker:poison_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:soul_orb>, [<contenttweaker:soul_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:life_orb>, [<contenttweaker:life_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:nature_orb>, [<contenttweaker:nature_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:death_orb>, [<contenttweaker:death_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:trans_orb>, [<contenttweaker:trans_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:knowledge_orb>, [<contenttweaker:knowledge_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:creation_orb>, [<contenttweaker:creation_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:order_orb>, [<contenttweaker:order_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:mind_orb>, [<contenttweaker:mind_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:energy_orb>, [<contenttweaker:energy_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:balance_orb>, [<contenttweaker:balance_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:illusion_orb>, [<contenttweaker:illusion_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:strength_orb>, [<contenttweaker:strength_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:chaos_orb>, [<contenttweaker:chaos_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);


//mystical
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:draconic_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:strength_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage()], 
[<bountifulbaubles:brokenblackdragonscale>|<iceandfire:dragonscales_red>|<iceandfire:dragonscales_green>|<iceandfire:dragonscales_bronze>|<iceandfire:dragonscales_gray>|<iceandfire:dragonscales_blue>|<iceandfire:dragonscales_white>|<iceandfire:dragonscales_sapphire>|<iceandfire:dragonscales_silver>|<mowziesmobs:naga_fang>|<mod_lavacow:burntovipositor>|<endreborn:dragon_scales>, <iceandfire:dragonbone:*>|<rats:dragon_wing>, <iceandfire:dragonegg_red>|<iceandfire:dragonegg_green>|<iceandfire:dragonegg_bronze>|<iceandfire:dragonegg_gray>|<iceandfire:dragonegg_blue>|<iceandfire:dragonegg_white>|<iceandfire:dragonegg_sapphire>|<iceandfire:dragonegg_silver>]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:aether_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:mind_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:balance_rune>.anyDamage().transformDamage()], 
[<aether_legacy:ambrosium_shard>|<aether_legacy:zanite_gemstone>|<aether_legacy:enchanted_gravitite>, <aether_legacy:purple_flower>|<aether_legacy:white_flower>|<aether_legacy:skyroot_sapling>|<aether_legacy:golden_oak_sapling> ,<aether_legacy:aercloud:*>]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:holding_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:order_rune>.anyDamage().transformDamage()], 
[<endreborn:item_shard_obsidian>|<endreborn:catalyst>|<quark:biotite>|<undergroundbiomes:lignite_coal>, <minecraft:ender_eye>|<endreborn:item_ender_string>|<minecraft:shulker_shell>, <arcanearchives:shaped_quartz>|<biomesoplenty:gem:0>|<arcanearchives:raw_quartz>|<arcanearchives:radiant_dust>]],8);

mods.betterwithaddons.Infuser.addShaped(<endreborn:item_end_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:creation_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:life_rune>.anyDamage().transformDamage()], 
[<endreborn:item_end_essence>|<biomesoplenty:gem:0>|<minecraft:end_stone>|<betterwithmods:material:39>, <endreborn:item_ingot_endorium>|<endreborn:item_end_shard>|<endreborn:item_raw_endorium>, <minecraft:ender_pearl>|<minecraft:ender_eye>]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:nether_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:soul_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:disint_rune>.anyDamage().transformDamage()], 
[<minecraft:ghast_tear>|<minecraft:blaze_powder>|<minecraft:blaze_rod>|<netherex:orange_salamander_hide>|<netherex:black_salamander_hide>|<netherex:ghast_meat_raw>, <minecraft:nether_wart>|<betternether:nether_reed>|<betternether:red_mold>|<betternether:smoker>|<betternether:gray_mold>,<betternether:cincinnasite>|<minecraft:quartz>|<betterwithmods:material:1>|<betterwithmods:material:15>|<betterwithmods:material:35>|<netherex:rime_crystal>]],8);

//for 2.8 when these are available
// <betternether:eye_seed>|<betternether:stalagnate_stem>,<betternether:ink_bush_seed>|<betternether:smoker>|<betternether:wart_seed>|

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:plague_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:death_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:poison_rune>.anyDamage().transformDamage()], 
[<rats:herb_bundle>|<rats:plague_leech>|<rats:plague_stew>, <mod_lavacow:plagued_porkchop>|<mod_lavacow:pigboarhide>|<rats:plague_essence>|<iceandfire:sickly_dragon_meal>|<twilightforest:twilight_sapling:0>|<minecraft:rotten_flesh> ,<minecraft:fermented_spider_eye>|<betterwithmods:material:54>|<minecraft:poisonous_potato>|<mowziesmobs:naga_fang>|<aether_legacy:skyroot_bucket:2>]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:arcane_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:chaos_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:energy_rune>.anyDamage().transformDamage()], 
[<biomesoplenty:sapling_0:3>|<dynamictreesbop:magicseed:0>|<twilightforest:twilight_sapling:4>|<twilightforest:twilight_sapling:5>|<twilightforest:twilight_sapling:6>|<twilightforest:twilight_sapling:7>|<twilightforest:twilight_sapling:8>|<twilightforest:twilight_sapling:9>|<aether_legacy:enchanted_blueberry>|<minecraft:golden_apple:*>, <simpleores:mythril_ingot>|<betterwithmods:material:20>|<twilightforest:fiery_ingot>|<aether_legacy:enchanted_gravitite>, <arcanearchives:radiant_dust>|<contenttweaker:magic_orb>|<biomesoplenty:biome_essence>]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:fae_rune>, [
[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],
[<contenttweaker:nature_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:trans_rune>.anyDamage().transformDamage()], 
[<ore:mushroomAny>, <iceandfire:pixie_dust>|<iceandfire:pixie_wings>|<iceandfire:pixie_house:*>|<iceandfire:jar_pixie:*>, <dungeontactics:magic_powder>|<biomesoplenty:sapling_0:3>|<dynamictreesbop:magicseed:0>|<twilightforest:twilight_sapling:4>|<twilightforest:twilight_sapling:5>|<twilightforest:twilight_sapling:6>|<twilightforest:twilight_sapling:7>|<twilightforest:twilight_sapling:8>|<twilightforest:twilight_sapling:9>]],8);


recipes.addShapeless(<contenttweaker:end_orb>, [<endreborn:item_end_rune>.anyDamage().transformDamage(), <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:arcane_orb>, [<contenttweaker:arcane_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:plague_orb>, [<contenttweaker:plague_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:fae_orb>, [<contenttweaker:fae_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:holding_orb>, [<contenttweaker:holding_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:draconic_orb>, [<contenttweaker:draconic_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:aether_orb>, [<contenttweaker:aether_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:nether_orb>, [<contenttweaker:nether_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
