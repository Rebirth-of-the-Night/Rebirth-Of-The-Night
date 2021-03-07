#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;

//misc.
val four_gems = VanillaFactory.createItem("four_gems");
four_gems.register();
val four_gem_ingots = VanillaFactory.createItem("four_gem_ingots");
four_gem_ingots.register();
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

val cooking_kit = VanillaFactory.createItem("cooking_kit");
cooking_kit.maxDamage = 420;
cooking_kit.maxStackSize = 1;
cooking_kit.register();

val spawn_scroll = VanillaFactory.createItem("spawn_scroll");
spawn_scroll.maxStackSize = 1;
spawn_scroll.itemRightClick = function(stack, world, player, hand) {
    stack.shrink(1);
    return "SUCCESS";
};
spawn_scroll.register();

val redstuff = VanillaFactory.createItem("redstuff");
redstuff.register();

val draff = VanillaFactory.createItem("draff");
draff.register();

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

//food
var rat = VanillaFactory.createItemFood("ratatouille", 10);
rat.setSaturation(9.5);
rat.register();

val sprinkles = VanillaFactory.createItem("sprinkles");
sprinkles.setCreativeTab(<creativetab:harvestCraft>);
sprinkles.register();

val raw_fries = VanillaFactory.createItemFood("raw_fries", 1);
raw_fries.setSaturation(2.5);
raw_fries.setCreativeTab(<creativetab:harvestCraft>);
raw_fries.register();

val ground_beef = VanillaFactory.createItemFood("ground_beef", 2);
ground_beef.setSaturation(2.5);
ground_beef.setCreativeTab(<creativetab:harvestCraft>);
ground_beef.register();

val wiener = VanillaFactory.createItem("wiener");
wiener.setCreativeTab(<creativetab:harvestCraft>);
wiener.register();

val sheep_intestines = VanillaFactory.createItem("sheep_intestines");
sheep_intestines.setCreativeTab(<creativetab:harvestCraft>);
sheep_intestines.register();

val patty = VanillaFactory.createItem("patty");
patty.setCreativeTab(<creativetab:harvestCraft>);
patty.register();

val hydraco = VanillaFactory.createItemFood("hydraco", 24);
hydraco.setSaturation(44.0);
hydraco.setCreativeTab(<creativetab:harvestCraft>);
hydraco.register();

val abyss_pizza = VanillaFactory.createItemFood("abyss_pizza", 1);
abyss_pizza.setSaturation(120.0);
abyss_pizza.setCreativeTab(<creativetab:harvestCraft>);
abyss_pizza.register();