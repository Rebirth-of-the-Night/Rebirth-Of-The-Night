#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;

import mods.contenttweaker.AxisAlignedBB;

/*Recipes for Extra Blocks are handled in the minecraft.zs script*/

//Dormant Ardicite Onyx
var dormant_ardicite_onyx = VanillaFactory.createBlock("dormant_ardicite_onyx", <blockmaterial:Rock>);
dormant_ardicite_onyx.setCreativeTab(<creativetab:buildingBlocks>);
dormant_ardicite_onyx.setBlockSoundType(<soundtype:stone>);
dormant_ardicite_onyx.setToolLevel(99);
dormant_ardicite_onyx.setBlockHardness(999.0);
dormant_ardicite_onyx.setBlockResistance(999.0);
dormant_ardicite_onyx.setBeaconBase(false);
dormant_ardicite_onyx.register();

//Dormant Onyx
var dormant_onyx = VanillaFactory.createBlock("dormant_onyx", <blockmaterial:Rock>);
dormant_onyx.setCreativeTab(<creativetab:buildingBlocks>);
dormant_onyx.setBlockSoundType(<soundtype:stone>);
dormant_onyx.setToolLevel(99);
dormant_onyx.setBlockHardness(999.0);
dormant_onyx.setBlockResistance(999.0);
dormant_onyx.setBeaconBase(false);
dormant_onyx.register();


//Charcoal pile
var charlog = VanillaFactory.createBlock("charcoal_pile", <blockmaterial:Wood>);
charlog.setCreativeTab(<creativetab:buildingBlocks>);
charlog.setBlockSoundType(<soundtype:Ground>);
charlog.setToolClass("axe");
charlog.register();

//Halite /salt ore/
var halite = VanillaFactory.createBlock("halite", <blockmaterial:Rock>);
halite.setCreativeTab(<creativetab:buildingBlocks>);
halite.setFullBlock(false);
halite.setBlockSoundType(<soundtype:glass>);
halite.setBlockLayer("TRANSLUCENT");
halite.setTranslucent(true);
halite.setLightOpacity(0);
halite.register();

//Speleothems
var dolomite_straws = VanillaFactory.createBlock("dolomite_straws", <blockmaterial:Rock>);
dolomite_straws.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     2.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
dolomite_straws.setFullBlock(false);
dolomite_straws.setLightOpacity(0);
dolomite_straws.setCreativeTab(<creativetab:decorations>);
dolomite_straws.setBlockSoundType(<soundtype:stone>);
dolomite_straws.register();

//block_electrum
var blockElectrum = VanillaFactory.createBlock("block_electrum", <blockmaterial:Iron>);
blockElectrum.setCreativeTab(<creativetab:buildingBlocks>);
blockElectrum.setBlockHardness(3.0);
blockElectrum.setBlockResistance(12.0);
blockElectrum.setBeaconBase(true);
blockElectrum.register();

//block_bronze
var blockBronze = VanillaFactory.createBlock("block_bronze", <blockmaterial:Iron>);
blockBronze.setCreativeTab(<creativetab:buildingBlocks>);
blockBronze.setBlockHardness(4.0);
blockBronze.setBlockResistance(15.0);
blockBronze.setBeaconBase(true);
blockBronze.register();

//copper_plate
var copper_plate = VanillaFactory.createBlock("copper_plate", <blockmaterial:Iron>);
copper_plate.setCreativeTab(<creativetab:buildingBlocks>);
copper_plate.register();

//copper_patined
var copper_patined = VanillaFactory.createBlock("copper_patined", <blockmaterial:Iron>);
copper_patined.setCreativeTab(<creativetab:buildingBlocks>);
copper_plate.setBeaconBase(true);
copper_patined.register();

//Unfired Refractory Crucible
var crucible = VanillaFactory.createBlock("crucible", <blockmaterial:Iron>);
crucible.setCreativeTab(<creativetab:buildingBlocks>);
crucible.setBlockSoundType(<soundtype:ground>);
crucible.setFullBlock(false);
crucible.register();

//Unfired Rustic Vase
var pot_unfired = VanillaFactory.createBlock("pot_unfired", <blockmaterial:Clay>);
pot_unfired.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	14.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
pot_unfired.setFullBlock(false);
pot_unfired.setLightOpacity(0);
pot_unfired.setCreativeTab(<creativetab:buildingBlocks>);
pot_unfired.setBlockSoundType(<soundtype:ground>);
pot_unfired.register();

//Broken Elevator
var elevator = VanillaFactory.createBlock("elevator", <blockmaterial:Ground>);
elevator.setCreativeTab(<creativetab:redstone>);
elevator.setBlockSoundType(<soundtype:stone>);
elevator.setFullBlock(false);
elevator.register();

//Broken Healing Pad
var healing = VanillaFactory.createBlock("healing", <blockmaterial:Ground>);
healing.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    8.0 / 16.0,
    16.0 / 16.0
	);
healing.setBlockSoundType(<soundtype:stone>);
healing.setFullBlock(false);
healing.register();

//Lunarin blocks
//Silver
var silverlunarin = VanillaFactory.createBlock("lunarinsilverbrick", <blockmaterial:Iron>);
silverlunarin.setCreativeTab(<creativetab:buildingBlocks>);
silverlunarin.register();
//Viridium
var viridiumlunarin = VanillaFactory.createBlock("lunarinviridiumbrick", <blockmaterial:Iron>);
viridiumlunarin.setCreativeTab(<creativetab:buildingBlocks>);
viridiumlunarin.register();
//Mythril
var mythrillunarin = VanillaFactory.createBlock("lunarinmythrilbrick", <blockmaterial:Iron>);
mythrillunarin.setCreativeTab(<creativetab:buildingBlocks>);
mythrillunarin.register();
//Endorium
var endoriumlunarin = VanillaFactory.createBlock("lunarinendoriumbrick", <blockmaterial:Iron>);
endoriumlunarin.setCreativeTab(<creativetab:buildingBlocks>);
endoriumlunarin.register();
//Hearth
var heartlunarin = VanillaFactory.createBlock("lunarinheartbrick", <blockmaterial:Iron>);
heartlunarin.setCreativeTab(<creativetab:buildingBlocks>);
heartlunarin.register();
//Ice Dragon Steel
var icelunarin = VanillaFactory.createBlock("lunarinicebrick", <blockmaterial:Iron>);
icelunarin.setCreativeTab(<creativetab:buildingBlocks>);
icelunarin.register();
//Fire Dragon Steel
var firelunarin = VanillaFactory.createBlock("lunarinfirebrick", <blockmaterial:Iron>);
firelunarin.setCreativeTab(<creativetab:buildingBlocks>);
firelunarin.register();
//Fiery Metal
var fierylunarin = VanillaFactory.createBlock("lunarinfierybrick", <blockmaterial:Iron>);
fierylunarin.setCreativeTab(<creativetab:buildingBlocks>);
fierylunarin.register();
//Knight Metal
var knightlunarin = VanillaFactory.createBlock("lunarinknightbrick", <blockmaterial:Iron>);
knightlunarin.setCreativeTab(<creativetab:buildingBlocks>);
knightlunarin.register();
//Steel
var steellunarin = VanillaFactory.createBlock("lunarinsteelbrick", <blockmaterial:Iron>);
steellunarin.setCreativeTab(<creativetab:buildingBlocks>);
steellunarin.register();
//Sfs
var sfslunarin = VanillaFactory.createBlock("lunarinsfsbrick", <blockmaterial:Iron>);
sfslunarin.setCreativeTab(<creativetab:buildingBlocks>);
sfslunarin.register();
//Mediterranean lunarin mama mia brick block
var BBlunarin = VanillaFactory.createBlock("baguettebrick", <blockmaterial:Rock>);
BBlunarin.setCreativeTab(<creativetab:buildingBlocks>);
BBlunarin.register();

//Farlander Style
//amethyst
var amethystfarlander = VanillaFactory.createBlock("farlanderamethystbrick", <blockmaterial:Iron>);
amethystfarlander.setCreativeTab(<creativetab:buildingBlocks>);
amethystfarlander.setBlockSoundType(<soundtype:glass>);
amethystfarlander.register();
//zanite
var zanitefarlander = VanillaFactory.createBlock("farlanderzanitebrick", <blockmaterial:Iron>);
zanitefarlander.setCreativeTab(<creativetab:buildingBlocks>);
zanitefarlander.setBlockSoundType(<soundtype:glass>);
zanitefarlander.register();
//diamond
var diamondfarlander = VanillaFactory.createBlock("farlanderdiamondbrick", <blockmaterial:Iron>);
diamondfarlander.setCreativeTab(<creativetab:buildingBlocks>);
diamondfarlander.setBlockSoundType(<soundtype:glass>);
diamondfarlander.register();

//Storage blocks
var witheredblock = VanillaFactory.createBlock("witheredblock", <blockmaterial:Sand>);
witheredblock.setCreativeTab(<creativetab:buildingBlocks>);
witheredblock.setBlockSoundType(<soundtype:sand>);
witheredblock.setGravity(true);
witheredblock.register();

var starblock = VanillaFactory.createBlock("starblock", <blockmaterial:Glass>);
starblock.setCreativeTab(<creativetab:buildingBlocks>);
starblock.setLightValue(8);
starblock.setBlockSoundType(<soundtype:stone>);
starblock.setBlockHardness(20);
starblock.setBlockMaterial(<blockmaterial:fire>);
starblock.register();

var unfiredrefractory = VanillaFactory.createBlock("unfiredrefractory", <blockmaterial:Ground>);
unfiredrefractory.setCreativeTab(<creativetab:buildingBlocks>);
unfiredrefractory.setBlockSoundType(<soundtype:ground>);
unfiredrefractory.setToolClass("shovel");
unfiredrefractory.register();

var modelingrefractory = VanillaFactory.createBlock("modelingrefractory", <blockmaterial:Ground>);
modelingrefractory.setCreativeTab(<creativetab:buildingBlocks>);
modelingrefractory.setBlockSoundType(<soundtype:ground>);
modelingrefractory.setGravity(true);
modelingrefractory.setToolClass("shovel");
modelingrefractory.register();

var refracotta = VanillaFactory.createBlock("refracotta", <blockmaterial:Rock>);
refracotta.setCreativeTab(<creativetab:buildingBlocks>);
refracotta.setBlockSoundType(<soundtype:stone>);
refracotta.setToolClass("pickaxe");
refracotta.register();

var refracotta_black = VanillaFactory.createBlock("refracotta_black", <blockmaterial:Rock>);
refracotta_black.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_black.setBlockSoundType(<soundtype:stone>);
refracotta_black.setToolClass("pickaxe");
refracotta_black.register();

var refracotta_red = VanillaFactory.createBlock("refracotta_red", <blockmaterial:Rock>);
refracotta_red.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_red.setBlockSoundType(<soundtype:stone>);
refracotta_red.setToolClass("pickaxe");
refracotta_red.register();

var refracotta_green = VanillaFactory.createBlock("refracotta_green", <blockmaterial:Rock>);
refracotta_green.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_green.setBlockSoundType(<soundtype:stone>);
refracotta_green.setToolClass("pickaxe");
refracotta_green.register();

var refracotta_brown = VanillaFactory.createBlock("refracotta_brown", <blockmaterial:Rock>);
refracotta_brown.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_brown.setBlockSoundType(<soundtype:stone>);
refracotta_brown.setToolClass("pickaxe");
refracotta_brown.register();

var refracotta_blue = VanillaFactory.createBlock("refracotta_blue", <blockmaterial:Rock>);
refracotta_blue.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_blue.setBlockSoundType(<soundtype:stone>);
refracotta_blue.setToolClass("pickaxe");
refracotta_blue.register();

var refracotta_purple = VanillaFactory.createBlock("refracotta_purple", <blockmaterial:Rock>);
refracotta_purple.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_purple.setBlockSoundType(<soundtype:stone>);
refracotta_purple.setToolClass("pickaxe");
refracotta_purple.register();

var refracotta_cyan = VanillaFactory.createBlock("refracotta_cyan", <blockmaterial:Rock>);
refracotta_cyan.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_cyan.setBlockSoundType(<soundtype:stone>);
refracotta_cyan.setToolClass("pickaxe");
refracotta_cyan.register();

var refracotta_light_gray = VanillaFactory.createBlock("refracotta_light_gray", <blockmaterial:Rock>);
refracotta_light_gray.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_light_gray.setBlockSoundType(<soundtype:stone>);
refracotta_light_gray.setToolClass("pickaxe");
refracotta_light_gray.register();

var refracotta_gray = VanillaFactory.createBlock("refracotta_gray", <blockmaterial:Rock>);
refracotta_gray.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_gray.setBlockSoundType(<soundtype:stone>);
refracotta_gray.setToolClass("pickaxe");
refracotta_gray.register();

var refracotta_pink = VanillaFactory.createBlock("refracotta_pink", <blockmaterial:Rock>);
refracotta_pink.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_pink.setBlockSoundType(<soundtype:stone>);
refracotta_pink.setToolClass("pickaxe");
refracotta_pink.register();

var refracotta_lime = VanillaFactory.createBlock("refracotta_lime", <blockmaterial:Rock>);
refracotta_lime.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_lime.setBlockSoundType(<soundtype:stone>);
refracotta_lime.setToolClass("pickaxe");
refracotta_lime.register();

var refracotta_yellow = VanillaFactory.createBlock("refracotta_yellow", <blockmaterial:Rock>);
refracotta_yellow.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_yellow.setBlockSoundType(<soundtype:stone>);
refracotta_yellow.setToolClass("pickaxe");
refracotta_yellow.register();

var refracotta_light_blue = VanillaFactory.createBlock("refracotta_light_blue", <blockmaterial:Rock>);
refracotta_light_blue.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_light_blue.setBlockSoundType(<soundtype:stone>);
refracotta_light_blue.setToolClass("pickaxe");
refracotta_light_blue.register();

var refracotta_magenta = VanillaFactory.createBlock("refracotta_magenta", <blockmaterial:Rock>);
refracotta_magenta.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_magenta.setBlockSoundType(<soundtype:stone>);
refracotta_magenta.setToolClass("pickaxe");
refracotta_magenta.register();

var refracotta_orange = VanillaFactory.createBlock("refracotta_orange", <blockmaterial:Rock>);
refracotta_orange.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_orange.setBlockSoundType(<soundtype:stone>);
refracotta_orange.setToolClass("pickaxe");
refracotta_orange.register();

var refracotta_white = VanillaFactory.createBlock("refracotta_white", <blockmaterial:Rock>);
refracotta_white.setCreativeTab(<creativetab:buildingBlocks>);
refracotta_white.setBlockSoundType(<soundtype:stone>);
refracotta_white.setToolClass("pickaxe");
refracotta_white.register();

var egg_block = VanillaFactory.createBlock("egg_block", <blockmaterial:Dragon_Egg>);
egg_block.setCreativeTab(<creativetab:decorations>);
egg_block.setBlockSoundType(<soundtype:stone>);
egg_block.setToolClass("pickaxe");
egg_block.setFullBlock(false);
egg_block.setGravity(true);
egg_block.setLightOpacity(0);
egg_block.setBlockLayer("CUTOUT");
egg_block.register();

var micomi_foundation = VanillaFactory.createBlock("micomi_foundation", <blockmaterial:Rock>);
micomi_foundation.setCreativeTab(<creativetab:buildingBlocks>);
micomi_foundation.setBlockSoundType(<soundtype:stone>);
micomi_foundation.setBlockHardness(3.0);
micomi_foundation.setBlockResistance(20.0);
micomi_foundation.register();

var fire_block = VanillaFactory.createBlock("fire_block", <blockmaterial:Fire>);
fire_block.setBlockSoundType(<soundtype:cloth>);
fire_block.setLightValue(15);
fire_block.setBlockLayer("CUTOUT");
fire_block.setPassable(true);
fire_block.setCreativeTab(<creativetab:decorations>);
fire_block.register();

var planarspsp2 = VanillaFactory.createBlock("planarspsp2", <blockmaterial:Rock>);
planarspsp2.setCreativeTab(<creativetab:buildingBlocks>);
planarspsp2.setBlockHardness(350.0);
planarspsp2.setBlockResistance(3600000.0);
planarspsp2.setBlockSoundType(<soundtype:stone>);
planarspsp2.setToolClass("pickaxe");
planarspsp2.setToolLevel(6);
planarspsp2.register();

var salty_crust = VanillaFactory.createBlock("salty_crust", <blockmaterial:Ground>);
salty_crust.setCreativeTab(<creativetab:buildingBlocks>);
salty_crust.setBlockSoundType(<soundtype:ground>);
salty_crust.setToolClass("shovel");
salty_crust.setBlockHardness(1.0);
salty_crust.setBlockResistance(5.0);
salty_crust.register();

var rocky_dirt = VanillaFactory.createBlock("rocky_dirt", <blockmaterial:Ground>);
rocky_dirt.setCreativeTab(<creativetab:buildingBlocks>);
rocky_dirt.setBlockSoundType(<soundtype:ground>);
rocky_dirt.setToolClass("shovel");
rocky_dirt.setBlockHardness(4.0);
rocky_dirt.setBlockResistance(5.0);
rocky_dirt.register();

//sandstone native copper
var n_copper_sandstone = VanillaFactory.createBlock("n_copper_sandstone", <blockmaterial:Rock>);
n_copper_sandstone.setCreativeTab(<creativetab:buildingBlocks>);
n_copper_sandstone.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone.setBlockHardness(4.0);
n_copper_sandstone.setBlockResistance(15.0);
n_copper_sandstone.setBeaconBase(true);
n_copper_sandstone.register();

var n_copper_sandstone_red = VanillaFactory.createBlock("n_copper_sandstone_red", <blockmaterial:Rock>);
n_copper_sandstone_red.setCreativeTab(<creativetab:buildingBlocks>);
n_copper_sandstone_red.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone_red.setBlockHardness(4.0);
n_copper_sandstone_red.setBlockResistance(15.0);
n_copper_sandstone_red.setBeaconBase(true);
n_copper_sandstone_red.register();

//cobblestone paths
var cobblestone_path_coade = VanillaFactory.createBlock("cobblestone_path_coade", <blockmaterial:Rock>);
cobblestone_path_coade.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_coade.setFullBlock(false);
cobblestone_path_coade.setLightOpacity(254);
cobblestone_path_coade.setSlipperiness(0.75f);
cobblestone_path_coade.setCreativeTab(<creativetab:decorations>);
cobblestone_path_coade.register();

var cobblestone_path_red_granite = VanillaFactory.createBlock("cobblestone_path_red_granite", <blockmaterial:Rock>);
cobblestone_path_red_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_red_granite.setFullBlock(false);
cobblestone_path_red_granite.setLightOpacity(254);
cobblestone_path_red_granite.setSlipperiness(0.75f);
cobblestone_path_red_granite.setCreativeTab(<creativetab:decorations>);
cobblestone_path_red_granite.register();

//torch posts / vanilla torch post is BWM's shaft
var glareshaft = VanillaFactory.createBlock("glareshaft_small", <blockmaterial:Rock>);
glareshaft.axisAlignedBB = AxisAlignedBB.create(
     7.0 / 16.0,
     0.0 / 16.0,
     7.0 / 16.0,
	9.0 / 16.0,
    14.0 / 16.0,
    9.0 / 16.0
	);
glareshaft.setFullBlock(false);
glareshaft.setLightOpacity(0);
glareshaft.setBlockLayer("CUTOUT");
glareshaft.setCreativeTab(<creativetab:buildingBlocks>);
glareshaft.register();

//Yeast flour
var yeast_flour = VanillaFactory.createBlock("yeast_flour", <blockmaterial:Cloth>);
yeast_flour.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
yeast_flour.setFullBlock(false);
yeast_flour.setLightOpacity(0);
yeast_flour.setBlockLayer("TRANSLUCENT");
yeast_flour.setCreativeTab(<creativetab:harvestCraft>);
yeast_flour.setBlockSoundType(<soundtype:cloth>);
yeast_flour.register();

//Yeast
var yeast = VanillaFactory.createBlock("yeast", <blockmaterial:Cloth>);
yeast.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
yeast.setFullBlock(false);
yeast.setLightOpacity(0);
yeast.setBlockLayer("TRANSLUCENT");
yeast.setCreativeTab(<creativetab:harvestCraft>);
yeast.setBlockSoundType(<soundtype:cloth>);
yeast.register();