#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

// This is for adding dummy items so that they can be referenced and shown in the Patchouli guidebook
// Most notable case use are the DT wands

val dummyWandCompanion = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_companion");
dummyWandCompanion.register();

val dummyWandCook = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_cook");
dummyWandCook.register();

val dummyWandDisarm = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_disarm");
dummyWandDisarm.register();

val dummyWandDisorient = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_disorient");
dummyWandDisorient.register();

val dummyWandForge = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_forge");
dummyWandForge.register();

val dummyWandFreeze = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_freeze");
dummyWandFreeze.register();

val dummyWandMM = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_mm");
dummyWandMM.register();

val dummyWandPM = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_pm");
dummyWandPM.register();

val dummyWandPunish = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_punish");
dummyWandPunish.register();

val dummyWandRage = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_rage");
dummyWandRage.register();

val dummyWandResto = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_resto");
dummyWandResto.register();

val dummyWandSatiate = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_satiate");
dummyWandSatiate.register();

val dummyWandSmite = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_smite");
dummyWandSmite.register();

val dummyWandTransport = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_transport");
dummyWandTransport.register();

val dummyWandUncover = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_uncover");
dummyWandUncover.register();

val dummyWandWither = mods.contenttweaker.VanillaFactory.createItem("dummy_wand_wither");
dummyWandWither.register();
