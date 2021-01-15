import crafttweaker.game.IGame;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

// Ambience
<ambience:ocarina>.displayName = "Flute";
<ambience:ocarina>.addTooltip("Specific songs that are played on this flute empowers those playing");
<ambience:ocarina>.removeTooltip("A Ocarina that was left forgoten on this world by a man in green clothes.");

<ambience:horn>.removeTooltip("A very powerful item that causes fear in the hearts of your enemies and encourges your allies in the battle field.");
<ambience:horn>.addTooltip("Causes fear in the hearts of enemies and encourges allies in the battlefield");

// Butterflies
<butterflies:butterfly_case>.displayName = "Butterfly Display Case";

// Progression and CoT
<contenttweaker:spawn_scroll>.displayName = "§6Scroll of New Life";
<contenttweaker:spawn_scroll>.addTooltip("One time use. Right-click to set your spawn point to where you are standing.");

<contenttweaker:shard_of_night>.displayName = "§5Shard of Night";
<contenttweaker:volatile_core>.displayName = "§5Volatile Core";
<contenttweaker:mercurial_ooze>.displayName = "§5Mercurial Ooze";
<contenttweaker:heart_of_fire>.displayName = "§5Heart of Fire";
<contenttweaker:adhesive_shadow>.displayName = "§5Adhesive Shadow";
<minecraft:nether_star>.displayName = "§6Nether Star";

<contenttweaker:dormant_onyx>.displayName = "Dormant Onyx";
<contenttweaker:dormant_ardicite_onyx>.displayName = "Dormant Ardicite Onyx";

<contenttweaker:cooking_kit>.displayName = "Cooking Kit";
<contenttweaker:rocky_dirt>.displayName = "Rocky Dirt";
<contenttweaker:cave_bramble>.displayName = "Cave Bramble";

<contenttweaker:slayers_tattered_journal>.displayName = "Slayer's Tattered Journal";
<contenttweaker:slayers_tattered_journal>.addTooltip("I've made a copy of this journal in my Guidebook. No need to keep this item anymore.");
<multiblockmobs:soul_chassis>.displayName = "Soulfire Chassis";
<multiblockmobs:soul_chassis>.addTooltip("Used for summoning bosses");





// Slimes
<minecraft:slime_ball>.displayName = "Green Slimeball";
<contenttweaker:brain>.displayName = "Brain";
<quark:color_slime:2>.displayName = "Black Slime Block";
<quark:color_slime:3>.displayName = "Purple Slime Block";



// Aether Legacy
<aether_legacy:obsidian_chestplate>.displayName = "Extinguished Flame Chestplate";
<aether_legacy:obsidian_helmet>.displayName = "Extinguished Flame Helmet";
<aether_legacy:obsidian_leggings>.displayName = "Extinguished Flame Leggings";
<aether_legacy:obsidian_boots>.displayName = "Extinguished Flame Boots";

<aether_legacy:cockatrice>.displayName = "Kelenk Meat";
<aether_legacy:burnt_cockatrice>.displayName = "Burnt Kelenk Meat";
<aether_legacy:enchanted_cockatrice>.displayName = "Enchanted Kelenk Meat";
<aether_legacy:cooked_enchanted_cockatrice>.displayName = "Cooked Enchanted Kelenk Meat";
<aether_legacy:skyroot_sword>.displayName = "Skyroot Arming Sword";
<aether_legacy:holystone_sword>.displayName = "Holystone Arming Sword";
<aether_legacy:zanite_sword>.displayName = "Zanite Arming Sword";
<aether_legacy:gravitite_sword>.displayName = "Gravitite Arming Sword";
<aether_legacy:skyroot_slab>.displayName = "Skyroot Slab";
<aether_legacy:carved_slab>.displayName = "Carved Slab";
<aether_legacy:angelic_slab>.displayName = "Angelic Slab";
<aether_legacy:hellfire_slab>.displayName = "Hellfire Slab";
<aether_legacy:holystone_slab>.displayName = "Holystone Slab";
<aether_legacy:mossy_holystone_slab>.displayName = "Mossy Holystone Slab";
<aether_legacy:holystone_brick_slab>.displayName = "Holystone Brick Slab";
<aether_legacy:aerogel_slab>.displayName = "Aerogel Slab";
<aether_legacy:skyroot_slab>.displayName = "Aether Slab";
<aether_legacy:enchanter>.displayName = "Aetherium Capacitor";
game.setLocalization("tile.aether_legacy:enchanter.name","Aetherium Capacitor");

// Advanced Lifting Methods
<advancedliftingmethods:ultimate_ender_elevator>.displayName = "Ender Elevator";

// Atlas
<antiqueatlas:empty_antique_atlas>.displayName = "Empty Atlas";
<antiqueatlas:antique_atlas>.displayName = "Atlas";


// Better with Addons
<betterwithaddons:ancestry_bottle>.displayName = "Bottled Spirits";
<betterwithaddons:lattice:0>.displayName = "Iron Lattice Block";

//Biomes o Plenty
<biomesoplenty:hive>.displayName = "Giant Hive Block";
<biomesoplenty:hive:1>.displayName = "Giant Honeycomb Block";
<biomesoplenty:hive:2>.displayName = "Giant Infested Honeycomb Block";
<biomesoplenty:hive:3>.displayName = "Giant Filled Honeycomb Block";
<biomesoplenty:bamboo:0>.displayName = "Bamboo Stick";

// Guidebook
<solcarrot:food_book>.addTooltip(format.aqua("Guidebook"));
<solcarrot:food_book>.addTooltip("Max health improvement via food information");

<animania:animania_manual>.displayName = "§bAnimania Manual";
<animania:animania_manual>.addTooltip(format.aqua("Guidebook"));
<animania:animania_manual>.addTooltip("All you need to know about keeping livestock.");

<betterwithmods:manual>.displayName = "§bMechanist's Journal";
<betterwithmods:manual>.addTooltip(format.aqua("Guidebook"));
<betterwithmods:manual>.addTooltip("How to construct and operate millstones, saws, windmills, and more.");

<arcanearchives:tome_arcana>.removeTooltip("(Provides documentation for Arcane Archives.)");
<arcanearchives:tome_arcana:*>.displayName = "§bTome of Radiant Arcana";
<arcanearchives:tome_arcana>.addTooltip(format.aqua("Guidebook"));
<arcanearchives:tome_arcana>.addTooltip("How to store your items efficiently.");

<rustic:book>.displayName = "§bAlmanac of the Farmer";
<rustic:book>.addTooltip(format.aqua("Guidebook"));
<rustic:book>.addTooltip("How to farm, brew elixirs, and decorate your home.");

// removed these, leaving the following for now
// <golems:info_book>.displayName = "§bTome of Golemancy";
// <golems:info_book>.addTooltip(format.aqua("Guidebook"));
// <golems:info_book>.addTooltip("Fantastic golems and how to build them.");

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

// Dimstack
<dimstack:portal>.displayName = "Arcane Barrier";
<dimstack:bedrock>.displayName = "Arcane Barrier";

// Better with Mods
<betterwithmods:steel_anvil>.displayName = "Steel Anvil";
game.setLocalization("tile.bwm:steel_anvil.name","Steel Anvil");
<betterwithmods:cooking_pot:1>.displayName = "Cooking Cauldron";
<betterwithmods:aesthetic:0>.displayName = "Stone Chopping Block";
<betterwithmods:aesthetic:1>.displayName = "Bloodied Stone Chopping Block";
<betterwithmods:bark:0>.displayName = "Wood Bark";
<betterwithmods:rope>.displayName = "Hemp Cord";
<betterwithmods:steel_block:0>.displayName = "Block of Soulforged Steel";
<betterwithmods:steel_helmet>.displayName = "Soulforged Steel Helmet";
<betterwithmods:steel_chest>.displayName = "Soulforged Steel Chest";
<betterwithmods:steel_pants>.displayName = "Soulforged Steel Leggings";
<betterwithmods:steel_boots>.displayName = "Soulforged Steel Boots";
<betterwithmods:steel_axe>.displayName = "Soulforged Steel Axe";
<betterwithmods:steel_hoe>.displayName = "Soulforged Steel Hoe";
<betterwithmods:steel_pickaxe>.displayName = "Soulforged Steel Pickaxe";
<betterwithmods:steel_shovel>.displayName = "Soulforged Steel Shovel";
<betterwithmods:steel_mattock>.displayName = "Soulforged Steel Mattock";
<betterwithmods:steel_hacksaw>.displayName = "Soulforged Steel Hacksaw";

// Quark
<quark:iron_ladder>.displayName = "Tin Ladder";
<quark:bark:0>.displayName = "Oak Bark Block";
<quark:bark:1>.displayName = "Spruce Bark Block";
<quark:bark:2>.displayName = "Birch Bark Block";
<quark:bark:3>.displayName = "Jungle Bark Block";
<quark:bark:4>.displayName = "Acacia Bark Block";
<quark:bark:5>.displayName = "Dark Oak Bark Block";
<quark:chain>.displayName = "Small Chain";
<quark:chain>.addTooltip("Can be used to link minecarts or boats");
<quark:stone_andesite_stairs>.displayName = "Gray Andesite Stairs";
<quark:stone_andesite_slab:*>.displayName = "Gray Andesite Slab";
<quark:world_stone_bricks:2>.displayName = "Gray Andesite Bricks";
<quark:world_stone_carved:2>.displayName = "Chiseled Gray Andesite Bricks";
<quark:stone_andesite_bricks_stairs>.displayName = "Gray Andesite Brick Stairs";
<quark:stone_andesite_bricks_slab:*>.displayName = "Gray Andesite Brick Slab";
<quark:world_stone_pavement:2>.displayName = "Gray Andesite Pavement";
<quark:stone_andesite_bricks_wall>.displayName = "Gray Andesite Brick Wall";
<quark:andesite_speleothem>.displayName = "Gray Andesite Speleothem";
<quark:end_bricks_slab:*>.displayName = "End Stone Brick Slab";
<quark:iron_rod>.displayName = "Soulforged Steel Rod";
<quark:redstone_randomizer>.displayName = "Simple Randomizer";

// Ice And Fire: Dragons in a Whole New Light
<iceandfire:chain>.displayName = "Refined Chain";
<iceandfire:ash>.displayName = "Fiery Ash";
<iceandfire:podium:0>.displayName = "Wooden Podium";
<iceandfire:stymphalian_bird_dagger>.displayName = "Stymphalian Knife";

// End Reborn
<endreborn:catalyst>.displayName = "§fObsidian Dust";
<endreborn:food_ender_flesh>.displayName = "Ender Flesh";
<endreborn:item_end_essence>.displayName = "§5End Essence";
<endreborn:block_essence_ore>.displayName = "§5End Essence Ore";
<endreborn:item_end_rune>.displayName = "Rune of End";
<endreborn:item_advanced_ender_pearl>.displayName = "§1Advanced Ender Pearl";
<endreborn:item_ender_string>.displayName = "§fString of Life";

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

// ProjectRed
<projectred-core:resource_item:251>.displayName = "Red Alloy Compound";
<projectred-integration:gate:10>.displayName = "Enhanced Redstone Repeater";
<projectred-integration:gate:11>.displayName = "Enhanced Randomizer";
<projectred-integration:gate:20>.displayName = "Running Timer";
<projectred-integration:gate:33>.displayName = "Selective Enhanced Randomizer";
<projectred-integration:gate:31>.displayName = "Stacking Latch";

// DT
<dungeontactics:steel_cutlass>.displayName = "Steel Arming Sword";
<dungeontactics:barrel>.displayName = "Small Barrel";
<dungeontactics:steel_ingot>.displayName = "Crucible Steel Ingot";
<dungeontactics:steel_nugget>.displayName = "Crucible Steel Nugget";
<dungeontactics:steel_block>.displayName = "Block of Crucible Steel";
<dungeontactics:obsidianbrick>.displayName = "Decorative Obsidian";

// Rustic
<rustic:iron_lantern>.displayName = "Tin Lantern";
<rustic:barrel>.displayName = "Vertical Barrel";
<rustic:chain>.displayName = "Iron Chandelier Chain";
<rustic:andesite_pillar>.displayName = "Gray Andesite Pillar";
<rustic:crop_stake>.displayName = "Crop Stake";
<rustic:rope>.displayName = "Agricultural Rope";

// Vanilla
<minecraft:anvil>.displayName = "Iron Anvil";
<minecraft:anvil:1>.displayName = "Damaged Iron Anvil";
<minecraft:anvil:2>.displayName = "Crumbling Iron Anvil";
<minecraft:stone_sword>.displayName = "Stone Arming Sword";
<minecraft:iron_sword>.displayName = "Iron Arming Sword";
<minecraft:golden_sword>.displayName = "Golden Arming Sword";
<minecraft:diamond_sword>.displayName = "Diamond Arming Sword";
<minecraft:cobblestone_wall:1>.displayName = "Moss Cobblestone Wall";
<minecraft:stone:5>.displayName = "Gray Andesite";
<minecraft:stone:6>.displayName = "Polished Gray Andesite";


// wwhy? this is inconsistent
// <minecraft:wooden_door>.displayName = "Wooden Door";
// <minecraft:trapped_chest>.displayName = "Wooden Trapped Chest";
// <minecraft:trapdoor>.displayName = "Wooden Trapdoor";
// <minecraft:boat>.displayName = "Wooden Boat";
// <minecraft:wooden_button>.displayName = "Wooden Button";
// <minecraft:bookshelf>.displayName = "Wooden Bookshelf";
// <minecraft:oak_stairs>.displayName = "Wooden Stairs";
// <minecraft:wooden_slab:*>.displayName = "Wooden Slab";
// <minecraft:fence>.displayName = "Wooden Fence";
// <minecraft:fence_gate>.displayName = "Wooden Fence Gate";
// <minecraft:wooden_pressure_plate>.displayName = "Wooden Pressure Plate";

// FutureMC
<futuremc:andesite_wall>.displayName = "Gray Andesite Wall";


// Macaws Bridges
<mcwbridges:iron_armrest>.displayName = "Metal Armrest";
<mcwbridges:iron_rod>.displayName = "Metal Rod";
<mcwbridges:iron_platform>.displayName = "Metal Platform";
<mcwbridges:most1>.displayName = "Metal Bridge Middle";
<mcwbridges:most2>.displayName = "Metal Bridge End";
<mcwbridges:oak_log_bridge_middle>.displayName = "Wooden Bridge Middle";
<mcwbridges:oak_log_bridge_end>.displayName = "Wooden Bridge End";
<mcwbridges:rope_oak_bridge>.displayName = "Rope Wooden Bridge";
<mcwbridges:rope_oak_bridge_end>.displayName = "Rope Wooden Bridge End";
<mcwbridges:oak_rail_bridge>.displayName = "Wooden Rail Bridge";
<mcwbridges:oak_rail_bridge_powered>.displayName = "Powered Wooden Rail Bridge";

# Malisis Doors
<malisisdoors:garage_door>.displayName = "Portcullis Door";
<malisisdoors:jail_door>.displayName = "Reinforced Door";
<malisisdoors:verticalhatch>.displayName = "Vault Door";
<malisisdoors:laboratory_door>.displayName = "Rampart Door";
<malisisdoors:sliding_trapdoor>.displayName = "Rampart Trapdoor";
<malisisdoors:carriage_door>.displayName = "Castle Gate";

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

// ATOP
<atop:mud_axe>.displayName = "Bronze Axe";
<atop:mud_boots>.displayName = "Bronze Boots";
<atop:mud_chestplate>.displayName = "Bronze Cuirass";
<atop:mud_helmet>.displayName = "Bronze Helmet";
<atop:mud_hoe>.displayName = "Bronze Hoe";
<atop:mud_leggings>.displayName = "Bronze Leggings";
<atop:mud_pickaxe>.displayName = "Bronze Pickaxe";
<atop:mud_shovel>.displayName = "Bronze Shovel";
<atop:mud_sword>.displayName = "Bronze Gladius";

<atop:topaz_sword>.displayName = "§dCovenant";
<atop:amethyst_sword>.displayName = "§dConvergence";


// EPlus
<eplus:table_upgrade>.displayName = "Enchanting Table Upgrade";
<eplus:advanced_table>.displayName = "§6True Enchanting Table";


// Lavacow / Fishs Undead Rising
<mod_lavacow:moltenbeef>.displayName = "Molten Scale";
<mod_lavacow:green_bacon_and_eggs>.displayName = "Green Eggs and Bacon";
<mod_lavacow:poisonstinger>.displayName = "Vespa Stinger";

// Better Nether
<betternether:stalagnate_bowl_mushroom>.displayName = "Mushroom Soup";
<betternether:stalagnate_bark>.displayName = "Stalagnate Bark Block";
<betternether:nether_brick_wall>.displayName = "Nether Brick Tile Wall";
<betternether:chest_of_drawers>.displayName = "Cincinnasite Drawer";
<betternether:cincinnasite_carved>.displayName = "Carved Cincinnasite";
<betternether:magma_flower>.displayName = "Magma Flower Seed";
<betternether:pig_statue_01>.displayName = "Statue of Reincarnation";
<betternether:bone_block>.displayName = "Hardened Bone Block";
<betternether:bone_stairs>.displayName = "Hardened Bone Stairs";
<betternether:bone_slab_half:*>.displayName = "Hardened Bone Slab";
<betternether:bone_button>.displayName = "Hardened Bone Button";
<betternether:bone_plate>.displayName = "Hardened Bone Pressure Plate";
<betternether:bone_wall>.displayName = "Hardened Bone Wall";
<betternether:bone_tile>.displayName = "Hardened Bone Tile";
<betternether:smoker>.displayName = "Smoker Plant";
<betternether:stalagnate_planks_gate>.displayName = "Stalagnate Fence Gate";
<betternether:reeds_gate>.displayName = "Reeds Fence Gate";

// NetherEX
<netherex:basalt>.displayName = "Black Basalt";
<netherex:smooth_basalt>.displayName = "Smooth Black Basalt";
<netherex:basalt_brick>.displayName = "Black Basalt Bricks";
<netherex:basalt_pillar>.displayName = "Black Basalt Pillar";
<netherex:basalt_slab>.displayName = "Black Basalt Slab";
<netherex:smooth_basalt_slab>.displayName = "Smooth Black Basalt Slab";
<netherex:basalt_brick_slab>.displayName = "Black Basalt Brick Slab";
<netherex:basalt_pillar_slab>.displayName = "Black Basalt Pillar Slab";
<netherex:basalt_stairs>.displayName = "Black Basalt Stairs";
<netherex:smooth_basalt_stairs>.displayName = "Smooth Black Basalt Stairs";
<netherex:basalt_brick_stairs>.displayName = "Black Basalt Brick Stairs";
<netherex:basalt_pillar_stairs>.displayName = "Black Basalt Pillar Stairs";
<netherex:basalt_wall>.displayName = "Black Basalt Wall";
<netherex:smooth_basalt_wall>.displayName = "Smooth Black Basalt Wall";
<netherex:basalt_brick_wall>.displayName = "Black Basalt Brick Wall";
<netherex:basalt_pillar_wall>.displayName = "Black Basalt Pillar Wall";
<netherex:basalt_fence>.displayName = "Black Basalt Fence";
<netherex:smooth_basalt_fence>.displayName = "Smooth Black Basalt Fence";
<netherex:basalt_brick_fence>.displayName = "Black Basalt Brick Fence";
<netherex:basalt_pillar_fence>.displayName = "Black Basalt Pillar Fence";
<netherex:basalt_fence_gate>.displayName = "Black Basalt Fence Gate";
<netherex:smooth_basalt_fence_gate>.displayName = "Smooth Black Basalt Fence Gate";
<netherex:basalt_brick_fence_gate>.displayName = "Black Basalt Brick Fence Gate";
<netherex:basalt_pillar_fence_gate>.displayName = "Black Basalt Pillar Fence Gate";

// Pyrotech
<pyrotech:stone_hammer>.displayName = "Stone Sledgehammer";
<pyrotech:iron_hammer>.displayName = "Iron Sledgehammer";
<pyrotech:diamond_hammer>.displayName = "Refined Sledgehammer";
<pyrotech:bone_hammer>.displayName = "§6Mythril Sledgehammer";
<pyrotech:obsidian_hammer>.displayName = "§6Onyx Sledgehammer";
<pyrotech:material:2>.displayName = "Dried Jute";
<pyrotech:material>.displayName = "Big Pile of Ash Remains";
<pyrotech:brick_kiln>.displayName = "Brick Kiln";
<pyrotech:material:35>.displayName = "Lump of Refractory Material";
<pyrotech:material:4>.displayName = "Refractory Material";

// Animania
<animania:raw_frog_legs>.displayName = "Raw Prime Frog Legs";
<animania:cooked_frog_legs>.displayName = "Cooked Prime Frog Legs";
<animania:salt>.displayName = "Crystal Salt";

// Bountiful Baubles
<bountifulbaubles:potionrecall>.displayName = "Return Potion";

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

// Underground Biomes
<undergroundbiomes:fossil_piece:5>.displayName = "Claw Fossil";
<undergroundbiomes:metamorphic_sandstone_chiseled:0>.displayName = "Chiseled Gneiss Sandstone";
<undergroundbiomes:metamorphic_sandstone_chiseled:1>.displayName = "Chiseled Eclogite Sandstone";
<undergroundbiomes:metamorphic_sandstone_chiseled:2>.displayName = "Chiseled Marble Sandstone";
<undergroundbiomes:metamorphic_sandstone_chiseled:3>.displayName = "Chiseled Quartzite Sandstone";
<undergroundbiomes:metamorphic_sandstone_chiseled:4>.displayName = "Chiseled Blue Schist Sandstone";
<undergroundbiomes:metamorphic_sandstone_chiseled:5>.displayName = "Chiseled Green Schist Sandstone";
<undergroundbiomes:metamorphic_sandstone_chiseled:6>.displayName = "Chiseled Soapstone Sandstone";
<undergroundbiomes:metamorphic_sandstone_chiseled:7>.displayName = "Chiseled Migmatite Sandstone";

// Rats
<rats:rat_cage_breeding_lantern>.displayName = "Rat Cage";

// Pams Harvestcraft
<harvestcraft:maplesyrupitem>.displayName = "Sweet Syrup";
<harvestcraft:wovencottonitem>.displayName = "Woven Cloth";
<harvestcraft:hamsweetpicklesandwichitem>.displayName = "Sweet Pickle and Ham Sandwich";
<harvestcraft:pbandjitem>.displayName = "PBJ Sandwich"; 
<harvestcraft:ricecakeitem>.displayName = "Puffed Rice";

// Better with Addons
<betterwithaddons:extra_grass:0>.displayName = "Farmland Grass Block";
<betterwithaddons:extra_grass:1>.displayName = "Clay Grass Block";
<betterwithaddons:extra_grass:2>.displayName = "Sand Grass Block";
<betterwithaddons:extra_grass:3>.displayName = "Red Sand Grass Block";
<betterwithaddons:steel_spade>.displayName = "Soulforged Steel Spade";
<betterwithaddons:steel_matchpick>.displayName = "Soulforged Steel Matchpick";
<betterwithaddons:steel_machete>.displayName = "Soulforged Steel Machete";
<betterwithaddons:steel_kukri>.displayName = "Soulforged Steel Kukri";
<betterwithaddons:steel_carpentersaw>.displayName = "Soulforged Steel Carpenter Saw";
<betterwithaddons:steel_masonpick>.displayName = "Soulforged Steel Mason Pick";

// Runes and Magic Items
<contenttweaker:blank_rune>.addTooltip(format.gray("Inert"));
<bountifulbaubles:amuletsinempty>.addTooltip(format.gray("Inert"));
<artifacts:whoopie_cushion>.addTooltip(format.gray("Inert"));

<artifacts:shiny_red_balloon>.addTooltip(format.darkGreen("Mundane"));
<artifacts:drinking_hat>.addTooltip(format.darkGreen("Mundane"));

<contenttweaker:disint_rune>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:trinketobsidianskull>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:amuletsingluttony>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:amuletsinpride>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:amuletsinwrath>.addTooltip(format.aqua("Arcane"));
<bountifulbaubles:amuletcross>.addTooltip(format.aqua("Arcane"));
<artifacts:snorkel>.addTooltip(format.aqua("Arcane"));
<artifacts:shock_pendant>.addTooltip(format.aqua("Arcane"));
<artifacts:flame_pendant>.addTooltip(format.aqua("Arcane"));
<artifacts:thorn_pendant>.addTooltip(format.aqua("Arcane"));
<artifacts:bottled_cloud>.addTooltip(format.aqua("Arcane"));
<artifacts:feral_claws>.addTooltip(format.aqua("Arcane"));
<artifacts:power_glove>.addTooltip(format.aqua("Arcane"));
<artifacts:star_cloak>.addTooltip(format.aqua("Arcane"));
<artifacts:pocket_piston>.addTooltip(format.aqua("Arcane"));




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


<bountifulbaubles:trinketapple>.addTooltip(format.gold("Ascended"));
<bountifulbaubles:trinketvitamins>.addTooltip(format.gold("Ascended"));
<bountifulbaubles:ringfreeaction>.addTooltip(format.gold("Ascended"));
<artifacts:night_vision_goggles>.addTooltip(format.gold("Ascended"));

// <undergroundbiomes:lignite_coal>.displayName = "Ender Charbiotite";

<deadmanssatchel:deadmanssatchel>.displayName = "Dust Sorting Satchel";
<deadmanssatchel:deadmanssatchel>.addTooltip(format.aqua("Arcane"));

// Better Animals Plus
<betteranimalsplus:wolfhead_1>.displayName = "§2Direwolf Head";
<betteranimalsplus:wolfhead_2>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_3>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_4>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_5>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:wolfhead_6>.addTooltip(format.darkGreen("Rare Trophy"));
<betteranimalsplus:fried_egg>.displayName = "Cooked Monster Egg";


<contenttweaker:grove_tear>.displayName = "§bGrove Tear...";
<contenttweaker:purifying_signet>.displayName = "§ePurifying Signet";

#Rare
<dungeontactics:high_striker>.displayName = "§2High Striker";
<dungeontactics:high_striker>.addTooltip(format.darkGreen("Rare Weapon"));

<dungeontactics:wackerjab>.displayName = "§2Wackerjab";
<dungeontactics:wackerjab>.addTooltip(format.darkGreen("Rare Weapon"));

<dungeontactics:taser>.displayName = "§2Taser";
<dungeontactics:taser>.addTooltip(format.darkGreen("Rare Weapon"));

<dungeontactics:claws>.displayName = "§2Claws";
<dungeontactics:claws>.addTooltip(format.darkGreen("Rare Weapon"));

<dungeontactics:pirate_hook>.displayName = "§2Pirate Hook";
<dungeontactics:pirate_hook>.addTooltip(format.darkGreen("Rare Weapon"));

<dungeontactics:coin_cannon>.displayName = "§2Coin Cannon";
<dungeontactics:coin_cannon>.addTooltip(format.darkGreen("Rare Weapon"));

<dungeontactics:backfire_cannon>.displayName = "§2Backfire Cannon";
<dungeontactics:backfire_cannon>.addTooltip(format.darkGreen("Rare Weapon"));





<simpleores:adamantium_sword>.displayName = "§2Viridium Sword";
<simpleores:adamantium_sword>.addTooltip(format.darkGreen("Rare Weapon"));
game.setLocalization("material.spartanweaponry:adamantium","§2Viridium");
<spartancompat:saber_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:katana_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:staff_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:spear_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:dagger_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartancompat:throwing_knife_adamantium>.addTooltip(format.darkGreen("Rare Weapon"));
<spartanshields:shield_basic_diamond>.displayName = "§2Gem Forged Shield";
<spartanshields:shield_basic_diamond>.addTooltip(format.darkGreen("Rare Shield"));



<iceandfire:myrmex_desert_sword_venom>.displayName = "§2Desert Myrmex Stinger Sword";
<iceandfire:myrmex_desert_sword_venom>.addTooltip(format.darkGreen("Rare Weapon"));
<iceandfire:myrmex_jungle_sword_venom>.displayName = "§2Jungle Myrmex Stinger Sword";
<iceandfire:myrmex_jungle_sword_venom>.addTooltip(format.darkGreen("Rare Weapon"));
<msmlegacy:vampiric_blade>.displayName = "§2Vampiric Sword";
<msmlegacy:vampiric_blade>.addTooltip(format.darkGreen("Rare Weapon"));
<msmlegacy:draconic_blade>.displayName = "§2Drakeish Blade";
<msmlegacy:draconic_blade>.addTooltip(format.darkGreen("Rare Weapon"));
<pyrotech:redstone_sword>.displayName = "§2Draconic Blade";
<pyrotech:redstone_sword>.addTooltip(format.darkGreen("Rare Weapon"));

<mod_lavacow:famine>.displayName = "§2Blade of Devouring Greed";
<mod_lavacow:famine>.addTooltip(format.darkGreen("Rare Weapon"));



<simpleores:adamantium_pickaxe>.displayName = "§2Viridium Pickaxe";
<simpleores:adamantium_shovel>.displayName = "§2Viridium Shovel";
<simpleores:adamantium_hoe>.displayName = "§2Viridium Hoe";
<simpleores:adamantium_axe>.displayName = "§2Viridium Axe";
<simpleores:adamantium_chestplate>.displayName = "§2Viridium Chestplate";
<simpleores:adamantium_chestplate>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_leggings>.displayName = "§2Viridium Leggings";
<simpleores:adamantium_leggings>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_helmet>.displayName = "§2Viridium Helmet";
<simpleores:adamantium_helmet>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_boots>.displayName = "§2Viridium Boots";
<simpleores:adamantium_boots>.addTooltip(format.darkGreen("Rare Armor"));
<simpleores:adamantium_ingot>.displayName = "§2Viridium Ingot";
<simpleores:adamantium_ingot>.addTooltip(format.darkGreen("Rare Material"));



#Epic

<nyx:meteor_hammer>.displayName = "§5Cataclysm";
<nyx:meteor_hammer>.addTooltip(format.darkPurple("Epic Weapon"));
<nyx:scythe>.displayName = "§5Celeste";
<nyx:scythe>.addTooltip(format.darkPurple("Epic Weapon"));
<nyx:meteor_sword>.displayName = "§5Sanguine";
<nyx:meteor_sword>.addTooltip(format.darkPurple("Epic Weapon"));
<nyx:meteor_bow>.displayName = "§5Meteorite-Reinforced Bow";
<nyx:meteor_bow>.addTooltip(format.darkPurple("Epic Weapon"));


<nyx:meteor_shard>.displayName = "§5Meteor Shard";
<nyx:fallen_star>.displayName = "§5Fallen Star";

<endreborn:tool_magnifier>.displayName = "§5Magnitifus";
<endreborn:tool_magnifier>.addTooltip(format.darkPurple("Epic Weapon"));

<msmlegacy:aethers_guard>.displayName = "§5Sky Blade";
<msmlegacy:aethers_guard>.addTooltip(format.darkPurple("Epic Weapon"));


<simpleores:mythril_bow>.displayName = "§5Mythril Bow";
<simpleores:mythril_bow>.addTooltip(format.darkPurple("Epic Weapon"));
<simpleores:mythril_sword>.displayName = "§5Mythril Sword";
<simpleores:mythril_sword>.addTooltip(format.darkPurple("Epic Weapon"));
<simpleores:mythril_pickaxe>.displayName = "§5Mythril Pickaxe";
game.setLocalization("material.spartanweaponry:mythril","§5Mythril");
<spartancompat:rapier_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:longsword_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:glaive_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:lance_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:mace_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:boomerang_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartancompat:javelin_mythril>.addTooltip(format.darkPurple("Epic Weapon"));
<spartanshields:shield_basic_lead>.displayName = "§5Mythril Shield";
<spartanshields:shield_basic_lead>.addTooltip(format.darkPurple("Epic Shield"));


<mod_lavacow:war>.displayName = "§5Nether Cannon";
<mod_lavacow:war>.addTooltip(format.darkPurple("Epic Weapon"));
<mod_lavacow:sludge_wand>.displayName = "§5Oozemancer's Staff";
<mod_lavacow:sludge_wand>.addTooltip(format.darkPurple("Epic Weapon"));
<mod_lavacow:bonesword>.displayName = "§5Bonetooth Sword";
<mod_lavacow:bonesword>.addTooltip(format.darkPurple("Epic Weapon"));
<spartanweaponry:crossbow_wood>.addTooltip(format.darkPurple("Epic Weapon"));

<simpleores:mythril_shovel>.displayName = "§5Mythril Shovel";
<simpleores:mythril_axe>.displayName = "§5Mythril Axe";
<simpleores:mythril_hoe>.displayName = "§5Mythril Hoe";
<simpleores:mythril_chestplate>.displayName = "§5Mythril Chestplate";
<simpleores:mythril_leggings>.displayName = "§5Mythril Leggings";
<simpleores:mythril_helmet>.displayName = "§5Mythril Helmet";
<simpleores:mythril_boots>.displayName = "§5Mythril Boots";
<simpleores:mythril_ingot>.displayName = "§5Mythril Ingot";



<iceandfire:dragonbone_sword>.displayName = "§5Dragonbone Sword";
<iceandfire:dragonbone_sword>.addTooltip(format.darkPurple("Epic Weapon"));
<mowziesmobs:wrought_axe:*>.displayName = "§5Wrought Axe";
<mowziesmobs:wrought_axe:*>.addTooltip(format.darkPurple("Epic Weapon"));
<mowziesmobs:barako_mask>.displayName = "§5Sol Visage";
<mowziesmobs:barako_mask>.addTooltip(format.darkPurple("Epic Artifact"));
<mowziesmobs:ice_crystal>.displayName = "§5Ice Crystal";
<mowziesmobs:ice_crystal>.addTooltip(format.darkPurple("Epic Weapon"));
<iceandfire:myrmex_desert_staff>.displayName = "§5Desert Myrmex Staff";
<iceandfire:myrmex_desert_staff>.addTooltip(format.darkPurple("Epic Weapon"));
<iceandfire:myrmex_jungle_staff>.displayName = "§5Jungle Myrmex Staff";
<iceandfire:myrmex_jungle_staff>.addTooltip(format.darkPurple("Epic Weapon"));




#Legendary





<msmlegacy:wither_bane>.displayName = "§6Dark's Edge";
<msmlegacy:wither_bane>.addTooltip(format.gold("Legendary Weapon"));
<msmlegacy:wither_bane>.addTooltip("Darkness consumes the fallen.");


<contenttweaker:heavensheart>.displayName = "§6Heaven's Heart";
<contenttweaker:heartofthefallen>.displayName = "§6Heart of the Fallen";


<msmlegacy:crystaline_blade>.displayName = "§6Light's Edge";
<msmlegacy:crystaline_blade>.addTooltip(format.gold("Legendary Weapon"));
<msmlegacy:crystaline_blade>.addTooltip("Light purifies all.");






<simpleores:onyx_sword>.displayName = "§6Onyx Sword";
<simpleores:onyx_sword>.addTooltip(format.gold("Legendary Weapon"));
<simpleores:onyx_pickaxe>.displayName = "§6Onyx Pickaxe";
game.setLocalization("material.spartanweaponry:onyx","§6Onyx");
<spartancompat:halberd_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:greatsword_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:warhammer_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:pike_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:battleaxe_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:hammer_onyx>.addTooltip(format.gold("Legendary Weapon"));
<spartancompat:throwing_axe_onyx>.addTooltip(format.gold("Legendary Weapon"));


<simpleores:onyx_shovel>.displayName = "§6Onyx Shovel";
<simpleores:onyx_hoe>.displayName = "§6Onyx Hoe";
<simpleores:onyx_axe>.displayName = "§6Onyx Axe";
<simpleores:onyx_chestplate>.displayName = "§6Onyx Chestplate";
<simpleores:onyx_chestplate>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_leggings>.displayName = "§6Onyx Leggings";
<simpleores:onyx_leggings>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_helmet>.displayName = "§6Onyx Helmet";
<simpleores:onyx_helmet>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_boots>.displayName = "§6Onyx Boots";
<simpleores:onyx_boots>.addTooltip(format.gold("Legendary Armor"));
<simpleores:onyx_gem>.displayName = "§6Onyx";
<simpleores:onyx_gem>.addTooltip(format.gold("Legendary Material"));
<contenttweaker:phosphophyllite>.displayName = "§6Phosphophyllite";
<contenttweaker:phosphophyllite>.addTooltip(format.gold("Legendary Material"));
<contenttweaker:phosphophyllite>.addTooltip("Extremely rare gem. Valuable to the Nether natives.");


<dungeontactics:lantern_magic>.displayName = "§6Magic Lantern";
<dungeontactics:lantern_magic>.addTooltip(format.gold("Legendary Artifact"));

<aether_legacy:notch_hammer>.displayName = "§6Hammer of Miku";
<aether_legacy:notch_hammer>.addTooltip(format.gold("Legendary Weapon"));
<endreborn:ender_sword>.displayName = "§6Void Ripper";
<endreborn:ender_sword>.addTooltip(format.gold("Legendary Weapon"));
<endreborn:armour_leggings_obsidian>.displayName = "Obsidian Leggings";

<iceandfire:dragonsteel_ice_sword>.displayName = "§6Ice Dragonsteel Sword";
<iceandfire:dragonsteel_ice_sword>.addTooltip(format.gold("Legendary Weapon"));

<iceandfire:dragonsteel_ice_pickaxe>.displayName = "§6Ice Dragonsteel Pickaxe";

<iceandfire:dragonsteel_ice_axe>.displayName = "§6Ice Dragonsteel Axe";

<iceandfire:dragonsteel_ice_shovel>.displayName = "§6Ice Dragonsteel Shovel";

<iceandfire:dragonsteel_ice_hoe>.displayName = "§6Ice Dragonsteel Hoe";

<iceandfire:dragonsteel_fire_sword>.displayName = "§6Fire Dragonsteel Sword";

<iceandfire:dragonsteel_fire_pickaxe>.displayName = "§6Fire Dragonsteel Pickaxe";

<iceandfire:dragonsteel_fire_axe>.displayName = "§6Fire Dragonsteel Axe";

<iceandfire:dragonsteel_fire_shovel>.displayName = "§6Fire Dragonsteel Shovel";

<iceandfire:dragonsteel_fire_hoe>.displayName = "§6Fire Dragonsteel Hoe";

<iceandfire:dragonsteel_fire_chestplate>.displayName = "§6Fire Dragonsteel Chestplate";
<iceandfire:dragonsteel_fire_chestplate>.addTooltip(format.gold("Legendary Armor"));

<iceandfire:dragonsteel_fire_helmet>.displayName = "§6Fire Dragonsteel Helmet";
<iceandfire:dragonsteel_fire_helmet>.addTooltip(format.gold("Legendary Armor"));

<iceandfire:dragonsteel_fire_leggings>.displayName = "§6Fire Dragonsteel Leggings";
<iceandfire:dragonsteel_fire_leggings>.addTooltip(format.gold("Legendary Armor"));

<iceandfire:dragonsteel_fire_boots>.displayName = "§6Fire Dragonsteel Boots";
<iceandfire:dragonsteel_fire_boots>.addTooltip(format.gold("Legendary Armor"));

<iceandfire:dragonsteel_ice_chestplate>.displayName = "§6Ice Dragonsteel Chestplate";
<iceandfire:dragonsteel_ice_chestplate>.addTooltip(format.gold("Legendary Armor"));

<iceandfire:dragonsteel_ice_helmet>.displayName = "§6Ice Dragonsteel Helmet";
<iceandfire:dragonsteel_ice_helmet>.addTooltip(format.gold("Legendary Armor"));

<iceandfire:dragonsteel_ice_leggings>.displayName = "§6Ice Dragonsteel Leggings";
<iceandfire:dragonsteel_ice_leggings>.addTooltip(format.gold("Legendary Armor"));

<iceandfire:dragonsteel_ice_boots>.displayName = "§6Ice Dragonsteel Boots";
<iceandfire:dragonsteel_ice_boots>.addTooltip(format.gold("Legendary Armor"));




<iceandfire:gorgon_head>.displayName = "§6Gorgon Head";
<iceandfire:dragonbone_sword_fire>.displayName = "§6Flamed Dragonbone Sword";
<iceandfire:dragonbone_sword_ice>.displayName = "§6Iced Dragonbone Sword";
<iceandfire:hippogryph_sword>.displayName = "§6Hippogryph Talon Sword";
<iceandfire:deathworm_gauntlet_yellow>.displayName = "§6Yellow Deathworm Gauntlet";
<iceandfire:deathworm_gauntlet_white>.displayName = "§6White Deathworm Gauntlet";
<iceandfire:deathworm_gauntlet_red>.displayName = "§6Red Deathworm Gauntlet";
<iceandfire:cockatrice_scepter>.displayName = "§6Cockatrice Scepter";
<iceandfire:pixie_wand>.displayName = "§6Pixie Wand";
<iceandfire:siren_flute>.displayName = "§6Siren Flute";
<iceandfire:hippocampus_slapper>.displayName = "§6Hippocampus Slapper";
<iceandfire:cyclops_eye>.displayName = "§6Cyclops Eye";
<iceandfire:stymphalian_bird_dagger>.displayName = "§6Stymphalian Bird Dagger";
<iceandfire:stymphalian_feather_bundle>.displayName = "§6Stymphalian Feather Bundle";
<iceandfire:myrmex_desert_swarm>.displayName = "§6Desert Myrmex Swarm";
<iceandfire:myrmex_jungle_swarm>.displayName = "§6Jungle Myrmex Swarm";
<iceandfire:tide_trident>.displayName = "§6Tide Trident";
<iceandfire:amphithere_macuahuitl>.displayName = "§6Amphithere Macuahuitl";

<mod_lavacow:piranhalauncher>.displayName = "§6Frenzy Launcher";
<mod_lavacow:piranhalauncher>.addTooltip(format.gold("Legendary Weapon"));


# Godly

<msmlegacy:dawn_star>.displayName = "§cTrue Light's Edge";
<msmlegacy:dawn_star>.addTooltip(format.red("Godly Weapon"));
<msmlegacy:dawn_star>.addTooltip("I am truth. I am majesty. I am justice.");

<dungeontactics:silver_sword:*>.displayName = "§cTrue Dark's Edge";
<dungeontactics:silver_sword:*>.addTooltip(format.red("Godly Weapon"));
<dungeontactics:silver_sword:*>.addTooltip("They will suffer as we have.");
mods.jei.JEI.addDescription([<dungeontactics:silver_sword:*>],["The True Dark's Edge is a living blade fused with the endless power of the fallen. Its abilities allow you to draw strength from other's suffering, empower yourself by siphoning power from the blade itself, and strike at your enemies' souls, bypassing some of their armor."]);


<betterwithaddons:greatbow>.displayName = "§cOnyx Slayer Greatbow";
<betterwithaddons:greatbow>.addTooltip(format.red("Godly Weapon"));
<betterwithaddons:greatbow>.addTooltip("The weight of worldly destruction");


<msmlegacy:eye_end_blade>.displayName = "§cInterdimensional Blade";
<msmlegacy:eye_end_blade>.addTooltip(format.red("Godly Weapon"));




<msmlegacy:glacial_blade>.displayName = "§cDragon's Bane";
<msmlegacy:glacial_blade>.addTooltip(format.red("Godly Weapon"));


<mowziesmobs:earth_talisman>.displayName = "§cEarth Talisman";
<mowziesmobs:earth_talisman>.addTooltip(format.red("Godly Artifact"));

<msmlegacy:adminium_ark>.displayName = "§4Ender of Worlds";

<msmlegacy:glacial_blade>.addTooltip("Nunon fin Dovahkiin aal kod daar tuz");



<msmlegacy:eye_end_blade>.addTooltip(format.obfuscated("Ender of Worlds"));



<msmlegacy:adminium_ark>.addTooltip(format.darkRed("Forbidden Weapon"));
<msmlegacy:adminium_ark>.addTooltip("Only one with the power to control the world may wield this weapon.");



# Relics
<msmlegacy:relic_aqueous>.displayName = "§4Red Hot Chili Pepper Sword";
<msmlegacy:relic_candy>.displayName = "§4Burning Super Death Sword";

