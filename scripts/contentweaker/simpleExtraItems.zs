#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;

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

//non-ingot ingots
val sapphire = VanillaFactory.createItem("sapphire_ingot");
sapphire.register();
val ruby = VanillaFactory.createItem("ruby_ingot");
ruby.register();
val peridot = VanillaFactory.createItem("peridot_ingot");
peridot.register();
val exorite = VanillaFactory.createItem("exorite_ingot");
exorite.register();

//Balancing ingredients
val rags_l = VanillaFactory.createItem("tattered_hide");
rags_l.register();
val hide_m = VanillaFactory.createItem("monster_hide");
hide_m.register();

val cooking_kit = VanillaFactory.createItem("cooking_kit");
cooking_kit.maxDamage = 420;
cooking_kit.maxStackSize = 1;
cooking_kit.register();

val redstuff = VanillaFactory.createItem("redstuff");
redstuff.register();

val draff = VanillaFactory.createItem("draff");
draff.register();

VanillaFactory.createItem("fiery_sludge").register();
VanillaFactory.createItem("ground_fiery_netherrack").register();

//Liquids
var ender_slag = VanillaFactory.createFluid("ender_slag", Color.fromHex("fffdd0"));
ender_slag.density = 1900;
ender_slag.temperature = 500;
ender_slag.viscosity = 2000;
ender_slag.stillLocation = "contenttweaker:fluids/ender_slag_still";
ender_slag.flowingLocation = "contenttweaker:fluids/ender_slag_flow";
ender_slag.colorize= true;
ender_slag.register();

var tannin = VanillaFactory.createFluid("tannin", Color.fromHex("df9232"));
tannin.density = 1000;
tannin.temperature = 310;
tannin.viscosity = 1050;
tannin.colorize= true;
tannin.vaporize= true;
tannin.register();

var lifeblood = VanillaFactory.createFluid("lifeblood", Color.fromHex("1b1e23"));
lifeblood.density = 1500;
lifeblood.gaseous = true;
lifeblood.luminosity = 15;
lifeblood.temperature = 400;
lifeblood.viscosity = 800;
lifeblood.stillLocation = "contenttweaker:fluids/dunamis_still";
lifeblood.flowingLocation = "contenttweaker:fluids/dunamis_flow";
lifeblood.colorize= false;
lifeblood.register();

var residual_mythril = VanillaFactory.createFluid("residual_mythril", Color.fromHex("fffdd0"));
residual_mythril.density = 528;
residual_mythril.luminosity = 3;
residual_mythril.temperature = 2500;
residual_mythril.viscosity = 5500;
residual_mythril.stillLocation = "contenttweaker:fluids/residual_mythril_still";
residual_mythril.flowingLocation = "contenttweaker:fluids/residual_mythril_flow";
residual_mythril.colorize= true;
residual_mythril.register();

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