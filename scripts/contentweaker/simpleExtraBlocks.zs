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


// Charcoal pile
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
halite.setToolLevel(0);
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
dolomite_straws.setToolLevel(0);
dolomite_straws.register();

// block_electrum
var blockElectrum = VanillaFactory.createBlock("block_electrum", <blockmaterial:Iron>);
blockElectrum.setCreativeTab(<creativetab:buildingBlocks>);
blockElectrum.setBlockHardness(3.0);
blockElectrum.setBlockResistance(12.0);
blockElectrum.setBeaconBase(true);
blockElectrum.register();

// block_bronze
var blockBronze = VanillaFactory.createBlock("block_bronze", <blockmaterial:Iron>);
blockBronze.setCreativeTab(<creativetab:buildingBlocks>);
blockBronze.setBlockHardness(4.0);
blockBronze.setBlockResistance(15.0);
blockBronze.setBeaconBase(true);
blockBronze.register();

// copper_plate
var copper_plate = VanillaFactory.createBlock("copper_plate", <blockmaterial:Iron>);
copper_plate.setCreativeTab(<creativetab:buildingBlocks>);
copper_plate.register();

// copper_patined
var copper_patined = VanillaFactory.createBlock("copper_patined", <blockmaterial:Iron>);
copper_patined.setCreativeTab(<creativetab:buildingBlocks>);
copper_plate.setBeaconBase(true);
copper_patined.register();

//Unfired Refractory Crucible
var crucible = VanillaFactory.createBlock("crucible", <blockmaterial:Iron>);
crucible.setCreativeTab(<creativetab:buildingBlocks>);
crucible.setBlockSoundType(<soundtype:ground>);
crucible.setFullBlock(false);
crucible.setToolLevel(0);
crucible.setToolClass("shovel");
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
pot_unfired.setToolLevel(0);
pot_unfired.setToolClass("shovel");
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
//exorite
var exoritefarlander = VanillaFactory.createBlock("farlanderexoritebrick", <blockmaterial:Iron>);
exoritefarlander.setCreativeTab(<creativetab:buildingBlocks>);
exoritefarlander.setBlockSoundType(<soundtype:glass>);
exoritefarlander.register();
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
witheredblock.setToolLevel(1);
witheredblock.setToolClass("shovel");
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
unfiredrefractory.setToolLevel(0);
unfiredrefractory.register();

var modelingrefractory = VanillaFactory.createBlock("modelingrefractory", <blockmaterial:Ground>);
modelingrefractory.setCreativeTab(<creativetab:buildingBlocks>);
modelingrefractory.setBlockSoundType(<soundtype:ground>);
modelingrefractory.setGravity(true);
modelingrefractory.setToolClass("shovel");
modelingrefractory.setToolLevel(0);
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

//Wood Boards
//oak
var oak_boards = VanillaFactory.createBlock("oak_boards", <blockmaterial:Wood>);
oak_boards.setCreativeTab(<creativetab:buildingBlocks>);
oak_boards.setToolClass("pickaxe");
oak_boards.setBlockHardness(7.0);
oak_boards.setToolLevel(1);
oak_boards.register();
//spruce
var spruce_boards = VanillaFactory.createBlock("spruce_boards", <blockmaterial:Wood>);
spruce_boards.setCreativeTab(<creativetab:buildingBlocks>);
spruce_boards.setToolClass("pickaxe");
spruce_boards.setBlockHardness(7.0);
spruce_boards.setToolLevel(1);
spruce_boards.register();
//birch
var birch_boards = VanillaFactory.createBlock("birch_boards", <blockmaterial:Wood>);
birch_boards.setCreativeTab(<creativetab:buildingBlocks>);
birch_boards.setToolClass("pickaxe");
birch_boards.setBlockHardness(7.0);
birch_boards.setToolLevel(1);
birch_boards.register();
//jungle
var jungle_boards = VanillaFactory.createBlock("jungle_boards", <blockmaterial:Wood>);
jungle_boards.setCreativeTab(<creativetab:buildingBlocks>);
jungle_boards.setToolClass("pickaxe");
jungle_boards.setBlockHardness(7.0);
jungle_boards.setToolLevel(1);
jungle_boards.register();
//acacia
var acacia_boards = VanillaFactory.createBlock("acacia_boards", <blockmaterial:Wood>);
acacia_boards.setCreativeTab(<creativetab:buildingBlocks>);
acacia_boards.setToolClass("pickaxe");
acacia_boards.setBlockHardness(7.0);
acacia_boards.setToolLevel(1);
acacia_boards.register();
//dark oak
var dark_oak_boards = VanillaFactory.createBlock("dark_oak_boards", <blockmaterial:Wood>);
dark_oak_boards.setCreativeTab(<creativetab:buildingBlocks>);
dark_oak_boards.setToolClass("pickaxe");
dark_oak_boards.setBlockHardness(7.0);
dark_oak_boards.setToolLevel(1);
dark_oak_boards.register();
//stalagnate
var stalagnate_boards = VanillaFactory.createBlock("stalagnate_boards", <blockmaterial:Wood>);
stalagnate_boards.setCreativeTab(<creativetab:buildingBlocks>);
stalagnate_boards.setToolClass("pickaxe");
stalagnate_boards.setBlockHardness(7.0);
stalagnate_boards.setToolLevel(1);
stalagnate_boards.register();
//sacred oak
var sacred_oak_boards = VanillaFactory.createBlock("sacred_oak_boards", <blockmaterial:Wood>);
sacred_oak_boards.setCreativeTab(<creativetab:buildingBlocks>);
sacred_oak_boards.setToolClass("pickaxe");
sacred_oak_boards.setBlockHardness(7.0);
sacred_oak_boards.setToolLevel(1);
sacred_oak_boards.register();
//cherry
var cherry_boards = VanillaFactory.createBlock("cherry_boards", <blockmaterial:Wood>);
cherry_boards.setCreativeTab(<creativetab:buildingBlocks>);
cherry_boards.setToolClass("pickaxe");
cherry_boards.setBlockHardness(7.0);
cherry_boards.setToolLevel(1);
cherry_boards.register();
//umbran
var umbran_boards = VanillaFactory.createBlock("umbran_boards", <blockmaterial:Wood>);
umbran_boards.setCreativeTab(<creativetab:buildingBlocks>);
umbran_boards.setToolClass("pickaxe");
umbran_boards.setBlockHardness(7.0);
umbran_boards.setToolLevel(1);
umbran_boards.register();
//fir
var fir_boards = VanillaFactory.createBlock("fir_boards", <blockmaterial:Wood>);
fir_boards.setCreativeTab(<creativetab:buildingBlocks>);
fir_boards.setToolClass("pickaxe");
fir_boards.setBlockHardness(7.0);
fir_boards.setToolLevel(1);
fir_boards.register();
//magic
var magic_boards = VanillaFactory.createBlock("magic_boards", <blockmaterial:Wood>);
magic_boards.setCreativeTab(<creativetab:buildingBlocks>);
magic_boards.setToolClass("pickaxe");
magic_boards.setBlockHardness(7.0);
magic_boards.setToolLevel(1);
magic_boards.register();
//mangrove
var mangrove_boards = VanillaFactory.createBlock("mangrove_boards", <blockmaterial:Wood>);
mangrove_boards.setCreativeTab(<creativetab:buildingBlocks>);
mangrove_boards.setToolClass("pickaxe");
mangrove_boards.setBlockHardness(7.0);
mangrove_boards.setToolLevel(1);
mangrove_boards.register();
//palm
var palm_boards = VanillaFactory.createBlock("palm_boards", <blockmaterial:Wood>);
palm_boards.setCreativeTab(<creativetab:buildingBlocks>);
palm_boards.setToolClass("pickaxe");
palm_boards.setBlockHardness(7.0);
palm_boards.setToolLevel(1);
palm_boards.register();
//redwood
var redwood_boards = VanillaFactory.createBlock("redwood_boards", <blockmaterial:Wood>);
redwood_boards.setCreativeTab(<creativetab:buildingBlocks>);
redwood_boards.setToolClass("pickaxe");
redwood_boards.setBlockHardness(7.0);
redwood_boards.setToolLevel(1);
redwood_boards.register();
//willow
var willow_boards = VanillaFactory.createBlock("willow_boards", <blockmaterial:Wood>);
willow_boards.setCreativeTab(<creativetab:buildingBlocks>);
willow_boards.setToolClass("pickaxe");
willow_boards.setBlockHardness(7.0);
willow_boards.setToolLevel(1);
willow_boards.register();
//pine
var pine_boards = VanillaFactory.createBlock("pine_boards", <blockmaterial:Wood>);
pine_boards.setCreativeTab(<creativetab:buildingBlocks>);
pine_boards.setToolClass("pickaxe");
pine_boards.setBlockHardness(7.0);
pine_boards.setToolLevel(1);
pine_boards.register();
//hellbark
var hellbark_boards = VanillaFactory.createBlock("hellbark_boards", <blockmaterial:Wood>);
hellbark_boards.setCreativeTab(<creativetab:buildingBlocks>);
hellbark_boards.setToolClass("pickaxe");
hellbark_boards.setBlockHardness(7.0);
hellbark_boards.setToolLevel(1);
hellbark_boards.register();
//jacaranda
var jacaranda_boards = VanillaFactory.createBlock("jacaranda_boards", <blockmaterial:Wood>);
jacaranda_boards.setCreativeTab(<creativetab:buildingBlocks>);
jacaranda_boards.setToolClass("pickaxe");
jacaranda_boards.setBlockHardness(7.0);
jacaranda_boards.setToolLevel(1);
jacaranda_boards.register();
//mahogany
var mahogany_boards = VanillaFactory.createBlock("mahogany_boards", <blockmaterial:Wood>);
mahogany_boards.setCreativeTab(<creativetab:buildingBlocks>);
mahogany_boards.setToolClass("pickaxe");
mahogany_boards.setBlockHardness(7.0);
mahogany_boards.setToolLevel(1);
mahogany_boards.register();
//ebony
var ebony_boards = VanillaFactory.createBlock("ebony_boards", <blockmaterial:Wood>);
ebony_boards.setCreativeTab(<creativetab:buildingBlocks>);
ebony_boards.setToolClass("pickaxe");
ebony_boards.setBlockHardness(7.0);
ebony_boards.setToolLevel(1);
ebony_boards.register();
//eucalyptus
var eucalyptus_boards = VanillaFactory.createBlock("eucalyptus_boards", <blockmaterial:Wood>);
eucalyptus_boards.setCreativeTab(<creativetab:buildingBlocks>);
eucalyptus_boards.setToolClass("pickaxe");
eucalyptus_boards.setBlockHardness(7.0);
eucalyptus_boards.setToolLevel(1);
eucalyptus_boards.register();
//tenebra
var tenebra_boards = VanillaFactory.createBlock("tenebra_boards", <blockmaterial:Wood>);
tenebra_boards.setCreativeTab(<creativetab:buildingBlocks>);
tenebra_boards.setToolClass("pickaxe");
tenebra_boards.setBlockHardness(7.0);
tenebra_boards.setToolLevel(1);
tenebra_boards.register();
//dreadwood
var dreadwood_boards = VanillaFactory.createBlock("dreadwood_boards", <blockmaterial:Wood>);
dreadwood_boards.setCreativeTab(<creativetab:buildingBlocks>);
dreadwood_boards.setToolClass("pickaxe");
dreadwood_boards.setBlockHardness(7.0);
dreadwood_boards.setToolLevel(1);
dreadwood_boards.register();
//olive
var olive_boards = VanillaFactory.createBlock("olive_boards", <blockmaterial:Wood>);
olive_boards.setCreativeTab(<creativetab:buildingBlocks>);
olive_boards.setToolClass("pickaxe");
olive_boards.setBlockHardness(7.0);
olive_boards.setToolLevel(1);
olive_boards.register();
//ironwood
var ironwood_boards = VanillaFactory.createBlock("ironwood_boards", <blockmaterial:Wood>);
ironwood_boards.setCreativeTab(<creativetab:buildingBlocks>);
ironwood_boards.setToolClass("pickaxe");
ironwood_boards.setBlockHardness(7.0);
ironwood_boards.setToolLevel(1);
ironwood_boards.register();
//wyrmwood
var wyrmwood_boards = VanillaFactory.createBlock("wyrmwood_boards", <blockmaterial:Wood>);
wyrmwood_boards.setCreativeTab(<creativetab:buildingBlocks>);
wyrmwood_boards.setToolClass("pickaxe");
wyrmwood_boards.setBlockHardness(7.0);
wyrmwood_boards.setToolLevel(1);
wyrmwood_boards.register();
//skywood
var skywood_boards = VanillaFactory.createBlock("skywood_boards", <blockmaterial:Wood>);
skywood_boards.setCreativeTab(<creativetab:buildingBlocks>);
skywood_boards.setToolClass("pickaxe");
skywood_boards.setBlockHardness(7.0);
skywood_boards.setToolLevel(1);
skywood_boards.register();

var egg_block = VanillaFactory.createBlock("egg_block", <blockmaterial:Dragon_Egg>);
egg_block.setCreativeTab(<creativetab:decorations>);
egg_block.setBlockSoundType(<soundtype:stone>);
egg_block.setToolClass("pickaxe");
egg_block.setFullBlock(false);
egg_block.setGravity(true);
egg_block.setLightOpacity(0);
egg_block.setBlockLayer("CUTOUT");
egg_block.setToolLevel(0);
egg_block.register();

var micomi_foundation = VanillaFactory.createBlock("micomi_foundation", <blockmaterial:Rock>);
micomi_foundation.setCreativeTab(<creativetab:buildingBlocks>);
micomi_foundation.setBlockSoundType(<soundtype:stone>);
micomi_foundation.setBlockHardness(4.0);
micomi_foundation.setBlockResistance(20.0);
micomi_foundation.setToolLevel(0);
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
planarspsp2.setToolLevel(99);
planarspsp2.register();

var salty_crust = VanillaFactory.createBlock("salty_crust", <blockmaterial:Ground>);
salty_crust.setCreativeTab(<creativetab:buildingBlocks>);
salty_crust.setBlockSoundType(<soundtype:ground>);
salty_crust.setToolClass("shovel");
salty_crust.setBlockHardness(1.0);
salty_crust.setBlockResistance(5.0);
salty_crust.setToolLevel(0);
salty_crust.register();

var rocky_dirt = VanillaFactory.createBlock("rocky_dirt", <blockmaterial:Ground>);
rocky_dirt.setCreativeTab(<creativetab:buildingBlocks>);
rocky_dirt.setBlockSoundType(<soundtype:ground>);
rocky_dirt.setToolClass("shovel");
rocky_dirt.setBlockHardness(4.0);
rocky_dirt.setBlockResistance(5.0);
rocky_dirt.setToolLevel(1);
rocky_dirt.register();

//sandstone native copper
var n_copper_sandstone = VanillaFactory.createBlock("n_copper_sandstone", <blockmaterial:Rock>);
n_copper_sandstone.setCreativeTab(<creativetab:buildingBlocks>);
n_copper_sandstone.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone.setBlockHardness(4.0);
n_copper_sandstone.setBlockResistance(15.0);
n_copper_sandstone.setBeaconBase(true);
n_copper_sandstone.setToolLevel(0);
n_copper_sandstone.register();

var n_copper_sandstone_red = VanillaFactory.createBlock("n_copper_sandstone_red", <blockmaterial:Rock>);
n_copper_sandstone_red.setCreativeTab(<creativetab:buildingBlocks>);
n_copper_sandstone_red.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone_red.setBlockHardness(4.0);
n_copper_sandstone_red.setBlockResistance(15.0);
n_copper_sandstone_red.setBeaconBase(true);
n_copper_sandstone_red.setToolLevel(0);
n_copper_sandstone_red.register();

// cobblestone paths
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
cobblestone_path_coade.setToolLevel(0);
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
cobblestone_path_red_granite.setToolLevel(0);
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
glareshaft.setToolLevel(0);
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
yeast_flour.dropHandler = function(drops, world, pos, state, fortune) {
	drops.clear();
};
yeast_flour.onRandomTick = function(world, pos, state) {
	if ((world.getWorldTime() % 20) < 1) {
		world.setBlockState(<block:contenttweaker:yeast>, pos);
	}
};
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
yeast.dropHandler = function(drops, world, pos, state, fortune) {
	drops.clear();
};
yeast.register();
