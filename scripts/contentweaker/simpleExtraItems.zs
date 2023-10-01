#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemRightClick;
import crafttweaker.world.IWorld;
import crafttweaker.util.IRandom;

// Dirt piles
var siltydirtpile = VanillaFactory.createItem("silty_dirt_pile");
siltydirtpile.maxStackSize = 256;
siltydirtpile.register();

var loamydirtpile = VanillaFactory.createItem("loamy_dirt_pile");
loamydirtpile.maxStackSize = 256;
loamydirtpile.register();

var sandydirtpile = VanillaFactory.createItem("sandy_dirt_pile");
sandydirtpile.maxStackSize = 256;
sandydirtpile.register();

var defileddirtpile = VanillaFactory.createItem("defiled_dirt_pile");
defileddirtpile.maxStackSize = 256;
defileddirtpile.register();

var aetherdirtpile = VanillaFactory.createItem("aether_dirt_pile");
aetherdirtpile.maxStackSize = 256;
aetherdirtpile.register();

// ancient cache
var ancientcache = VanillaFactory.createItem("ancient_cache");

static ancientCacheWeapons as string[] = [
	"saber_electrum 1 0 {display:{Name:\"§cAnhelare's Tongue\"}}",
	"throwing_knife_electrum 1 0 {display:{Name:\"§cForeck\"}}",
	"halberd_electrum 1 0 {display:{Name:\"§cWingcutter\"}}",
	"warhammer_electrum 1 0 {display:{Name:\"§cThe Handle\"}}",
	"hammer_electrum 1 0 {display:{Name:\"§cThe Tenderizer\"}}",
	"lance_electrum 1 0 {display:{Name:\"§cBarako War Lance\"}}",
	"rapier_electrum 1 0 {display:{Name:\"§cThe Needle\"}}",
	"greatsword_electrum 1 0 {display:{Name:\"§cOnyx Slayer Greatsword\"}}",
	"longsword_electrum 1 0 {display:{Name:\"§cVoid's Howl\"}}",
	"staff_electrum 1 0 {display:{Name:\"§cRu Yi Jin Gu Bang\"}}",
    "boomerang_electrum 1 0 {display:{Name:\"§cThe 4th Whisper\"}}",
    "dagger_electrum 1 0 {display:{Name:\"§cForbidden Dagger\"}}",
    "spear_electrum 1 0 {display:{Name:\"§cForbidden Spear\"}}",
    "pike_electrum 1 0 {display:{Name:\"§cForbidden Pike\"}}",
    "throwing_axe_electrum 1 0 {display:{Name:\"§cForbidden Throwing Axe\"}}",
    "battleaxe_electrum 1 0 {display:{Name:\"§cForbidden Battleaxe\"}}",
    "glaive_electrum 1 0 {display:{Name:\"§cForbidden Glaive\"}}",
    "longbow_electrum 1 0 {display:{Name:\"§cForbidden Longbow\"}}",
    "mace_electrum 1 0 {display:{Name:\"§cForbidden Flanged Mace\"}}",
    "javelin_electrum 1 0 {display:{Name:\"§cForbidden Javelin\"}}",
    "katana_electrum 1 0 {display:{Name:\"§cForbidden Katana\"}}"
];

ancientcache.maxStackSize = 1;
ancientcache.itemRightClick = function(stack, world, player, hand) {
    if (world.isRemote()) { return "PASS"; }
    var randomfac = world.random.nextInt(ancientCacheWeapons.length+1) as int;
    if randomfac < ancientCacheWeapons.length {
    	Commands.call("give @p spartanweaponry:"~ancientCacheWeapons[randomfac], player, world, false, true);
    }
    stack.shrink(1);
    return "SUCCESS";
};
ancientcache.register();

// animated brain
val animated_brain = VanillaFactory.createItem("animated_brain");
animated_brain.register();

// valkyrie rework
val valkyrien_plate = VanillaFactory.createItem("valkyrien_plate");
valkyrien_plate.register();

val electrum_core = VanillaFactory.createItem("electrum_core");
electrum_core.register();

// tools
var mythril_mattock = VanillaFactory.createItem("mythril_mattock");
mythril_mattock.maxStackSize = 1;
mythril_mattock.maxDamage = 6969;
mythril_mattock.rarity = "rare";
mythril_mattock.toolClass = "pickaxe";
mythril_mattock.toolLevel = 4;
mythril_mattock.register();

var steel_crowbar = VanillaFactory.createItem("steel_crowbar");
steel_crowbar.maxStackSize = 1;
steel_crowbar.maxDamage = 1795;
steel_crowbar.toolClass = "pickaxe";
steel_crowbar.toolLevel = 2;
//steel_crowbar.itemDestroySpeed = 12;
steel_crowbar.register();

var mythril_masonpick = VanillaFactory.createItem("mythril_masonpick");
mythril_masonpick.maxStackSize = 1;
mythril_masonpick.maxDamage = 2633;
mythril_masonpick.rarity = "rare";
mythril_masonpick.toolClass = "pickaxe";
mythril_masonpick.toolLevel = 4;
//mythril_masonpick.itemDestroySpeed = 12;
mythril_masonpick.register();

var sfs_masonpick = VanillaFactory.createItem("sfs_masonpick");
sfs_masonpick.maxStackSize = 1;
sfs_masonpick.maxDamage = 8988;
sfs_masonpick.rarity = "rare";
sfs_masonpick.toolClass = "pickaxe";
sfs_masonpick.toolLevel = 4;
//sfs_masonpick.itemDestroySpeed = 18;
sfs_masonpick.register();

// misc.
val four_gems = VanillaFactory.createItem("four_gems");
four_gems.register();
val four_gem_ingots = VanillaFactory.createItem("four_gem_ingots");
four_gem_ingots.register();
val rice_paddy_dummy = VanillaFactory.createItem("rice_paddy_dummy");
rice_paddy_dummy.register();
val phos = VanillaFactory.createItem("phosphophyllite");
phos.register();
val coin1 = VanillaFactory.createItem("coinT1");
coin1.register();
val coin2 = VanillaFactory.createItem("coinT2");
coin2.register();
val coin3 = VanillaFactory.createItem("coinT3");
coin3.register();
val coin4 = VanillaFactory.createItem("coinT4");
coin4.register();
val pcoin = VanillaFactory.createItem("nethercoin");
pcoin.register();
val info = VanillaFactory.createItem("info");
info.register();
val clover4 = VanillaFactory.createItem("4leaf_clover");
clover4.register();
val clover5 = VanillaFactory.createItem("5leaf_clover");
clover5.register();
val spider_silk = VanillaFactory.createItem("spider_silk");
spider_silk.register();
val crafting_tools = VanillaFactory.createItem("crafting_tools");
crafting_tools.register();
val greasy_stem = VanillaFactory.createItem("greasy_stem");
greasy_stem.register();

// Soul Forged Steel artifacts
val sfs1 = VanillaFactory.createItem("sfs_artifact");
sfs1.register();
val sfs2 = VanillaFactory.createItem("sfs_artifact1");
sfs2.register();
val sfs3 = VanillaFactory.createItem("sfs_artifact2");
sfs3.register();
val sfs4 = VanillaFactory.createItem("sfs_artifact3");
sfs4.register();
val sfs5 = VanillaFactory.createItem("sfs_artifact4");
sfs5.register();
val sfs6 = VanillaFactory.createItem("sfs_artifact5");
sfs6.register();
val sfs7 = VanillaFactory.createItem("sfs_artifact6");
sfs7.register();
val sfs8 = VanillaFactory.createItem("sfs_artifact7");
sfs8.register();
val sfs9 = VanillaFactory.createItem("sfs_artifact8");
sfs9.register();

// Steel artifacts
val sa1 = VanillaFactory.createItem("steel_artifact");
sa1.register();

// non-ingot ingots
val sapphire = VanillaFactory.createItem("sapphire_ingot");
sapphire.register();
val ruby = VanillaFactory.createItem("ruby_ingot");
ruby.register();
val peridot = VanillaFactory.createItem("peridot_ingot");
peridot.register();
val zanite = VanillaFactory.createItem("zanite_ingot");
zanite.register();
val exorite = VanillaFactory.createItem("exorite_ingot");
exorite.register();

// Balancing ingredients
val rags_l = VanillaFactory.createItem("tattered_hide");
rags_l.register();
val hide_m = VanillaFactory.createItem("monster_hide");
hide_m.register();
val unfired_totem_base = VanillaFactory.createItem("unfired_totem_base");
unfired_totem_base.register();

val cooking_kit = VanillaFactory.createItem("cooking_kit");
cooking_kit.maxDamage = 420;
cooking_kit.maxStackSize = 1;
cooking_kit.register();
val cooking_kit_quality = VanillaFactory.createItem("cooking_kit_quality");
cooking_kit_quality.maxDamage = 840;
cooking_kit_quality.maxStackSize = 1;
cooking_kit_quality.register();
val cooking_kit_elite = VanillaFactory.createItem("cooking_kit_elite");
cooking_kit_elite.maxDamage = 1260;
cooking_kit_elite.maxStackSize = 1;
cooking_kit_elite.register();
val cooking_kit_premium = VanillaFactory.createItem("cooking_kit_premium");
cooking_kit_premium.maxDamage = 2100;
cooking_kit_premium.maxStackSize = 1;
cooking_kit_premium.register();
val cooking_kit_master = VanillaFactory.createItem("cooking_kit_master");
cooking_kit_master.maxDamage = 4200;
cooking_kit_master.maxStackSize = 1;
cooking_kit_master.register();

val redstuff = VanillaFactory.createItem("redstuff");
redstuff.register();

val draff = VanillaFactory.createItem("draff");
draff.register();

VanillaFactory.createItem("fiery_sludge").register();
VanillaFactory.createItem("ground_fiery_netherrack").register();

// Raw Ores
// raw_tin
var raw_tin = VanillaFactory.createItem("raw_tin");
raw_tin.register();

// raw_copper
var raw_copper = VanillaFactory.createItem("raw_copper");
raw_copper.register();

// raw_iron
var raw_iron = VanillaFactory.createItem("raw_iron");
raw_iron.register();

// raw_silver
var raw_silver = VanillaFactory.createItem("raw_silver");
raw_silver.register();

// raw_gold
var raw_gold = VanillaFactory.createItem("raw_gold");
raw_gold.register();

// raw_gravitite
var raw_gravitite = VanillaFactory.createItem("raw_gravitite");
raw_gravitite.register();

// raw_viridium
var raw_viridium = VanillaFactory.createItem("raw_viridium");
raw_viridium.register();

// raw_mythril
var raw_mythril = VanillaFactory.createItem("raw_mythril");
raw_mythril.register();

// Cut Gems
val cutdiamond = VanillaFactory.createItem("pristine_diamond");
cutdiamond.register();

val cutdiamond2 = VanillaFactory.createItem("suntouched_diamond");
cutdiamond2.register();

val cutemerald = VanillaFactory.createItem("poisonetched_emerald");
cutemerald.register();

val cutemerald2 = VanillaFactory.createItem("overgrown_emerald");
cutemerald2.register();

val cutruby = VanillaFactory.createItem("fortified_ruby");
cutruby.register();

val cutruby2 = VanillaFactory.createItem("earthen_ruby");
cutruby2.register();

val cutsapphire = VanillaFactory.createItem("waterlogged_sapphire");
cutsapphire.register();

val cutsapphire2 = VanillaFactory.createItem("abyssal_sapphire");
cutsapphire2.register();

val cutperidot = VanillaFactory.createItem("lucky_peridot");
cutperidot.register();

val cutperidot2 = VanillaFactory.createItem("parity_peridot");
cutperidot2.register();

val cutcin = VanillaFactory.createItem("flashfired_cincinnasite");
cutcin.register();

val cutcin2 = VanillaFactory.createItem("corrupted_cincinnasite");
cutcin2.register();

val cutonyx1 = VanillaFactory.createItem("fireetched_onyx");
cutonyx1.register();

val cutonyx2 = VanillaFactory.createItem("soulinfused_onyx");
cutonyx2.register();

val cutzanite1 = VanillaFactory.createItem("holy_zanite");
cutzanite1.register();

val cutzanite2 = VanillaFactory.createItem("electrified_zanite");
cutzanite2.register();

val cutexorite = VanillaFactory.createItem("voidseen_exorite");
cutexorite.register();

val cutexorite2 = VanillaFactory.createItem("animated_exorite");
cutexorite2.register();

val cutcarminite = VanillaFactory.createItem("draconium");
cutcarminite.register();

val cutcarminite2 = VanillaFactory.createItem("faerite");
cutcarminite2.register();

// Bricks
VanillaFactory.createItem("brick_coade").register();
VanillaFactory.createItem("brick_end").register();
VanillaFactory.createItem("brick_white").register();
VanillaFactory.createItem("brick_red_granite").register();
VanillaFactory.createItem("brick_black_granite").register();
VanillaFactory.createItem("brick_rhyolite").register();
VanillaFactory.createItem("brick_andesite").register();
VanillaFactory.createItem("brick_gabbro").register();
VanillaFactory.createItem("brick_basalt").register();
VanillaFactory.createItem("brick_komatiite").register();
VanillaFactory.createItem("brick_dacite").register();
VanillaFactory.createItem("brick_gneiss").register();
VanillaFactory.createItem("brick_eclogite").register();
VanillaFactory.createItem("brick_marble").register();
VanillaFactory.createItem("brick_quartzite").register();
VanillaFactory.createItem("brick_blue_schist").register();
VanillaFactory.createItem("brick_green_schist").register();
VanillaFactory.createItem("brick_soapstone").register();
VanillaFactory.createItem("brick_migmatite").register();
VanillaFactory.createItem("brick_blue_slate").register();
VanillaFactory.createItem("brick_green_slate").register();
VanillaFactory.createItem("brick_purple_slate").register();
VanillaFactory.createItem("brick_serpentinite").register();
VanillaFactory.createItem("brick_limestone").register();
VanillaFactory.createItem("brick_chalk").register();
VanillaFactory.createItem("brick_shale").register();
VanillaFactory.createItem("brick_siltstone").register();
VanillaFactory.createItem("brick_lignite").register();
VanillaFactory.createItem("brick_dolomite").register();
VanillaFactory.createItem("brick_greywacke").register();
VanillaFactory.createItem("brick_chert").register();
VanillaFactory.createItem("brick_brimstone").register();
VanillaFactory.createItem("brick_permafrost").register();
VanillaFactory.createItem("brick_dreadstone").register();
VanillaFactory.createItem("brick_holystone").register();
VanillaFactory.createItem("brick_sandstone").register();
VanillaFactory.createItem("brick_red_sandstone").register();
VanillaFactory.createItem("brick_soul_sandstone").register();
VanillaFactory.createItem("brick_black_basalt").register();

// Peculiar items
val heartofthefallen = VanillaFactory.createItem("heartofthefallen");
heartofthefallen.register();

val heavensheart = VanillaFactory.createItem("heavensheart");
heavensheart.register();

val heart_of_fire = VanillaFactory.createItem("heart_of_fire");
heart_of_fire.register();

val adhesive_shadow = VanillaFactory.createItem("adhesive_shadow");
adhesive_shadow.register();

val shard_of_night = VanillaFactory.createItem("shard_of_night");
shard_of_night.register();

val brain = VanillaFactory.createItem("brain");
brain.register();

val slayers_tattered_journal = VanillaFactory.createItem("slayers_tattered_journal");
slayers_tattered_journal.register();

val grove_tear = VanillaFactory.createItem("grove_tear");
grove_tear.register();

val purifying_signet = VanillaFactory.createItem("purifying_signet");
purifying_signet.register();

val stormcloud = VanillaFactory.createItem("stormcloud");
stormcloud.register();

val mercurial_ooze = VanillaFactory.createItem("mercurial_ooze");
mercurial_ooze.register();

val broken_stick = VanillaFactory.createItem("broken_stick");
broken_stick.register();

val necrobrain = VanillaFactory.createItem("necromantic_brain");
necrobrain.register();

val wroughtcore = VanillaFactory.createItem("wrought_animation_core");
wroughtcore.register();

val voidscall = VanillaFactory.createItem("voids_call");
voidscall.register();

val giant_red_flower_petal = VanillaFactory.createItem("giant_red_flower_petal");
giant_red_flower_petal.register();

val giant_yellow_flower_petal = VanillaFactory.createItem("giant_yellow_flower_petal");
giant_yellow_flower_petal.register();

val giant_blue_flower_petal = VanillaFactory.createItem("giant_blue_flower_petal");
giant_blue_flower_petal.register();

val xp_tome_mundane = VanillaFactory.createItem("xp_tome_mundane");
xp_tome_mundane.register();

val xp_tome_arcane = VanillaFactory.createItem("xp_tome_arcane");
xp_tome_arcane.register();