#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

//misc.
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

//food
//val rat = mods.contenttweaker.VanillaFactory.createItemFood("ratatouille", 10);
//rat.healAmount = 9;
//rat.register();