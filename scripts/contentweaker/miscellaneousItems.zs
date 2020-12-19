#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

//misc.
val four_gems = mods.contenttweaker.VanillaFactory.createItem("four_gems");
four_gems.register();
val four_gem_ingots = mods.contenttweaker.VanillaFactory.createItem("four_gem_ingots");
four_gem_ingots.register();
val phos = mods.contenttweaker.VanillaFactory.createItem("phosphophyllite");
phos.register();
val coin1 = mods.contenttweaker.VanillaFactory.createItem("coinT1");
coin1.register();
val coin2 = mods.contenttweaker.VanillaFactory.createItem("coinT2");
coin2.register();
val coin3 = mods.contenttweaker.VanillaFactory.createItem("coinT3");
coin3.register();
val coin4 = mods.contenttweaker.VanillaFactory.createItem("coinT4");
coin4.register();
val pcoin = mods.contenttweaker.VanillaFactory.createItem("nethercoin");
pcoin.register();
val info = mods.contenttweaker.VanillaFactory.createItem("info");
info.register();
val clover4 = mods.contenttweaker.VanillaFactory.createItem("4leaf_clover");
clover4.register();
val clover5 = mods.contenttweaker.VanillaFactory.createItem("5leaf_clover");
clover5.register();
val spider_silk = mods.contenttweaker.VanillaFactory.createItem("spider_silk");
spider_silk.register();

val sfs1 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact");
sfs1.register();
val sfs2 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact1");
sfs2.register();
val sfs3 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact2");
sfs3.register();
val sfs4 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact3");
sfs4.register();
val sfs5 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact4");
sfs5.register();
val sfs6 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact5");
sfs6.register();
val sfs7 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact6");
sfs7.register();
val sfs8 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact7");
sfs8.register();
val sfs9 = mods.contenttweaker.VanillaFactory.createItem("sfs_artifact8");
sfs9.register();

//non-ingot ingots
val sapphire = mods.contenttweaker.VanillaFactory.createItem("sapphire_ingot");
sapphire.register();
val ruby = mods.contenttweaker.VanillaFactory.createItem("ruby_ingot");
ruby.register();
val peridot = mods.contenttweaker.VanillaFactory.createItem("peridot_ingot");
peridot.register();
val amethyst = mods.contenttweaker.VanillaFactory.createItem("amethyst_ingot");
amethyst.register();

//Balancing ingredients
val rags_l = mods.contenttweaker.VanillaFactory.createItem("tattered_hide");
rags_l.register();
val hide_m = mods.contenttweaker.VanillaFactory.createItem("monster_hide");
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

val cooking_kit = mods.contenttweaker.VanillaFactory.createItem("cooking_kit");
cooking_kit.maxDamage = 420;
cooking_kit.maxStackSize = 1;
cooking_kit.register();

// Cut Gems

val cutdiamond = mods.contenttweaker.VanillaFactory.createItem("pristine_diamond");
cutdiamond.register();

val cutemerald = mods.contenttweaker.VanillaFactory.createItem("poisonetched_emerald");
cutemerald.register();

val cutruby = mods.contenttweaker.VanillaFactory.createItem("fortified_ruby");
cutruby.register();

val cutsapphire = mods.contenttweaker.VanillaFactory.createItem("waterlogged_sapphire");
cutsapphire.register();

val cutperidot = mods.contenttweaker.VanillaFactory.createItem("lucky_peridot");
cutperidot.register();

val cutonyx1 = mods.contenttweaker.VanillaFactory.createItem("fireetched_onyx");
cutonyx1.register();

val cutonyx2 = mods.contenttweaker.VanillaFactory.createItem("soulinfused_onyx");
cutonyx2.register();

val cutzanite1 = mods.contenttweaker.VanillaFactory.createItem("holy_zanite");
cutzanite1.register();

val cutzanite2 = mods.contenttweaker.VanillaFactory.createItem("electrified_zanite");
cutzanite2.register();

val cutamethyst = mods.contenttweaker.VanillaFactory.createItem("voidseen_amethyst");
cutamethyst.register();

val cutcarminite = mods.contenttweaker.VanillaFactory.createItem("draconium");
cutcarminite.register();

// Peculiar items
val heartofthefallen = mods.contenttweaker.VanillaFactory.createItem("heartofthefallen");
heartofthefallen.register();

val heavensheart = mods.contenttweaker.VanillaFactory.createItem("heavensheart");
heavensheart.register();

val heart_of_fire = mods.contenttweaker.VanillaFactory.createItem("heart_of_fire");
heart_of_fire.register();

val adhesive_shadow = mods.contenttweaker.VanillaFactory.createItem("adhesive_shadow");
adhesive_shadow.register();

val shard_of_night = mods.contenttweaker.VanillaFactory.createItem("shard_of_night");
shard_of_night.register();

val brain = mods.contenttweaker.VanillaFactory.createItem("brain");
brain.register();

val slayers_tattered_journal = mods.contenttweaker.VanillaFactory.createItem("slayers_tattered_journal");
slayers_tattered_journal.register();

val grove_tear = mods.contenttweaker.VanillaFactory.createItem("grove_tear");
grove_tear.register();

val purifying_signet = mods.contenttweaker.VanillaFactory.createItem("purifying_signet");
purifying_signet.register();

val stormcloud = mods.contenttweaker.VanillaFactory.createItem("stormcloud");
stormcloud.register();

val mercurial_ooze = mods.contenttweaker.VanillaFactory.createItem("mercurial_ooze");
mercurial_ooze.register();

//food
var rat = mods.contenttweaker.VanillaFactory.createItemFood("ratatouille", 10);
rat.setSaturation(9.5);
rat.register();

val sprinkles = mods.contenttweaker.VanillaFactory.createItem("sprinkles");
sprinkles.setCreativeTab(<creativetab:harvestCraft>);
sprinkles.register();

val raw_fries = mods.contenttweaker.VanillaFactory.createItemFood("raw_fries", 1);
raw_fries.setSaturation(2.5);
raw_fries.setCreativeTab(<creativetab:harvestCraft>);
raw_fries.register();

val ground_beef = mods.contenttweaker.VanillaFactory.createItemFood("ground_beef", 2);
ground_beef.setSaturation(2.5);
ground_beef.setCreativeTab(<creativetab:harvestCraft>);
ground_beef.register();

val wiener = mods.contenttweaker.VanillaFactory.createItem("wiener");
wiener.setCreativeTab(<creativetab:harvestCraft>);
wiener.register();

val sheep_intestines = mods.contenttweaker.VanillaFactory.createItem("sheep_intestines");
sheep_intestines.setCreativeTab(<creativetab:harvestCraft>);
sheep_intestines.register();

val patty = mods.contenttweaker.VanillaFactory.createItem("patty");
patty.setCreativeTab(<creativetab:harvestCraft>);
patty.register();

val hydraco = mods.contenttweaker.VanillaFactory.createItemFood("hydraco", 24);
hydraco.setSaturation(44.0);
hydraco.setCreativeTab(<creativetab:harvestCraft>);
hydraco.register();

val abyss_pizza = mods.contenttweaker.VanillaFactory.createItemFood("abyss_pizza", 1);
abyss_pizza.setSaturation(120.0);
abyss_pizza.setCreativeTab(<creativetab:harvestCraft>);
abyss_pizza.register();