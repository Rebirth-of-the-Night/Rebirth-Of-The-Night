// This script encompasses all baubles mods, including Baubles, Bountiful Baubles, Behagamon, and Artifacts

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


/////////// Repurposed Behgameon Baubles ////////////

// see msm.zs for amulet of divinity recipe/uses
// removed from loottables in resourcepack
<behgameon:accessory_49>.displayName = "§bAmulet of Divinity";
<behgameon:accessory_49>.addTooltip(format.darkPurple("Fade in Light, return to Glory. Gone blazing, born anew, estrelvir."));


/////////////////////////////////////////////////////




// Remove everlasting food
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_porkchop");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_porkchop");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cooked_porkchop");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_beef");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cooked_beef");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_chicken");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cooked_chicken");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_rotten_flesh");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_spider_eye");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_rabbit");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cooked_rabbit");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_mutton");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cooked_mutton");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_rabbit_stew");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cod");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cooked_cod");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_salmon");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_cooked_salmon");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_clownfish");
mods.ltt.LootTable.removeGlobalItem("artifacts:everlasting_porkchop");
mods.jei.JEI.removeAndHide(<artifacts:everlasting_porkchop>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cooked_porkchop>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_beef>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cooked_beef>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_chicken>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cooked_chicken>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_rotten_flesh>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_spider_eye>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_rabbit>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cooked_rabbit>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_mutton>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cooked_mutton>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_rabbit_stew>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cod>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cooked_cod>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_salmon>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_cooked_salmon>);
mods.jei.JEI.removeAndHide(<artifacts:everlasting_clownfish>);



// Remove baubles
mods.ltt.LootTable.removeGlobalItem("artifacts:tiny_shirt");
mods.jei.JEI.removeAndHide(<artifacts:tiny_shirt>);

mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:trinketankhcharm");
mods.jei.JEI.removeAndHide(<bountifulbaubles:trinketankhcharm>);


mods.jei.JEI.removeAndHide(<bountifulbaubles:flaregun>);
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:flaregun");
mods.jei.JEI.removeAndHide(<bountifulbaubles:flare_red>);
mods.ltt.LootTable.removeGlobalItem("bountifulbaubles:flare_red");

mods.jei.JEI.removeAndHide(<bountifulbaubles:shieldcobalt>);
mods.jei.JEI.removeAndHide(<bountifulbaubles:trinketballoon>);
mods.jei.JEI.removeAndHide(<bountifulbaubles:shieldobsidian>);





// Remove tooltips
<bountifulbaubles:trinketobsidianskull>.removeTooltip("Holding this makes you feel vaguely nervous.");
<bountifulbaubles:trinketmagiclenses>.removeTooltip("Cool guys don't look at explosions.");
<bountifulbaubles:ringoverclocking>.removeTooltip("Everyone knows that blue LEDs make your PC run faster.");
<bountifulbaubles:trinketshulkerheart>.removeTooltip("It's squishy...");
<bountifulbaubles:trinketmixeddragonscale>.removeTooltip("Interesting, the bezoar has fused with the scale and made it appear to be two different colors.");
<bountifulbaubles:trinketluckyhorseshoe>.removeTooltip("Why did the horse need this?");
<bountifulbaubles:trinketbrokenheart>.removeTooltip("How did this happen?");
<bountifulbaubles:amuletsingluttony>.removeTooltip("Eat faster.");
<bountifulbaubles:amuletsinwrath>.removeTooltip("Gives +2 damage.");
<bountifulbaubles:trinketbrokenheart>.removeTooltip("Sleep to regenerate heart containers.");



// Unify name colors of all baubles and some renaming
<minecraft:totem_of_undying>.displayName = "§bTotem of Undying";
<bountifulbaubles:trinketobsidianskull>.displayName = "§bObsidian Skull";
<bountifulbaubles:trinketmagiclenses>.displayName = "§bSunglasses";
<bountifulbaubles:trinketapple>.displayName = "§bForbidden Fruit";
<bountifulbaubles:trinketvitamins>.displayName = "§bVitamins";
<bountifulbaubles:ringoverclocking>.displayName = "§bRing of Overclocking";
<bountifulbaubles:trinketshulkerheart>.displayName = "§bShulker Heart";
<bountifulbaubles:ringfreeaction>.displayName = "§bRing of Free Action";
<bountifulbaubles:trinketbezoar>.displayName = "§bBezoar";
<bountifulbaubles:trinketblackdragonscale>.displayName = "§bBlack Dragon Scale";
<bountifulbaubles:trinketmixeddragonscale>.displayName = "§bMixed Color Dragon Scale";
<bountifulbaubles:amuletsinempty>.displayName = "§bSin Amulet (Empty)";
<bountifulbaubles:amuletsingluttony>.displayName = "§bGluttony Amulet";
<bountifulbaubles:amuletsinpride>.displayName = "§bPride Amulet";
<bountifulbaubles:amuletsinwrath>.displayName = "§bWrath Amulet";
<bountifulbaubles:amuletcross>.displayName = "§bCross Amulet";
<artifacts:flame_pendant>.displayName = "§bFlame Amulet";
<artifacts:shock_pendant>.displayName = "§bShock Amulet";
<artifacts:thorn_pendant>.displayName = "§bThorn Amulet";
<artifacts:panic_necklace>.displayName = "§bPanic Amulet";
<artifacts:ultimate_pendant>.displayName = "§bAmulet of Ultimate Wrath";
<behgameon:accessory_5>.displayName = "§bAmulet";
<behgameon:accessory_6>.displayName = "§bAmulet";
<behgameon:accessory_7>.displayName = "§bAmulet";
<behgameon:accessory_8>.displayName = "§bAmulet";
<bountifulbaubles:trinketbrokenheart>.displayName = "§bBroken Heart";
<cyclicmagic:glove_climb>.displayName = "§bClimbing Gloves";
<mod_lavacow:halo_necklace>.displayName = "§bRadiant Amulet";
<mod_lavacow:dreamcatcher>.displayName = "§bDreamcatcher";
<spartanweaponry:quiver_arrow>.displayName = "§bLight Arrrow Quiver";
<spartanweaponry:quiver_arrow_moderate>.displayName = "§bModerate Arrrow Quiver";
<spartanweaponry:quiver_arrow_heavy>.displayName = "§bHeavy Arrrow Quiver";
<spartanweaponry:quiver_bolt>.displayName = "§bLight Bolt Quiver";
<spartanweaponry:quiver_bolt_moderate>.displayName = "§bModerate Bolt Quiver";
<spartanweaponry:quiver_bolt_heavy>.displayName = "§bHeavy Bolt Quiver";
<toolbelt:belt>.displayName = "§bTool Belt";
<totemexpansion:totem_falling>.displayName = "§bTotem of Ascending";
<totemexpansion:totem_lava>.displayName = "§bTotem of Smouldering";
<totemexpansion:totem_breathing>.displayName = "§bTotem of Breathing";
<totemexpansion:totem_explode>.displayName = "§bTotem of Defusing";
<totemexpansion:totem_repair>.displayName = "§bTotem of Repairing";
<totemexpansion:totem_spelunking>.displayName = "§bTotem of Spelunking";
<totemexpansion:totem_recalling>.displayName = "§bTotem of Recalling";



// Remove loot table for Bountiful Baubles
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

val inertRing = itemUtils.getItemsByRegexRegistryName("behgameon:ring_.*$(?<!53|61)") as IItemStack[];
<ore:inertRing>.addItems(inertRing);

// Potions

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:ingotMythril>, <bountifulbaubles:potionrecall>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <quark:arrow_ender>, <bountifulbaubles:potionwormhole>);
recipes.addShapeless("Wormhole to Return", <bountifulbaubles:potionrecall>,
   	[<bountifulbaubles:potionwormhole>, <contenttweaker:material_part:8>]);

// Rings, amulets, oh my

recipes.remove(<bountifulbaubles:amuletsinempty>);
mods.jei.JEI.removeAndHide(<qualitytools:emerald_amulet>);
mods.jei.JEI.removeAndHide(<qualitytools:emerald_ring>);


RecipeBuilder.get("mage")
  .setShaped([
    [<iceandfire:chain_link>, <iceandfire:chain_link>, <iceandfire:chain_link>],
    [<iceandfire:chain_link>, <contenttweaker:vis_speck>, <iceandfire:chain_link>],
    [<iceandfire:silver_nugget>, <iceandfire:silver_ingot>, <iceandfire:silver_nugget>]])
  .addOutput(<bountifulbaubles:amuletsinempty>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Ender dragon drops cracked scales AND scale fragments. Use fragments to craft into cracked scales. Use cracked scales to craft into the scale bauble.

// Cracked Ender Dragon Scale
recipes.remove(<bountifulbaubles:brokenblackdragonscale>);
recipes.addShapeless("Cracked Scale", <bountifulbaubles:brokenblackdragonscale>,
   	[<endreborn:dragon_scales>, <endreborn:dragon_scales>, <endreborn:dragon_scales>]);

// Balloon

recipes.remove(<artifacts:shiny_red_balloon>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <ore:cloudAny>, <contenttweaker:vis_speck>],
    [<ore:cloudAny>, <minecraft:wool:14>, <ore:cloudAny>],
    [<contenttweaker:vis_speck>, <minecraft:string>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<artifacts:shiny_red_balloon>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//Phytoprostasia amulet

recipes.remove(<defiledlands:phytoprostasia_amulet>);

RecipeBuilder.get("mage")
  .setShaped([
    [null, <contenttweaker:spider_silk>, null],
    [<contenttweaker:spider_silk>, null, <contenttweaker:spider_silk>],
    [<defiledlands:vilespine>, <defiledlands:scuttler_eye>, <defiledlands:vilespine>]])
  .addTool(<contenttweaker:nature_rune>, 1)
  .addTool(<contenttweaker:balance_rune>, 1)
  .addOutput(<defiledlands:phytoprostasia_amulet>)
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Cobalt Shield

recipes.remove(<artifacts:cobalt_shield>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <bountifulbaubles:amuletcross>, <contenttweaker:vis_sliver>],
    [<betterwithmods:material:20>, <spartanshields:shield_basic_iron>, <betterwithmods:material:20>],
    [<contenttweaker:vis_sliver>, <betterwithmods:material:20>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addOutput(<artifacts:cobalt_shield>)
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
   
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
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
   
// Ring of Overclocking

recipes.remove(<bountifulbaubles:ringoverclocking>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:electrified_zanite>, <contenttweaker:vis_shard>],
    [<netherex:coolmar_spider_fang>, <ore:inertRing>, <netherex:frost_rod>],
    [<contenttweaker:vis_shard>, <iceandfire:hippocampus_fin>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(<bountifulbaubles:ringoverclocking>)
  .setMinimumTier(1)
  .setMaximumTier(1)
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
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
   
// Cross Necklace

recipes.remove(<bountifulbaubles:amuletcross>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <ore:inertAmulet>, <contenttweaker:vis_speck>],
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
    [<contenttweaker:vis_speck>, <minecraft:gold_nugget>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<bountifulbaubles:amuletcross>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Lucky Horseshoe

recipes.remove(<artifacts:lucky_horseshoe>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:vis_shard>, <contenttweaker:vis_shard>],
    [<endreborn:item_end_shard>, <contenttweaker:vis_shard>, <endreborn:item_end_shard>],
    [<contenttweaker:material_part:12>, <aether_legacy:enchanted_gravitite>, <contenttweaker:material_part:12>]])
  .addTool(<contenttweaker:aether_rune>, 1)
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<artifacts:lucky_horseshoe>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//remove and hide original BB disint tablet
mods.jei.JEI.removeAndHide(<bountifulbaubles:disintegrationtablet>);

/////// non-baubles (is this legal? I will make it legal.)

recipes.remove(<rats:plague_doctorate>);

mods.betterwithaddons.Infuser.addShaped(<rats:plague_doctorate>,[
[<rats:plague_essence>, null, <rats:contaminated_food>],
[<contenttweaker:plague_rune>.anyDamage().transformDamage(), <wards:enchanted_paper>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage()], 
[<rats:contaminated_food>, null, <rats:plague_essence>]], 8);





