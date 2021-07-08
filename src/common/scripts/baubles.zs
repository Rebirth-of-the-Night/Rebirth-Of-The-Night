#modloaded betterwithaddons
// This script encompasses all baubles mods, including Baubles, Bountiful Baubles, Behagamon, and Artifacts

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.ltt.LootTable;
import mods.betterwithaddons.Infuser;
import mods.jei.JEI;


/////////// Repurposed Behgameon Baubles ////////////

// see msm.zs for amulet of divinity recipe/uses
// removed from loottables in resourcepack
<behgameon:accessory_49>.displayName = "§bAmulet of Divinity";
<behgameon:accessory_49>.addTooltip(format.darkPurple("Fade in Light, return to Glory. Gone blazing, born anew, estrelvir."));


/////////////////////////////////////////////////////


JEI.removeAndHide(<bountifulbaubles:reforger>);
LootTable.removeGlobalItem("bountifulbaubles:reforger");

// Remove everlasting food
LootTable.removeGlobalItem("artifacts:everlasting_porkchop");
LootTable.removeGlobalItem("artifacts:everlasting_porkchop");
LootTable.removeGlobalItem("artifacts:everlasting_cooked_porkchop");
LootTable.removeGlobalItem("artifacts:everlasting_beef");
LootTable.removeGlobalItem("artifacts:everlasting_cooked_beef");
LootTable.removeGlobalItem("artifacts:everlasting_chicken");
LootTable.removeGlobalItem("artifacts:everlasting_cooked_chicken");
LootTable.removeGlobalItem("artifacts:everlasting_rotten_flesh");
LootTable.removeGlobalItem("artifacts:everlasting_spider_eye");
LootTable.removeGlobalItem("artifacts:everlasting_rabbit");
LootTable.removeGlobalItem("artifacts:everlasting_cooked_rabbit");
LootTable.removeGlobalItem("artifacts:everlasting_mutton");
LootTable.removeGlobalItem("artifacts:everlasting_cooked_mutton");
LootTable.removeGlobalItem("artifacts:everlasting_rabbit_stew");
LootTable.removeGlobalItem("artifacts:everlasting_cod");
LootTable.removeGlobalItem("artifacts:everlasting_cooked_cod");
LootTable.removeGlobalItem("artifacts:everlasting_salmon");
LootTable.removeGlobalItem("artifacts:everlasting_cooked_salmon");
LootTable.removeGlobalItem("artifacts:everlasting_clownfish");
LootTable.removeGlobalItem("artifacts:everlasting_porkchop");
JEI.removeAndHide(<bountifulbaubles:spectralsilt>);
JEI.removeAndHide(<artifacts:everlasting_porkchop>);
JEI.removeAndHide(<artifacts:everlasting_cooked_porkchop>);
JEI.removeAndHide(<artifacts:everlasting_beef>);
JEI.removeAndHide(<artifacts:everlasting_cooked_beef>);
JEI.removeAndHide(<artifacts:everlasting_chicken>);
JEI.removeAndHide(<artifacts:everlasting_cooked_chicken>);
JEI.removeAndHide(<artifacts:everlasting_rotten_flesh>);
JEI.removeAndHide(<artifacts:everlasting_spider_eye>);
JEI.removeAndHide(<artifacts:everlasting_rabbit>);
JEI.removeAndHide(<artifacts:everlasting_cooked_rabbit>);
JEI.removeAndHide(<artifacts:everlasting_mutton>);
JEI.removeAndHide(<artifacts:everlasting_cooked_mutton>);
JEI.removeAndHide(<artifacts:everlasting_rabbit_stew>);
JEI.removeAndHide(<artifacts:everlasting_cod>);
JEI.removeAndHide(<artifacts:everlasting_cooked_cod>);
JEI.removeAndHide(<artifacts:everlasting_salmon>);
JEI.removeAndHide(<artifacts:everlasting_cooked_salmon>);
JEI.removeAndHide(<artifacts:everlasting_clownfish>);

JEI.removeAndHide(<artifacts:ultimate_pendant>);
LootTable.removeGlobalItem("artifacts:ultimate_pendant");

JEI.removeAndHide(<artifacts:flame_pendant>);
LootTable.removeGlobalItem("artifacts:flame_pendant");

JEI.removeAndHide(<artifacts:shock_pendant>);
LootTable.removeGlobalItem("artifacts:shock_pendant");

JEI.removeAndHide(<artifacts:thorn_pendant>);
LootTable.removeGlobalItem("artifacts:thorn_pendant");

JEI.removeAndHide(<artifacts:obsidian_skull>);
LootTable.removeGlobalItem("artifacts:obsidian_skull");

JEI.removeAndHide(<bountifulbaubles:enderdragonscale>);
LootTable.removeGlobalItem("bountifulbaubles:enderdragonscale");

JEI.removeAndHide(<bountifulbaubles:amuletcross>);

JEI.removeAndHide(<bountifulbaubles:ringflywheel>);
JEI.removeAndHide(<bountifulbaubles:ringflywheeladvanced>);
LootTable.removeGlobalItem("bountifulbaubles:ringflywheel");
LootTable.removeGlobalItem("bountifulbaubles:ringflywheeladvanced");

// Remove baubles
LootTable.removeGlobalItem("artifacts:tiny_shirt");
JEI.removeAndHide(<artifacts:tiny_shirt>);

LootTable.removeGlobalItem("bountifulbaubles:trinketankhcharm");
JEI.removeAndHide(<bountifulbaubles:trinketankhcharm>);

JEI.removeAndHide(<bountifulbaubles:flaregun>);
LootTable.removeGlobalItem("bountifulbaubles:flaregun");
JEI.removeAndHide(<bountifulbaubles:flare_red>);
LootTable.removeGlobalItem("bountifulbaubles:flare_red");

JEI.removeAndHide(<bountifulbaubles:shieldcobalt>);
JEI.removeAndHide(<bountifulbaubles:trinketballoon>);
JEI.removeAndHide(<bountifulbaubles:shieldobsidian>);
JEI.removeAndHide(<bountifulbaubles:trinketluckyhorseshoe>);


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
<artifacts:panic_necklace>.displayName = "§bPanic Amulet";
<behgameon:accessory_5>.displayName = "§bAmulet";
<behgameon:accessory_6>.displayName = "§bAmulet";
<behgameon:accessory_7>.displayName = "§bAmulet";
<behgameon:accessory_8>.displayName = "§bAmulet";
<cyclicmagic:glove_climb>.displayName = "§bClimbing Gloves";
<spartanweaponry:quiver_arrow>.displayName = "§bLight Arrrow Quiver";
<spartanweaponry:quiver_arrow_moderate>.displayName = "§bModerate Arrrow Quiver";
<spartanweaponry:quiver_arrow_heavy>.displayName = "§bHeavy Arrrow Quiver";
<spartanweaponry:quiver_bolt>.displayName = "§bLight Bolt Quiver";
<spartanweaponry:quiver_bolt_moderate>.displayName = "§bModerate Bolt Quiver";
<spartanweaponry:quiver_bolt_heavy>.displayName = "§bHeavy Bolt Quiver";

// Remove loot table for Bountiful Baubles
LootTable.removeGlobalItem("bountifulbaubles:trinketluckyhorseshoe");
LootTable.removeGlobalItem("bountifulbaubles:magicmirror");
LootTable.removeGlobalItem("bountifulbaubles:trinketobsidianskull");
LootTable.removeGlobalItem("bountifulbaubles:shieldobsidian");
LootTable.removeGlobalItem("bountifulbaubles:enderdragonscale");
LootTable.removeGlobalItem("bountifulbaubles:brokenblackdragonscale");
LootTable.removeGlobalItem("bountifulbaubles:ringiron");
LootTable.removeGlobalItem("bountifulbaubles:phantomprism");
LootTable.removeGlobalItem("bountifulbaubles:trinketshulkerheart");
LootTable.removeGlobalItem("bountifulbaubles:amuletsinwrath");
LootTable.removeGlobalItem("bountifulbaubles:amuletsinpride");
LootTable.removeGlobalItem("bountifulbaubles:amuletsingluttony");
LootTable.removeGlobalItem("bountifulbaubles:ringfreeaction");
LootTable.removeGlobalItem("bountifulbaubles:trinketmagiclenses");
LootTable.removeGlobalItem("bountifulbaubles:trinketbezoar");
LootTable.removeGlobalItem("bountifulbaubles:ringoverclocking");
LootTable.removeGlobalItem("bountifulbaubles:trinketapple");
LootTable.removeGlobalItem("bountifulbaubles:trinketbrokenheart");
LootTable.removeGlobalItem("bountifulbaubles:trinketvitamins");





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
  <biomesoplenty:gem:1>,
  <rotn_blocks:exorite_crystal>
);

val inertRing = itemUtils.getItemsByRegexRegistryName("behgameon:ring_.*$(?<!53|61)") as IItemStack[];
<ore:inertRing>.addItems(inertRing);

######################################
# An oredict definition for          #
# rare modifiers for the purpose     #
# of the Rarity! advancement         #
######################################
// This section may be expanded upon for other modifier types

# First we define oredicts for all baubles, categorized by slot
val baubleCurio = <ore:baubleCurio>;
baubleCurio.add(
  <minecraft:totem_of_undying>,
  <artifacts:shiny_red_balloon>,
  <artifacts:lucky_horseshoe>,
  <artifacts:cobalt_shield>,
  <behgameon:accessory_33>,
  <behgameon:accessory_34>,
  <behgameon:accessory_35>,
  <behgameon:accessory_36>,
  <behgameon:accessory_37>,
  <behgameon:accessory_38>,
  <behgameon:accessory_39>,
  <behgameon:accessory_40>,
  <behgameon:accessory_41>,
  <behgameon:accessory_42>,
  <behgameon:accessory_43>,
  <behgameon:accessory_44>,
  <behgameon:accessory_45>,
  <behgameon:accessory_46>,
  <behgameon:accessory_47>,
  <behgameon:accessory_48>,
  <behgameon:accessory_55>,
  <behgameon:accessory_56>,
  <totemexpansion:totem_falling>,
  <totemexpansion:totem_lava>,
  <totemexpansion:totem_breathing>,
  <totemexpansion:totem_explode>,
  <totemexpansion:totem_repair>,
  <totemexpansion:totem_spelunking>,
  <totemexpansion:totem_time>,
  <totemexpansion:totem_recalling>
);

val baubleHead = <ore:baubleHead>;
baubleHead.add(
  <artifacts:snorkel>,
  <artifacts:drinking_hat>,
  <artifacts:night_vision_goggles>,
  <bountifulbaubles:trinketmagiclenses>
);

val baubleBelt = <ore:baubleBelt>;
baubleBelt.add(
  <aeble:repulsion_belt>,
  <aeble:luck_belt>,
  <aeble:valkyrie_belt>,
  <artifacts:whoopie_cushion>,
  <artifacts:bottled_cloud>,
  <artifacts:bottled_fart>,
  <behgameon:accessory_1>,
  <behgameon:accessory_2>,
  <behgameon:accessory_3>,
  <behgameon:accessory_9>,
  <behgameon:accessory_10>,
  <behgameon:accessory_11>,
  <behgameon:accessory_12>,
  <behgameon:accessory_13>,
  <behgameon:accessory_14>,
  <behgameon:accessory_15>,
  <behgameon:accessory_16>,
  <behgameon:accessory_17>,
  <behgameon:accessory_18>,
  <behgameon:accessory_19>,
  <behgameon:accessory_20>,
  <toolbelt:belt>
);

val baubleBody = <ore:baubleBody>;
baubleBody.add(
  <arcanearchives:gemsocket>,
  <artifacts:star_cloak>,
  <betteranimalsplus:wolf_cape_classic>,
  <betteranimalsplus:wolf_cape_timber>,
  <betteranimalsplus:wolf_cape_black>,
  <betteranimalsplus:wolf_cape_arctic>,
  <betteranimalsplus:wolf_cape_brown>,
  <betteranimalsplus:wolf_cape_red>,
  <betteranimalsplus:bear_cape_brown>,
  <betteranimalsplus:bear_cape_black>,
  <betteranimalsplus:bear_cape_kermode>,
  <quark:backpack>,
  <spartanweaponry:quiver_arrow>,
  <spartanweaponry:quiver_arrow_moderate>,
  <spartanweaponry:quiver_arrow_heavy>,
  <spartanweaponry:quiver_bolt>,
  <spartanweaponry:quiver_bolt_moderate>,
  <spartanweaponry:quiver_bolt_heavy>
);

val baubleRing = <ore:baubleRing>;
baubleRing.add(
  <aeble:air_ring>,
  <aeble:regeneration_ring>,
  <aeble:bubble_ring>,
  <artifacts:magma_stone>,
  <artifacts:magma_stone>,
  <artifacts:feral_claws>,
  <artifacts:power_glove>,
  <artifacts:mechanical_glove>,
  <artifacts:fire_gauntlet>,
  <artifacts:pocket_piston>,
  <baubles:ring>,
  <behgameon:ring_1>,
  <behgameon:ring_2>,
  <behgameon:ring_3>,
  <behgameon:ring_4>,
  <behgameon:ring_5>,
  <behgameon:ring_6>,
  <behgameon:ring_7>,
  <behgameon:ring_8>,
  <behgameon:ring_9>,
  <behgameon:ring_10>,
  <behgameon:ring_11>,
  <behgameon:ring_12>,
  <behgameon:ring_13>,
  <behgameon:ring_14>,
  <behgameon:ring_15>,
  <behgameon:ring_16>,
  <behgameon:ring_17>,
  <behgameon:ring_18>,
  <behgameon:ring_19>,
  <behgameon:ring_20>,
  <behgameon:ring_21>,
  <behgameon:ring_22>,
  <behgameon:ring_23>,
  <behgameon:ring_24>,
  <behgameon:ring_25>,
  <behgameon:ring_26>,
  <behgameon:ring_27>,
  <behgameon:ring_28>,
  <behgameon:ring_29>,
  <behgameon:ring_30>,
  <behgameon:ring_31>,
  <behgameon:ring_32>,
  <behgameon:ring_33>,
  <behgameon:ring_34>,
  <behgameon:ring_35>,
  <behgameon:ring_36>,
  <behgameon:ring_37>,
  <behgameon:ring_38>,
  <behgameon:ring_39>,
  <behgameon:ring_40>,
  <behgameon:ring_41>,
  <behgameon:ring_42>,
  <behgameon:ring_43>,
  <behgameon:ring_44>,
  <behgameon:ring_45>,
  <behgameon:ring_46>,
  <behgameon:ring_47>,
  <behgameon:ring_48>,
  <behgameon:ring_49>,
  <behgameon:ring_50>,
  <behgameon:ring_51>,
  <behgameon:ring_52>,
  <behgameon:ring_53>,
  <behgameon:ring_54>,
  <behgameon:ring_55>,
  <behgameon:ring_56>,
  <behgameon:ring_57>,
  <behgameon:ring_58>,
  <behgameon:ring_59>,
  <behgameon:ring_60>,
  <behgameon:ring_61>,
  <behgameon:ring_62>,
  <behgameon:ring_63>,
  <behgameon:ring_64>,
  <behgameon:ring_65>,
  <behgameon:ring_66>,
  <behgameon:ring_67>,
  <behgameon:ring_68>,
  <behgameon:ring_69>,
  <behgameon:ring_70>,
  <behgameon:ring_71>,
  <behgameon:ring_72>,
  <behgameon:ring_73>,
  <behgameon:ring_74>,
  <behgameon:ring_75>,
  <behgameon:ring_76>,
  <behgameon:ring_77>,
  <behgameon:ring_78>,
  <behgameon:ring_79>,
  <behgameon:ring_80>,
  <behgameon:ring_81>,
  <behgameon:ring_82>,
  <behgameon:ring_83>,
  <behgameon:ring_84>,
  <behgameon:ring_85>,
  <behgameon:ring_86>,
  <behgameon:ring_87>,
  <behgameon:ring_88>,
  <behgameon:ring_89>,
  <behgameon:ring_90>,
  <behgameon:ring_91>,
  <behgameon:ring_92>,
  <behgameon:ring_93>,
  <behgameon:ring_94>,
  <behgameon:ring_95>,
  <behgameon:ring_96>,
  <behgameon:ring_97>,
  <behgameon:ring_98>,
  <behgameon:ring_99>,
  <behgameon:ring_100>,
  <behgameon:ring_101>,
  <behgameon:ring_102>,
  <behgameon:ring_103>,
  <behgameon:ring_104>,
  <behgameon:ring_105>,
  <behgameon:ring_106>,
  <bountifulbaubles:ringoverclocking>,
  <bountifulbaubles:ringfreeaction>,
  <randomthings:lavacharm>,
  <randomthings:obsidianskullring>,
  <extraalchemy:potion_ring>
);

val baubleAmulet = <ore:baubleAmulet>;
baubleAmulet.add(
  <artifacts:panic_necklace>,
  <behgameon:accessory_4>,
  <behgameon:accessory_5>,
  <behgameon:accessory_6>,
  <behgameon:accessory_7>,
  <behgameon:accessory_8>,
  <behgameon:accessory_21>,
  <behgameon:accessory_22>,
  <behgameon:accessory_23>,
  <behgameon:accessory_24>,
  <behgameon:accessory_25>,
  <behgameon:accessory_26>,
  <behgameon:accessory_27>,
  <behgameon:accessory_28>,
  <behgameon:accessory_29>,
  <behgameon:accessory_30>,
  <behgameon:accessory_31>,
  <behgameon:accessory_32>,
  <behgameon:accessory_49>,
  <behgameon:accessory_50>,
  <behgameon:accessory_51>,
  <behgameon:accessory_52>,
  <behgameon:accessory_53>,
  <behgameon:accessory_54>,
  <bountifulbaubles:amuletsinempty>,
  <bountifulbaubles:amuletsingluttony>,
  <bountifulbaubles:amuletsinpride>,
  <bountifulbaubles:amuletsinwrath>,
  <defiledlands:phytoprostasia_amulet>,
  <mod_lavacow:halo_necklace>
);

val baubleAny = <ore:baubleAny>;
baubleAny.add(
  <bountifulbaubles:trinketobsidianskull>,
  <bountifulbaubles:trinketapple>,
  <bountifulbaubles:trinketvitamins>,
  <bountifulbaubles:trinketshulkerheart>,
  <bountifulbaubles:trinketbezoar>,
  <bountifulbaubles:trinketblackdragonscale>,
  <bountifulbaubles:trinketmixeddragonscale>,
  <bountifulbaubles:shieldankh>,
  <bountifulbaubles:trinketbrokenheart>,
  <cyclicmagic:glove_climb>,
  <mod_lavacow:mootenheart>,
  <mod_lavacow:dreamcatcher>
);

val baubleAll = <ore:baubleAll>;
baubleAll.addAll(
  <ore:baubleCurio>,
  <ore:baubleHead>,
  <ore:baubleBelt>,
  <ore:baubleBody>,
  <ore:baubleRing>,
  <ore:baubleAmulet>,
  <ore:baubleAny>
);

# Second, we define the rare modifiers
/*
val harvestersReap = {
    "name": "Harvester's Reap",
    "color": "dark_purple",
    "weight": 10,
    "attributes": [
      {
        "name": "generic.attackDamage",
        "amount": 0.05,
        "operation": 2
      },
      {
        "name": "generic.reachDistance",
        "amount": 0.5,
        "operation": 0
      },
      {
        "name": "potioncore.digSpeed",
        "amount": 0.05,
        "operation": 2
      }
    ]
  } as IData;
*/
# Third, we oredict the rare modifier baubles
/*
val rareModifier = <ore:rareModifier>;
rareModifier.addAll(
  <ore:baubleAll>.withTag(harvestersReap)
);
*/

// Potions

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:ingotMythril>, <bountifulbaubles:potionrecall>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <quark:arrow_ender>, <bountifulbaubles:potionwormhole>);
recipes.addShapeless("Wormhole to Return", <bountifulbaubles:potionrecall>,
   	[<bountifulbaubles:potionwormhole>, <ore:nuggetMythril>.firstItem]);

// Rings, amulets, oh my

recipes.remove(<bountifulbaubles:amuletsinempty>);


RecipeBuilder.get("mage")
  .setShaped([
    [<iceandfire:chain_link>, <iceandfire:chain_link>, <iceandfire:chain_link>],
    [<iceandfire:chain_link>, <contenttweaker:vis_speck>, <iceandfire:chain_link>],
    [<iceandfire:silver_nugget>, <iceandfire:silver_ingot>, <iceandfire:silver_nugget>]])
  .addOutput(<bountifulbaubles:amuletsinempty>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Panic Amulet

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <contenttweaker:fortified_ruby>, <contenttweaker:vis_sliver>],
    [<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <bountifulbaubles:amuletsinempty>, <minecraft:potion>.withTag({Potion: "minecraft:swiftness"})],
    [<contenttweaker:vis_sliver>, <dungeontactics:charm_heavy>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(<artifacts:panic_necklace>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Flame Amulet

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <contenttweaker:fortified_ruby>, <contenttweaker:vis_sliver>],
    [<minecraft:magma>, <bountifulbaubles:amuletsinempty>, <minecraft:magma>],
    [<contenttweaker:vis_sliver>, <dungeontactics:charm_searing>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addOutput(<artifacts:flame_pendant>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Thorn Amulet

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <contenttweaker:pristine_diamond>, <contenttweaker:vis_sliver>],
    [<minetraps:nails:*>, <bountifulbaubles:amuletsinempty>, <minetraps:nails:*>],
    [<contenttweaker:vis_sliver>, <minetraps:barbed_wire>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:earth_rune>, 1)
  .addTool(<contenttweaker:nature_rune>, 1)
  .addOutput(<artifacts:thorn_pendant>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Ultimate Wrath Amulet

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:pristine_diamond>, <contenttweaker:vis_shard>],
    [<contenttweaker:electrified_zanite>, <bountifulbaubles:amuletsinempty>, <contenttweaker:fireetched_onyx>],
    [<contenttweaker:vis_shard>, <defiledlands:pellet_spiked>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:aether_rune>, 1)
  .addTool(<contenttweaker:nether_rune>, 1)
  .addOutput(<artifacts:ultimate_pendant>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Snorkel

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <cyclicmagic:fluid_pipe>, <contenttweaker:vis_sliver>],
    [<contenttweaker:magicked_lens>, <betterwithmods:material:3>, <contenttweaker:magicked_lens>],
    [<contenttweaker:vis_sliver>, <contenttweaker:waterlogged_sapphire>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:water_rune>, 1)
  .addTool(<contenttweaker:order_rune>, 1)
  .addOutput(<artifacts:snorkel>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Ender dragon drops cracked scales AND scale fragments. Use fragments to craft into cracked scales. Use cracked scales to craft into the scale bauble.

// Cracked Ender Dragon Scale
recipes.remove(<bountifulbaubles:brokenblackdragonscale>);
recipes.addShapeless("Cracked Scale", <bountifulbaubles:brokenblackdragonscale>,
   	[<endreborn:dragon_scales>, <endreborn:dragon_scales>, <endreborn:dragon_scales>]);


// Whoopie Cushion

recipes.addShaped(<artifacts:whoopie_cushion>, 
[[null, <harvestcraft:hardenedleatheritem>, null],
[<harvestcraft:hardenedleatheritem>, <betterwithmods:material:8>, <harvestcraft:hardenedleatheritem>], 
[null, <harvestcraft:hardenedleatheritem>, null]]);


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

// Magma Stone

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <nyx:meteor_shard>, <contenttweaker:vis_sliver>],
    [<nyx:meteor_shard>, <contenttweaker:heart_of_fire>, <nyx:meteor_shard>],
    [<contenttweaker:vis_sliver>, <nyx:meteor_shard>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addOutput(<artifacts:magma_stone>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Fire Gauntlet

recipes.remove(<artifacts:fire_gauntlet>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <artifacts:magma_stone>, <contenttweaker:vis_shard>],
    [<dungeontactics:steel_ingot>, <artifacts:feral_claws>, <dungeontactics:steel_ingot>],
    [<contenttweaker:vis_shard>, <artifacts:power_glove>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:draconic_rune>, 1)
  .addTool(<contenttweaker:nether_rune>, 1)
  .addOutput(<artifacts:fire_gauntlet>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Obsidian Skull (Artifacts)

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <minecraft:skull>, <contenttweaker:vis_speck>],
    [<endreborn:item_shard_obsidian>, <dungeontactics:charm_searing>, <endreborn:item_shard_obsidian>],
    [<contenttweaker:vis_speck>, <contenttweaker:volatile_powder>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addOutput(<artifacts:obsidian_skull>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Obsidian Skull (BB)

recipes.remove(<bountifulbaubles:trinketobsidianskull>);
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:draconium>, <contenttweaker:vis_shard>],
    [<iceandfire:dread_shard>, <ore:dragonSkull>, <iceandfire:dread_shard>],
    [<contenttweaker:vis_shard>, <contenttweaker:fireetched_onyx>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:draconic_rune>, 1)
  .addTool(<contenttweaker:nether_rune>, 1)
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
    [<contenttweaker:vis_shard>, <contenttweaker:voidseen_exorite>, <contenttweaker:vis_shard>]])
  .addTool(<endreborn:item_end_rune>, 1)
  .addOutput(<bountifulbaubles:magicmirror>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Cobalt Shield

recipes.remove(<artifacts:cobalt_shield>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:fortified_ruby>, <contenttweaker:vis_shard>],
    [<betterwithmods:material:20>, <spartanshields:shield_basic_lead>, <betterwithmods:material:20>],
    [<contenttweaker:vis_shard>, <twilightforest:knightmetal_ingot>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:draconic_rune>, 1)
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
    [<ore:ingotGravitite>, <contenttweaker:voidseen_exorite>, <minecraft:shulker_shell>],
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
    [<contenttweaker:magicked_lens>, <nyx:fallen_star>, <contenttweaker:magicked_lens>],
    [<contenttweaker:vis_shard>, <mowziesmobs:glowing_jelly>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:sol_rune>, 1)
  .addTool(<contenttweaker:illusion_rune>, 1)
  .addOutput(<bountifulbaubles:trinketmagiclenses>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
  

// Lucky Horseshoe

recipes.remove(<artifacts:lucky_horseshoe>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:vis_shard>, <contenttweaker:vis_shard>],
    [<endreborn:item_end_shard>, <contenttweaker:vis_shard>, <endreborn:item_end_shard>],
    [<ore:ingotElectrum>.firstItem, <ore:ingotGravitite>, <ore:ingotElectrum>.firstItem]])
  .addTool(<contenttweaker:aether_rune>, 1)
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<artifacts:lucky_horseshoe>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//remove and hide original BB disint tablet
JEI.removeAndHide(<bountifulbaubles:disintegrationtablet>);
