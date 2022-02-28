import crafttweaker.game.IGame;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

// Progression and CoT
<contenttweaker:slayers_tattered_journal>.addTooltip("I've made a copy of this in my book.");
<contenttweaker:scab>.displayName = "Scab";

<multiblockmobs:soul_chassis>.addTooltip("Used for summoning bosses");

// Biomes o Plenty
<biomesoplenty:hive>.displayName = "Giant Hive Block";
<biomesoplenty:hive:1>.displayName = "Giant Honeycomb Block";
<biomesoplenty:hive:2>.displayName = "Giant Infested Honeycomb Block";
<biomesoplenty:hive:3>.displayName = "Giant Filled Honeycomb Block";
<biomesoplenty:bamboo:0>.displayName = "Bamboo Stick";

// Better With Mods
<betterwithmods:axle_generator>.displayName = "Horizontal Windmill";

// Baskets
<basketcase:basket_small_generic>.displayName = "Small Wicker Basket";
<basketcase:basket_medium_generic>.displayName = "Medium Wicker Basket";
<basketcase:basket_large_generic>.displayName = "Large Wicker Basket";

// Guidebook
<solcarrot:food_book>.addTooltip(format.aqua("Guidebook"));
<solcarrot:food_book>.addTooltip("Max health improvement via food information");

<animania:animania_manual>.addTooltip(format.aqua("Guidebook"));
<animania:animania_manual>.addTooltip("All you need to know about keeping livestock.");

<betterwithmods:manual>.removeTooltip("Book of Single");
<betterwithmods:manual>.addTooltip(format.aqua("Guidebook"));
<betterwithmods:manual>.addTooltip("How to construct and operate millstones, saws, windmills, and more.");

<arcanearchives:tome_arcana>.removeTooltip("documentation");
<arcanearchives:tome_arcana>.addTooltip(format.aqua("Guidebook"));
<arcanearchives:tome_arcana>.addTooltip("How to store your items efficiently.");

<rustic:book>.addTooltip(format.aqua("Guidebook"));
<rustic:book>.addTooltip("How to farm, brew elixirs, and decorate your home.");

// removed these, leaving the following for now
// <golems:info_book>.addTooltip(format.aqua("Guidebook"));
// <golems:info_book>.addTooltip("Fantastic golems and how to build them.");

// Minecraft
<minecraft:chest>.displayName = "Varnished Chest";
<minecraft:trapped_chest>.displayName = "Varnished Trapped Chest";
<minecraft:cauldron>.displayName = "Fluid Cauldron";
<minecraft:cookie>.displayName = "Chocolate Chip Cookie";
<minecraft:fish>.displayName = "Raw Cod";
<minecraft:cooked_fish>.displayName = "Cooked Cod";

// Requious Frakto
<requious:dryer>.displayName = "Hell Dryer";

// Twilight Forest
<twilightforest:ironwood_sword>.displayName = "Ironroot Arming Sword";
<twilightforest:ironwood_hoe>.displayName = "§bIronroot Hoe";
<twilightforest:ironwood_raw>.displayName = "Raw Ironroot Material";
<twilightforest:ironwood_ingot>.displayName = "Ironroot Ingot";
<twilightforest:block_storage:0>.displayName = "Block of Ironroot";
<twilightforest:ironwood_helmet>.displayName = "Ironroot Helmet";
<twilightforest:ironwood_chestplate>.displayName = "Ironroot Chestplate";
<twilightforest:ironwood_leggings>.displayName = "Ironroot Leggings";
<twilightforest:ironwood_boots>.displayName = "Ironroot Boots";
<twilightforest:ironwood_shovel>.displayName = "Ironroot Shovel";
<twilightforest:ironwood_pickaxe>.displayName = "Ironroot Pickaxe";
<twilightforest:ironwood_axe>.displayName = "Ironroot Axe";
<twilightforest:steeleaf_sword>.displayName = "Steeleaf Arming Sword";
<twilightforest:knightmetal_sword>.displayName = "Knightly Arming Sword";
<twilightforest:raw_venison>.displayName = "Raw Venison Steak";
<twilightforest:mangrove_door>.displayName = "Twilight Mangrove Door";
<twilightforest:mangrove_planks>.displayName = "Twilight Mangrove Planks";
<twilightforest:twilight_log:2>.displayName = "Twilight Mangrove Wood";
<twilightforest:twilight_leaves:2>.displayName = "Twilight Mangrove Leaves";
<twilightforest:mangrove_stairs>.displayName = "Twilight Mangrove Stairs";
<twilightforest:mangrove_slab:*>.displayName = "Twilight Mangrove Slab";
<twilightforest:mangrove_button>.displayName = "Twilight Mangrove Button";
<twilightforest:mangrove_trapdoor>.displayName = "Twilight Mangrove Trapdoor";
<twilightforest:mangrove_fence>.displayName = "Twilight Mangrove Fence";
<twilightforest:mangrove_gate>.displayName = "Twilight Mangrove Gate";
<twilightforest:mangrove_plate>.displayName = "Twilight Mangrove Pressure Plate";
<twilightforest:stone_twist>.displayName = "Twisted Stone Pillar";
<twilightforest:stone_twist_thin>.displayName = "Thin Twisted Stone Pillar";
<twilightforest:boss_spawner:9>.displayName = "Final Boss Spawner";
<twilightforest:raw_venison>.displayName = "Raw Prime Venison"; 
<twilightforest:cooked_venison>.displayName = "Roast Prime Venison"; 

// Quark
<quark:chain>.addTooltip("Can be used to link minecarts or boats");

// Cyclic
<cyclicmagic:tool_spelunker>.displayName = "Prospecting Set";
<cyclicmagic:horse_upgrade_variant>.displayName = "Variable Haw";
<cyclicmagic:horse_upgrade_jump>.displayName = "Jumpy Haw";
<cyclicmagic:horse_upgrade_speed>.displayName = "Fast Haw";
<cyclicmagic:horse_upgrade_health>.displayName = "Healthy Haw";
<cyclicmagic:horse_upgrade_type>.displayName = "Strange Haw";
//This item can be enabled in a future update as part of a late-game magic recipe.
//<cyclicmagic:corrupted_chorus>.displayName = "Chorus Bead";
<cyclicmagic:card_location>.displayName = "Block Locator";
//Unless this item receives a bugpatch, it routinely does not work and is thus disabled.
//<cyclicmagic:apple_emerald>.displayName = "Merchant's Cure";
<cyclicmagic:apple_lapis>.displayName = "Deadhorse Delight";
<cyclicmagic:tool_prospector>.displayName = "Ore Prospector Rod";
<cyclicmagic:tool_spelunker>.displayName = "Prospecting Set";

// Mowzies Mobs
<mowziesmobs:naga_fang>.displayName = "Skydrake Fang";

// BOP
<biomesoplenty:biome_essence>.displayName = "Light Essence";
<biomesoplenty:biome_block>.displayName = "Light Essence Ore";
<biomesoplenty:flower_0:14>.displayName = "Valley Lily";
<biomesoplenty:double_plant:0>.displayName = "Flax Flower";
<biomesoplenty:mud_brick_block:0>.displayName = "Mud Bricks";
<biomesoplenty:mud_brick_stairs:0>.displayName = "Mud Brick Stairs";
<biomesoplenty:other_slab:0>.displayName = "Mud Brick Slab";

// Spartan Weapony
<spartanweaponry:arrow_explosive>.displayName = "Destructive Arrow";

var potionMap = {
    "Collapse" : "randomthings:collapse",
    "Collapse" : "randomthings:long_collapse",
    "Collapse" : "randomthings:strong_collapse",
    "Stability" : "quark:resilience",
    "Stability" : "quark:long_resilience",
    "Stability" : "quark:strong_resilience",
    "Acid Burn" : "mod_lavacow:corrosive",
    "Filth" : "mod_lavacow:foulodor",
    "Poison Resistance" : "mowziesmobs:poison_resist",
    "Poison Resistance" : "mowziesmobs:long_poison_resist",
    "Freezing" : "netherex:freezing",
    "Frigid Health" : "netherex:frigid_health",
    "Dispersal" : "netherex:dispersal",
    "Sorrow" : "netherex:sorrow",
    "Broken Magic Shielding" : "potioncore:broken_magic_shielding",
    "Broken Magic Shielding" : "potioncore:strong_broken_magic_shielding",
    "Broken Magic Shielding" : "potioncore:long_broken_magic_shielding",
    "Gyration" : "potioncore:spin",
    "Gyration" : "potioncore:strong_spin",
    "Gyration" : "potioncore:long_spin",
    "Royalty" : "toroquest:royalty",
    "Royalty" : "toroquest:long_royalty",
    "Royalty" : "toroquest:strong_royalty",
    "Loyalty" : "toroquest:loyalty",
    "Loyalty" : "toroquest:long_loyalty",
    "Loyalty" : "toroquest:strong_loyalty"
} as string[string];


var arrowMap = {
    "Wooden Arrow of " : <spartanweaponry:arrow_wood_tipped>,
    "Iron Arrow of " : <spartanweaponry:arrow_iron_tipped>,
    "Diamond Arrow of " : <spartanweaponry:arrow_diamond_tipped>,
    "Bolt of " : <spartanweaponry:bolt_tipped>,
    "Diamond Bolt of " : <spartanweaponry:bolt_diamond_tipped>
} as IItemStack[string];

for potion in potionMap{
    for arrow in arrowMap{
        arrowMap[arrow].withTag({"Potion" : potionMap[potion]} as IData).displayName = arrow ~ potion;
    }
}

// Magic items
<bountifulbaubles:amuletsinempty>.addTooltip(format.gray("Inert"));
<artifacts:whoopie_cushion>.addTooltip(format.gray("Inert"));

<artifacts:shiny_red_balloon>.addTooltip(format.darkGreen("Mundane"));
<artifacts:drinking_hat>.addTooltip(format.darkGreen("Mundane"));
<artifacts:obsidian_skull>.addTooltip(format.darkGreen("Mundane"));
<iceandfire:lich_staff>.addTooltip(format.darkGreen("Mundane"));
<aether_legacy:cloud_staff>.addTooltip(format.darkGreen("Mundane"));
<defiledlands:tears_flame>.addTooltip(format.darkGreen("Mundane"));

<bountifulbaubles:amuletsingluttony>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:amuletsinpride>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:amuletsinwrath>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:amuletcross>.addTooltip(format.aqua("Arcane"));
<artifacts:snorkel>.addTooltip(format.aqua("Arcane"));
<artifacts:shock_pendant>.addTooltip(format.aqua("Arcane"));
<artifacts:flame_pendant>.addTooltip(format.aqua("Arcane"));
<artifacts:thorn_pendant>.addTooltip(format.aqua("Arcane"));
<artifacts:bottled_cloud>.addTooltip(format.aqua("Arcane"));
<artifacts:bottled_fart>.addTooltip(format.aqua("Arcane"));
<artifacts:feral_claws>.addTooltip(format.aqua("Arcane"));
<artifacts:power_glove>.addTooltip(format.aqua("Arcane"));
<artifacts:star_cloak>.addTooltip(format.aqua("Arcane"));
<artifacts:pocket_piston>.addTooltip(format.aqua("Arcane"));
<artifacts:panic_necklace>.addTooltip(format.aqua("Arcane"));
<deadmanssatchel:deadmanssatchel>.addTooltip(format.aqua("Arcane"));
<artifacts:magma_stone>.addTooltip(format.aqua("Arcane"));
<randomthings:obsidianskullring>.addTooltip(format.aqua("Arcane"));

<bountifulbaubles:trinketobsidianskull>.addTooltip(format.darkPurple("Mystical"));
<artifacts:cobalt_shield>.addTooltip(format.darkPurple("Mystical"));
<bountifulbaubles:trinketmagiclenses>.addTooltip(format.darkPurple("Mystical"));
<bountifulbaubles:ringoverclocking>.addTooltip(format.darkPurple("Mystical"));
<bountifulbaubles:trinketshulkerheart>.addTooltip(format.darkPurple("Mystical"));
<bountifulbaubles:trinketbezoar>.addTooltip(format.darkPurple("Mystical"));
<bountifulbaubles:trinketblackdragonscale>.addTooltip(format.darkPurple("Mystical"));
<artifacts:lucky_horseshoe>.addTooltip(format.darkPurple("Mystical"));
<bountifulbaubles:trinketbrokenheart>.addTooltip(format.darkPurple("Mystical"));
<artifacts:ultimate_pendant>.addTooltip(format.darkPurple("Mystical"));
<artifacts:fire_gauntlet>.addTooltip(format.darkPurple("Mystical"));
<randomthings:lavacharm>.addTooltip(format.darkPurple("Mystical"));

<bountifulbaubles:trinketapple>.addTooltip(format.gold("Ascended"));
<bountifulbaubles:trinketvitamins>.addTooltip(format.gold("Ascended"));
<bountifulbaubles:ringfreeaction>.addTooltip(format.gold("Ascended"));
<artifacts:night_vision_goggles>.addTooltip(format.gold("Ascended"));

<bountifulbaubles:trinketobsidianskull>.displayName = "§bDraconic Skull";
<randomthings:lavacharm>.displayName = "§bLava Ring";
<randomthings:obsidianskullring>.displayName = "§bObsidian Ring";


// Better Animals Plus
<betteranimalsplus:wolfhead_2>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_3>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_4>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_5>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_6>.addTooltip(format.darkGreen("Rare Trophy"));

// Rare
<dungeontactics:high_striker>.addTooltip(format.darkGreen("Rare Weapon"));
<dungeontactics:wackerjab>.addTooltip(format.darkGreen("Rare Weapon"));
<dungeontactics:taser>.addTooltip(format.darkGreen("Rare Weapon"));
<dungeontactics:claws>.addTooltip(format.darkGreen("Rare Weapon"));
<dungeontactics:pirate_hook>.addTooltip(format.darkGreen("Rare Weapon"));
<dungeontactics:coin_cannon>.addTooltip(format.darkGreen("Rare Weapon"));
<dungeontactics:backfire_cannon>.addTooltip(format.darkGreen("Rare Weapon"));

<simpleores:adamantium_sword>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:saber_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:katana_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:staff_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:spear_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:dagger_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:throwing_knife_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartanshields:shield_basic_diamond>.addTooltip(format.darkGreen("Rare Shield"));

<iceandfire:myrmex_desert_sword_venom>.addTooltip(format.darkGreen("Rare Weapon"));
<iceandfire:myrmex_jungle_sword_venom>.addTooltip(format.darkGreen("Rare Weapon"));
<msmlegacy:vampiric_blade>.addTooltip(format.darkGreen("Rare Weapon"));
<msmlegacy:draconic_blade>.addTooltip(format.darkGreen("Rare Weapon"));
<pyrotech:redstone_sword>.addTooltip(format.darkGreen("Rare Weapon"));

<mod_lavacow:famine>.addTooltip(format.darkGreen("Rare Weapon"));

<simpleores:adamantium_chestplate>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_leggings>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_helmet>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_boots>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_ingot>.addTooltip(format.darkGreen("Rare Material"));

<naturescompass:naturescompass>.displayName = "§aBiome Compass";



// Epic
<nyx:meteor_bow:*>.addTooltip("x1.75 arrow damage");
<nyx:meteor_bow:*>.addTooltip("x1.3 arrow speed");
<nyx:meteor_bow:*>.addTooltip("Slightly slower draw speed");
<nyx:meteor_hammer>.addTooltip(format.darkPurple("Epic Weapon"));
<nyx:scythe>.addTooltip(format.darkPurple("Epic Weapon"));
<nyx:meteor_sword>.addTooltip(format.darkPurple("Epic Weapon"));
<nyx:meteor_bow>.addTooltip(format.darkPurple("Epic Weapon"));

<endreborn:tool_magnifier>.addTooltip(format.darkPurple("Epic Weapon"));

<msmlegacy:aethers_guard>.addTooltip(format.darkPurple("Epic Weapon"));

<simpleores:mythril_bow>.addTooltip(format.darkPurple("Epic Weapon"));
<simpleores:mythril_sword>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:rapier_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:longsword_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:glaive_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:lance_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:mace_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:boomerang_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:javelin_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartanshields:shield_basic_lead>.addTooltip(format.darkPurple("Epic Shield"));


<mod_lavacow:war>.addTooltip(format.darkPurple("Epic Weapon"));
<mod_lavacow:sludge_wand>.addTooltip(format.darkPurple("Epic Weapon"));
<mod_lavacow:bonesword>.addTooltip(format.darkPurple("Epic Weapon"));
<spartanweaponry:crossbow_wood>.addTooltip(format.darkPurple("Epic Weapon"));

<iceandfire:dragonbone_sword>.addTooltip(format.darkPurple("Epic Weapon"));
<mowziesmobs:wrought_axe:*>.displayName = "§5Wrought Axe";
<mowziesmobs:wrought_axe:*>.addTooltip(format.darkPurple("Epic Weapon"));
<mowziesmobs:barako_mask>.displayName = "§5Sol Visage";
<mowziesmobs:barako_mask>.addTooltip(format.darkPurple("Epic Artifact"));
<mowziesmobs:ice_crystal>.displayName = "§5Ice Crystal";
<mowziesmobs:ice_crystal>.addTooltip(format.darkPurple("Epic Weapon"));
<iceandfire:myrmex_desert_staff>.addTooltip(format.darkPurple("Epic Weapon"));
<iceandfire:myrmex_jungle_staff>.addTooltip(format.darkPurple("Epic Weapon"));

// Legendary

<msmlegacy:wither_bane>.addTooltip(format.gold("Legendary Weapon"));
<msmlegacy:wither_bane>.addTooltip("Darkness consumes the fallen.");

<msmlegacy:crystaline_blade>.addTooltip(format.gold("Legendary Weapon"));
<msmlegacy:crystaline_blade>.addTooltip("Light purifies all.");

<simpleores:onyx_sword>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:halberd_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:greatsword_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:warhammer_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:pike_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:battleaxe_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:hammer_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:throwing_axe_onyx>.addTooltip(format.gold("Legendary Weapon"));

<simpleores:onyx_chestplate>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_leggings>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_helmet>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_boots>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_gem>.addTooltip(format.gold("Legendary Material"));
<contenttweaker:phosphophyllite>.addTooltip(format.gold("Legendary Material"));
<contenttweaker:phosphophyllite>.addTooltip("Extremely rare gem. Valuable to the Nether natives.");

<contenttweaker:material_part:12>.displayName = "Aetherial Electrum Ingot";
<contenttweaker:material_part:16>.displayName = "Aetherial Electrum Nugget";
<contenttweaker:material_part:38>.displayName = "Aetherial Electrum Dust";

<dungeontactics:lantern_magic>.addTooltip(format.gold("Legendary Artifact"));

<aether_legacy:notch_hammer>.addTooltip(format.gold("Legendary Weapon"));
<endreborn:ender_sword>.addTooltip(format.gold("Legendary Weapon"));

<iceandfire:dragonsteel_fire_sword>.addTooltip(format.gold("Legendary Weapon"));
<iceandfire:dragonsteel_ice_sword>.addTooltip(format.gold("Legendary Weapon"));
<iceandfire:dragonsteel_fire_chestplate>.addTooltip(format.gold("Legendary Armor"));
<iceandfire:dragonsteel_fire_helmet>.addTooltip(format.gold("Legendary Armor"));
<iceandfire:dragonsteel_fire_leggings>.addTooltip(format.gold("Legendary Armor"));
<iceandfire:dragonsteel_fire_boots>.addTooltip(format.gold("Legendary Armor"));
<iceandfire:dragonsteel_ice_chestplate>.addTooltip(format.gold("Legendary Armor"));
<iceandfire:dragonsteel_ice_helmet>.addTooltip(format.gold("Legendary Armor"));
<iceandfire:dragonsteel_ice_leggings>.addTooltip(format.gold("Legendary Armor"));
<iceandfire:dragonsteel_ice_boots>.addTooltip(format.gold("Legendary Armor"));

<mod_lavacow:piranhalauncher>.addTooltip(format.gold("Legendary Weapon"));


//  Godly

<msmlegacy:dawn_star>.addTooltip(format.red("Godly Weapon"));
<msmlegacy:dawn_star>.addTooltip("I am truth. I am majesty. I am justice.");

<dungeontactics:silver_sword>.addTooltip(format.red("Godly Weapon"));
<dungeontactics:silver_sword>.addTooltip("They will suffer as we have.");

<betterwithaddons:greatbow>.addTooltip(format.red("Godly Weapon"));
<betterwithaddons:greatbow>.addTooltip("The weight of worldly destruction");

<msmlegacy:eye_end_blade>.addTooltip(format.red("Godly Weapon"));

<msmlegacy:glacial_blade>.addTooltip(format.red("Godly Weapon"));


<mowziesmobs:earth_talisman>.displayName = "§cEarth Talisman";
<mowziesmobs:earth_talisman>.addTooltip(format.red("Godly Artifact"));

<msmlegacy:glacial_blade>.addTooltip("Nunon fin Dovahkiin aal kod daar tuz");

<msmlegacy:eye_end_blade>.addTooltip(format.obfuscated("Ender of Worlds"));

<msmlegacy:adminium_ark>.addTooltip(format.darkRed("Forbidden Weapon"));
<msmlegacy:adminium_ark>.addTooltip("Only one with the power to control the world may wield this weapon.");


