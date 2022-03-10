#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;

import mods.contenttweaker.AxisAlignedBB;

/*Recipes for Extra Blocks are handled in the minecraft.zs script
/////////////////////////////////////////////////////////////////
//////////////////////////IMPORTANT//////////////////////////////
/////////////////////////////////////////////////////////////////
When creating a simple block (opaque, same texture on all sides), 
change its blockstate to use cube_all as its model, since the de-
fault model does not cull faces and can decrease performance when
used a lot. DO NOT FORGET to add a new texture key to the textu-
res object like this:

	"all": "contenttweaker:blocks/name_of_your_texture"
	
Otherwise, you will get missing texture blocks. special blocks
(smaller, bigger, unique model, transparent, etc.)can ignore this
rule.
*/

val rotn_b = VanillaFactory.createCreativeTab("rotn_blocks", <item:minecraft:stick>);
rotn_b.register();

// Dormant Ardicite Onyx
var dormant_ardicite_onyx = VanillaFactory.createBlock("dormant_ardicite_onyx", <blockmaterial:Rock>);
dormant_ardicite_onyx.setCreativeTab(<creativetab:rotn_blocks>);
dormant_ardicite_onyx.setBlockSoundType(<soundtype:stone>);
dormant_ardicite_onyx.setToolLevel(99);
dormant_ardicite_onyx.setBlockHardness(9999999999999999.0);
dormant_ardicite_onyx.setBlockResistance(9999999999999999.0);
dormant_ardicite_onyx.setBeaconBase(false);
dormant_ardicite_onyx.register();

// Dormant Onyx
var dormant_onyx = VanillaFactory.createBlock("dormant_onyx", <blockmaterial:Rock>);
dormant_onyx.setCreativeTab(<creativetab:rotn_blocks>);
dormant_onyx.setBlockSoundType(<soundtype:stone>);
dormant_onyx.setToolLevel(99);
dormant_onyx.setBlockHardness(9999999999999999.0);
dormant_onyx.setBlockResistance(9999999999999999.0);
dormant_onyx.setBeaconBase(false);
dormant_onyx.register();

//  Fiery nether sludge
var fiery_nether_sludge = VanillaFactory.createBlock("fiery_nether_sludge", <blockmaterial:Ground>);
fiery_nether_sludge.setCreativeTab(<creativetab:rotn_blocks>);
fiery_nether_sludge.setBlockSoundType(<soundtype:Ground>);
fiery_nether_sludge.setToolClass("none");
fiery_nether_sludge.setToolLevel(0);
fiery_nether_sludge.setBlockHardness(2.0);
fiery_nether_sludge.register();

//  Hardened fiery nether sludge
var hardened_fiery_nether_sludge = VanillaFactory.createBlock("hardened_fiery_nether_sludge", <blockmaterial:Rock>);
hardened_fiery_nether_sludge.setCreativeTab(<creativetab:rotn_blocks>);
hardened_fiery_nether_sludge.setToolLevel(0);
hardened_fiery_nether_sludge.setBlockHardness(2.8);
hardened_fiery_nether_sludge.register();

// Charcoal pile
var charlog = VanillaFactory.createBlock("charcoal_pile", <blockmaterial:Wood>);
charlog.setCreativeTab(<creativetab:rotn_blocks>);
charlog.setBlockSoundType(<soundtype:Ground>);
charlog.setToolClass("axe");
charlog.register();

// Peat
var peat = VanillaFactory.createBlock("peat", <blockmaterial:Ground>);
peat.setCreativeTab(<creativetab:rotn_blocks>);
peat.setBlockSoundType(<soundtype:Ground>);
peat.setToolClass("shovel");
peat.setToolLevel(0);
peat.setBlockHardness(2.7);
peat.register();

// Mossy Peat
var mossy_peat = VanillaFactory.createBlock("mossy_peat", <blockmaterial:Ground>);
mossy_peat.setCreativeTab(<creativetab:rotn_blocks>);
mossy_peat.setBlockSoundType(<soundtype:Ground>);
mossy_peat.setToolClass("shovel");
mossy_peat.setToolLevel(0);
mossy_peat.setBlockHardness(3.0);
mossy_peat.setSlipperiness(0.7f);
mossy_peat.register();

// Mossthane
var charmpeat = VanillaFactory.createBlock("charmpeat", <blockmaterial:Ground>);
charmpeat.setCreativeTab(<creativetab:rotn_blocks>);
charmpeat.setBlockSoundType(<soundtype:Ground>);
charmpeat.setToolClass("shovel");
charmpeat.setToolLevel(0);
charmpeat.setBlockHardness(3.7);
charmpeat.register();

// Halite /salt ore/
var halite = VanillaFactory.createBlock("halite", <blockmaterial:Rock>);
halite.setCreativeTab(<creativetab:rotn_blocks>);
halite.setFullBlock(false);
halite.setBlockSoundType(<soundtype:glass>);
halite.setBlockLayer("TRANSLUCENT");
halite.setTranslucent(true);
halite.setLightOpacity(0);
halite.setToolLevel(0);
halite.register();

// Salt pan
var salt_pan = VanillaFactory.createBlock("salt_pan", <blockmaterial:Grass>);
salt_pan.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
salt_pan.setBlockHardness(3.0);
salt_pan.setBlockResistance(2.0);
salt_pan.setFullBlock(false);
salt_pan.setLightOpacity(0);
salt_pan.setBlockLayer("CUTOUT");
salt_pan.setBlockSoundType(<soundtype:ground>);
salt_pan.setToolClass("shovel");
salt_pan.register();

// Speleothems
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
var block_electrum = VanillaFactory.createBlock("block_electrum", <blockmaterial:Iron>);
block_electrum.setCreativeTab(<creativetab:rotn_blocks>);
block_electrum.setBlockHardness(3.0);
block_electrum.setBlockResistance(12.0);
block_electrum.setBeaconBase(true);
block_electrum.register();

// block_brass
var block_brass = VanillaFactory.createBlock("block_brass", <blockmaterial:Iron>);
block_brass.setCreativeTab(<creativetab:rotn_blocks>);
block_brass.setBlockHardness(4.0);
block_brass.setBlockResistance(15.0);
block_brass.setBeaconBase(true);
block_brass.register();

// block_bronze
var block_bronze = VanillaFactory.createBlock("block_bronze", <blockmaterial:Iron>);
block_bronze.setCreativeTab(<creativetab:rotn_blocks>);
block_bronze.setBlockHardness(4.0);
block_bronze.setBlockResistance(15.0);
block_bronze.setBeaconBase(true);
block_bronze.register();

// voided_rock
var voided_rock = VanillaFactory.createBlock("voided_rock", <blockmaterial:Rock>);
voided_rock.setCreativeTab(<creativetab:rotn_blocks>);
voided_rock.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
voided_rock.setBlockHardness(7.0);
voided_rock.setBlockResistance(3.5);
voided_rock.setSlipperiness(0.7f);
voided_rock.setToolLevel(4);
voided_rock.register();

// void_block
var void_block = VanillaFactory.createBlock("void_block", <blockmaterial:Fire>);
void_block.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
void_block.setBlockSoundType(<soundtype:sand>);
void_block.setFullBlock(false);
void_block.setBlockHardness(0.7);
void_block.setLightOpacity(0);
void_block.setLightValue(1);
void_block.setBlockLayer("CUTOUT");
void_block.setPassable(true);
void_block.setCreativeTab(<creativetab:rotn_blocks>);
void_block.register();

// venerable_stump
var venerable_stump = VanillaFactory.createBlock("venerable_stump", <blockmaterial:Wood>);
venerable_stump.axisAlignedBB = AxisAlignedBB.create(
     -16.0 / 16.0,
     0.0 / 16.0,
     -16.0 / 16.0,
	29.0 / 16.0,
    16.0 / 16.0,
    29.0 / 16.0
	);
venerable_stump.setFullBlock(false);
venerable_stump.setBlockHardness(12);
venerable_stump.setLightOpacity(0);
venerable_stump.setLightValue(1);
venerable_stump.setBlockLayer("CUTOUT");
venerable_stump.setToolClass("axe");
venerable_stump.setCreativeTab(<creativetab:rotn_blocks>);
venerable_stump.register();

// seasoned_stump
var seasoned_stump = VanillaFactory.createBlock("seasoned_stump", <blockmaterial:Wood>);
seasoned_stump.axisAlignedBB = AxisAlignedBB.create(
     -16.0 / 16.0,
     0.0 / 16.0,
     -16.0 / 16.0,
	29.0 / 16.0,
    16.0 / 16.0,
    29.0 / 16.0
	);
seasoned_stump.setFullBlock(false);
seasoned_stump.setBlockHardness(12);
seasoned_stump.setLightOpacity(0);
seasoned_stump.setLightValue(1);
seasoned_stump.setBlockLayer("CUTOUT");
seasoned_stump.setToolClass("axe");
seasoned_stump.setCreativeTab(<creativetab:rotn_blocks>);
seasoned_stump.register();

// Raw Ores
// raw_tin
var raw_tin = VanillaFactory.createBlock("raw_tin_block", <blockmaterial:Iron>);
raw_tin.setCreativeTab(<creativetab:rotn_blocks>);
raw_tin.register();

// raw_copper
var raw_copper = VanillaFactory.createBlock("raw_copper_block", <blockmaterial:Iron>);
raw_copper.setCreativeTab(<creativetab:rotn_blocks>);
raw_copper.register();

// raw_iron
var raw_iron = VanillaFactory.createBlock("raw_iron_block", <blockmaterial:Iron>);
raw_iron.setCreativeTab(<creativetab:rotn_blocks>);
raw_iron.register();

// raw_silver
var raw_silver = VanillaFactory.createBlock("raw_silver_block", <blockmaterial:Iron>);
raw_silver.setCreativeTab(<creativetab:rotn_blocks>);
raw_silver.register();

// raw_gold
var raw_gold = VanillaFactory.createBlock("raw_gold_block", <blockmaterial:Iron>);
raw_gold.setCreativeTab(<creativetab:rotn_blocks>);
raw_gold.register();

// raw_gravitite
var raw_gravitite = VanillaFactory.createBlock("raw_gravitite_block", <blockmaterial:Iron>);
raw_gravitite.setCreativeTab(<creativetab:rotn_blocks>);
raw_gravitite.register();

// raw_viridium
var raw_viridium = VanillaFactory.createBlock("raw_viridium_block", <blockmaterial:Iron>);
raw_viridium.setCreativeTab(<creativetab:rotn_blocks>);
raw_viridium.register();

// raw_mythril
var raw_mythril = VanillaFactory.createBlock("raw_mythril_block", <blockmaterial:Iron>);
raw_mythril.setCreativeTab(<creativetab:rotn_blocks>);
raw_mythril.register();

// Unfired Refractory Crucible
var crucible = VanillaFactory.createBlock("crucible", <blockmaterial:Iron>);
crucible.setCreativeTab(<creativetab:rotn_blocks>);
crucible.setBlockSoundType(<soundtype:ground>);
crucible.setFullBlock(false);
crucible.setToolLevel(0);
crucible.setToolClass("shovel");
crucible.register();

// Unfired Rustic Vase
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
pot_unfired.setCreativeTab(<creativetab:rotn_blocks>);
pot_unfired.setBlockSoundType(<soundtype:ground>);
pot_unfired.setToolLevel(0);
pot_unfired.setToolClass("shovel");
pot_unfired.register();

// Broken Elevator
var elevator = VanillaFactory.createBlock("elevator", <blockmaterial:Ground>);
elevator.setCreativeTab(<creativetab:redstone>);
elevator.setBlockSoundType(<soundtype:stone>);
elevator.setFullBlock(false);
elevator.register();

// Broken Healing Pad
var healing = VanillaFactory.createBlock("healing", <blockmaterial:Ground>);
healing.setCreativeTab(<creativetab:redstone>);
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

// Grass paver
var grass_paver = VanillaFactory.createBlock("grass_paver", <blockmaterial:Rock>);
grass_paver.setCreativeTab(<creativetab:rotn_blocks>);
grass_paver.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    1.0 / 16.0,
    16.0 / 16.0
	);
grass_paver.setBlockSoundType(<soundtype:stone>);
grass_paver.setFullBlock(false);
grass_paver.setLightOpacity(0);
grass_paver.setBlockHardness(2.0);
grass_paver.register();

// Placeable bricks
// unfired adobe brick
var unfired_adobe_brick = VanillaFactory.createBlock("unfired_adobe_brick", <blockmaterial:Ground>);
unfired_adobe_brick.setCreativeTab(<creativetab:decorations>);
unfired_adobe_brick.setGravity(true);
unfired_adobe_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_adobe_brick.setBlockSoundType(<soundtype:ground>);
unfired_adobe_brick.setFullBlock(false);
unfired_adobe_brick.setLightOpacity(0);
unfired_adobe_brick.setBlockLayer("TRANSLUCENT");
unfired_adobe_brick.setBlockHardness(1.0);
unfired_adobe_brick.setToolClass("shovel");
unfired_adobe_brick.register();

// unfired mud brick
var unfired_mud_brick = VanillaFactory.createBlock("unfired_mud_brick", <blockmaterial:Ground>);
unfired_mud_brick.setCreativeTab(<creativetab:decorations>);
unfired_mud_brick.setGravity(true);
unfired_mud_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_mud_brick.setBlockSoundType(<soundtype:ground>);
unfired_mud_brick.setFullBlock(false);
unfired_mud_brick.setLightOpacity(0);
unfired_mud_brick.setBlockLayer("TRANSLUCENT");
unfired_mud_brick.setBlockHardness(1.0);
unfired_mud_brick.setToolClass("shovel");
unfired_mud_brick.register();

// unfired porcelain brick
var unfired_porcelain_brick = VanillaFactory.createBlock("unfired_porcelain_brick", <blockmaterial:Ground>);
unfired_porcelain_brick.setCreativeTab(<creativetab:decorations>);
unfired_porcelain_brick.setGravity(true);
unfired_porcelain_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_porcelain_brick.setBlockSoundType(<soundtype:ground>);
unfired_porcelain_brick.setFullBlock(false);
unfired_porcelain_brick.setLightOpacity(0);
unfired_porcelain_brick.setBlockLayer("TRANSLUCENT");
unfired_porcelain_brick.setBlockHardness(1.0);
unfired_porcelain_brick.setToolClass("shovel");
unfired_porcelain_brick.register();

// unfired fiery brick
var unfired_fiery_brick = VanillaFactory.createBlock("unfired_fiery_brick", <blockmaterial:Ground>);
unfired_fiery_brick.setCreativeTab(<creativetab:decorations>);
unfired_fiery_brick.setGravity(true);
unfired_fiery_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_fiery_brick.setBlockSoundType(<soundtype:ground>);
unfired_fiery_brick.setFullBlock(false);
unfired_fiery_brick.setLightOpacity(0);
unfired_fiery_brick.setBlockLayer("TRANSLUCENT");
unfired_fiery_brick.setBlockHardness(1.0);
unfired_fiery_brick.setToolClass("shovel");
unfired_fiery_brick.register();

// unfired refractory brick
var unfired_refractory_brick = VanillaFactory.createBlock("unfired_refractory_brick", <blockmaterial:Ground>);
unfired_refractory_brick.setCreativeTab(<creativetab:decorations>);
unfired_refractory_brick.setGravity(true);
unfired_refractory_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_refractory_brick.setBlockSoundType(<soundtype:ground>);
unfired_refractory_brick.setFullBlock(false);
unfired_refractory_brick.setLightOpacity(0);
unfired_refractory_brick.setBlockLayer("TRANSLUCENT");
unfired_refractory_brick.setBlockHardness(1.0);
unfired_refractory_brick.setToolClass("shovel");
unfired_refractory_brick.register();

// ruined masonry brick x1
var masonry_brick = VanillaFactory.createBlock("masonry_brick", <blockmaterial:Rock>);
masonry_brick.setCreativeTab(<creativetab:decorations>);
masonry_brick.setGravity(true);
masonry_brick.axisAlignedBB = AxisAlignedBB.create(
     1.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	15.0 / 16.0,
    8.0 / 16.0,
    15.0 / 16.0
	);
masonry_brick.setFullBlock(false);
masonry_brick.setLightOpacity(0);
masonry_brick.setBlockLayer("TRANSLUCENT");
masonry_brick.setBlockHardness(1.0);
masonry_brick.setToolClass("pickaxe");
masonry_brick.register();

// ruined masonry brick x1
var masonry_brick_two = VanillaFactory.createBlock("masonry_brick_two", <blockmaterial:Rock>);
masonry_brick_two.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    return;
});
masonry_brick_two.setCreativeTab(<creativetab:decorations>);
masonry_brick_two.setGravity(true);
masonry_brick_two.axisAlignedBB = AxisAlignedBB.create(
     1.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	15.0 / 16.0,
    8.0 / 16.0,
    15.0 / 16.0
	);
masonry_brick_two.setFullBlock(false);
masonry_brick_two.setLightOpacity(0);
masonry_brick_two.setBlockLayer("TRANSLUCENT");
masonry_brick_two.setBlockHardness(1.0);
masonry_brick_two.setToolClass("pickaxe");
masonry_brick_two.register();

//Unfired clay faucet
var unfired_clay_faucet = VanillaFactory.createBlock("unfired_clay_faucet", <blockmaterial:Ground>);
unfired_clay_faucet.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     5.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    11.0 / 16.0
	);
unfired_clay_faucet.setBlockSoundType(<soundtype:ground>);
unfired_clay_faucet.setFullBlock(false);
unfired_clay_faucet.setLightOpacity(0);
unfired_clay_faucet.setBlockHardness(1.0);
unfired_clay_faucet.setToolClass("shovel");
unfired_clay_faucet.register();

//Unfired clay collector
var unfired_clay_collector = VanillaFactory.createBlock("unfired_clay_collector", <blockmaterial:Ground>);
unfired_clay_collector.setBlockSoundType(<soundtype:ground>);
unfired_clay_collector.setFullBlock(false);
unfired_clay_collector.setLightOpacity(0);
unfired_clay_collector.setBlockHardness(1.0);
unfired_clay_collector.setToolClass("shovel");
unfired_clay_collector.register();

//Unfired clay drain
var unfired_clay_drain = VanillaFactory.createBlock("unfired_clay_drain", <blockmaterial:Ground>);
unfired_clay_drain.setBlockSoundType(<soundtype:ground>);
unfired_clay_drain.setBlockHardness(1.0);
unfired_clay_drain.setToolClass("shovel");
unfired_clay_drain.register();

//Electrum Plate
var electrum_plate = VanillaFactory.createBlock("electrum_plate", <blockmaterial:Iron>);
electrum_plate.setCreativeTab(<creativetab:buildingBlocks>);
electrum_plate.register();

//Bronze Plate
var bronze_plate = VanillaFactory.createBlock("bronze_plate", <blockmaterial:Iron>);
bronze_plate.setCreativeTab(<creativetab:buildingBlocks>);
bronze_plate.register();

// Lunarin blocks
// Bronze
var lunarin = VanillaFactory.createBlock("lunarinbronzebrick", <blockmaterial:Iron>);
lunarin.setCreativeTab(<creativetab:buildingBlocks>);
lunarin.register();
// Silver
var silverlunarin = VanillaFactory.createBlock("lunarinsilverbrick", <blockmaterial:Iron>);
silverlunarin.setCreativeTab(<creativetab:rotn_blocks>);
silverlunarin.register();
// Viridium
var viridiumlunarin = VanillaFactory.createBlock("lunarinviridiumbrick", <blockmaterial:Iron>);
viridiumlunarin.setCreativeTab(<creativetab:rotn_blocks>);
viridiumlunarin.setToolLevel(1);
viridiumlunarin.register();
// Mythril
var mythrillunarin = VanillaFactory.createBlock("lunarinmythrilbrick", <blockmaterial:Iron>);
mythrillunarin.setCreativeTab(<creativetab:rotn_blocks>);
mythrillunarin.setToolLevel(2);
mythrillunarin.register();
// Endorium
var endoriumlunarin = VanillaFactory.createBlock("lunarinendoriumbrick", <blockmaterial:Iron>);
endoriumlunarin.setCreativeTab(<creativetab:rotn_blocks>);
endoriumlunarin.register();
// Hearth
var heartlunarin = VanillaFactory.createBlock("lunarinheartbrick", <blockmaterial:Iron>);
heartlunarin.setCreativeTab(<creativetab:rotn_blocks>);
heartlunarin.register();
// Ice Dragon Steel
var icelunarin = VanillaFactory.createBlock("lunarinicebrick", <blockmaterial:Iron>);
icelunarin.setCreativeTab(<creativetab:rotn_blocks>);
icelunarin.register();
// Fire Dragon Steel
var firelunarin = VanillaFactory.createBlock("lunarinfirebrick", <blockmaterial:Iron>);
firelunarin.setCreativeTab(<creativetab:rotn_blocks>);
firelunarin.register();
// Fiery Metal
var fierylunarin = VanillaFactory.createBlock("lunarinfierybrick", <blockmaterial:Iron>);
fierylunarin.setCreativeTab(<creativetab:rotn_blocks>);
fierylunarin.register();
// Knight Metal
var knightlunarin = VanillaFactory.createBlock("lunarinknightbrick", <blockmaterial:Iron>);
knightlunarin.setCreativeTab(<creativetab:rotn_blocks>);
knightlunarin.register();
// Steel
var steellunarin = VanillaFactory.createBlock("lunarinsteelbrick", <blockmaterial:Iron>);
steellunarin.setCreativeTab(<creativetab:rotn_blocks>);
steellunarin.setToolLevel(2);
steellunarin.register();
// Sfs
var sfslunarin = VanillaFactory.createBlock("lunarinsfsbrick", <blockmaterial:Iron>);
sfslunarin.setCreativeTab(<creativetab:rotn_blocks>);
sfslunarin.register();
sfslunarin.setToolLevel(3);
// Mediterranean lunarin mama mia brick block
var BBlunarin = VanillaFactory.createBlock("baguettebrick", <blockmaterial:Rock>);
BBlunarin.setCreativeTab(<creativetab:rotn_blocks>);
BBlunarin.register();

// Farlander Style
// exorite
var exoritefarlander = VanillaFactory.createBlock("farlanderexoritebrick", <blockmaterial:Iron>);
exoritefarlander.setCreativeTab(<creativetab:rotn_blocks>);
exoritefarlander.setBlockSoundType(<soundtype:glass>);
exoritefarlander.register();
// zanite
var zanitefarlander = VanillaFactory.createBlock("farlanderzanitebrick", <blockmaterial:Iron>);
zanitefarlander.setCreativeTab(<creativetab:rotn_blocks>);
zanitefarlander.setBlockSoundType(<soundtype:glass>);
zanitefarlander.register();
// diamond
var diamondfarlander = VanillaFactory.createBlock("farlanderdiamondbrick", <blockmaterial:Iron>);
diamondfarlander.setCreativeTab(<creativetab:rotn_blocks>);
diamondfarlander.setBlockSoundType(<soundtype:glass>);
diamondfarlander.register();

// Storage blocks
var witheredblock = VanillaFactory.createBlock("witheredblock", <blockmaterial:Sand>);
witheredblock.setCreativeTab(<creativetab:rotn_blocks>);
witheredblock.setBlockSoundType(<soundtype:sand>);
witheredblock.setGravity(true);
witheredblock.setToolLevel(1);
witheredblock.setToolClass("shovel");
witheredblock.register();

var ardicite = VanillaFactory.createBlock("ardicite", <blockmaterial:Glass>);
ardicite.setCreativeTab(<creativetab:decorations>);
ardicite.setLightValue(0.8);
ardicite.setBlockSoundType(<soundtype:stone>);
ardicite.setBlockHardness(20);
ardicite.setBlockMaterial(<blockmaterial:fire>);
ardicite.register();

var unfiredrefractory = VanillaFactory.createBlock("unfiredrefractory", <blockmaterial:Ground>);
unfiredrefractory.setCreativeTab(<creativetab:rotn_blocks>);
unfiredrefractory.setBlockSoundType(<soundtype:ground>);
unfiredrefractory.setToolClass("shovel");
unfiredrefractory.setToolLevel(0);
unfiredrefractory.register();

var modelingrefractory = VanillaFactory.createBlock("modelingrefractory", <blockmaterial:Ground>);
modelingrefractory.setCreativeTab(<creativetab:rotn_blocks>);
modelingrefractory.setBlockSoundType(<soundtype:ground>);
modelingrefractory.setGravity(true);
modelingrefractory.setToolClass("shovel");
modelingrefractory.setToolLevel(0);
modelingrefractory.register();

var refracotta = VanillaFactory.createBlock("refracotta", <blockmaterial:Rock>);
refracotta.setCreativeTab(<creativetab:rotn_blocks>);
refracotta.setBlockSoundType(<soundtype:stone>);
refracotta.setToolClass("pickaxe");
refracotta.register();

var refracotta_black = VanillaFactory.createBlock("refracotta_black", <blockmaterial:Rock>);
refracotta_black.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_black.setBlockSoundType(<soundtype:stone>);
refracotta_black.setToolClass("pickaxe");
refracotta_black.register();

var refracotta_red = VanillaFactory.createBlock("refracotta_red", <blockmaterial:Rock>);
refracotta_red.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_red.setBlockSoundType(<soundtype:stone>);
refracotta_red.setToolClass("pickaxe");
refracotta_red.register();

var refracotta_green = VanillaFactory.createBlock("refracotta_green", <blockmaterial:Rock>);
refracotta_green.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_green.setBlockSoundType(<soundtype:stone>);
refracotta_green.setToolClass("pickaxe");
refracotta_green.register();

var refracotta_brown = VanillaFactory.createBlock("refracotta_brown", <blockmaterial:Rock>);
refracotta_brown.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_brown.setBlockSoundType(<soundtype:stone>);
refracotta_brown.setToolClass("pickaxe");
refracotta_brown.register();

var refracotta_blue = VanillaFactory.createBlock("refracotta_blue", <blockmaterial:Rock>);
refracotta_blue.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_blue.setBlockSoundType(<soundtype:stone>);
refracotta_blue.setToolClass("pickaxe");
refracotta_blue.register();

var refracotta_purple = VanillaFactory.createBlock("refracotta_purple", <blockmaterial:Rock>);
refracotta_purple.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_purple.setBlockSoundType(<soundtype:stone>);
refracotta_purple.setToolClass("pickaxe");
refracotta_purple.register();

var refracotta_cyan = VanillaFactory.createBlock("refracotta_cyan", <blockmaterial:Rock>);
refracotta_cyan.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_cyan.setBlockSoundType(<soundtype:stone>);
refracotta_cyan.setToolClass("pickaxe");
refracotta_cyan.register();

var refracotta_light_gray = VanillaFactory.createBlock("refracotta_light_gray", <blockmaterial:Rock>);
refracotta_light_gray.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_light_gray.setBlockSoundType(<soundtype:stone>);
refracotta_light_gray.setToolClass("pickaxe");
refracotta_light_gray.register();

var refracotta_gray = VanillaFactory.createBlock("refracotta_gray", <blockmaterial:Rock>);
refracotta_gray.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_gray.setBlockSoundType(<soundtype:stone>);
refracotta_gray.setToolClass("pickaxe");
refracotta_gray.register();

var refracotta_pink = VanillaFactory.createBlock("refracotta_pink", <blockmaterial:Rock>);
refracotta_pink.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_pink.setBlockSoundType(<soundtype:stone>);
refracotta_pink.setToolClass("pickaxe");
refracotta_pink.register();

var refracotta_lime = VanillaFactory.createBlock("refracotta_lime", <blockmaterial:Rock>);
refracotta_lime.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_lime.setBlockSoundType(<soundtype:stone>);
refracotta_lime.setToolClass("pickaxe");
refracotta_lime.register();

var refracotta_yellow = VanillaFactory.createBlock("refracotta_yellow", <blockmaterial:Rock>);
refracotta_yellow.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_yellow.setBlockSoundType(<soundtype:stone>);
refracotta_yellow.setToolClass("pickaxe");
refracotta_yellow.register();

var refracotta_light_blue = VanillaFactory.createBlock("refracotta_light_blue", <blockmaterial:Rock>);
refracotta_light_blue.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_light_blue.setBlockSoundType(<soundtype:stone>);
refracotta_light_blue.setToolClass("pickaxe");
refracotta_light_blue.register();

var refracotta_magenta = VanillaFactory.createBlock("refracotta_magenta", <blockmaterial:Rock>);
refracotta_magenta.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_magenta.setBlockSoundType(<soundtype:stone>);
refracotta_magenta.setToolClass("pickaxe");
refracotta_magenta.register();

var refracotta_orange = VanillaFactory.createBlock("refracotta_orange", <blockmaterial:Rock>);
refracotta_orange.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_orange.setBlockSoundType(<soundtype:stone>);
refracotta_orange.setToolClass("pickaxe");
refracotta_orange.register();

var refracotta_white = VanillaFactory.createBlock("refracotta_white", <blockmaterial:Rock>);
refracotta_white.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_white.setBlockSoundType(<soundtype:stone>);
refracotta_white.setToolClass("pickaxe");
refracotta_white.register();

// Wood Boards
// oak
var oak_boards = VanillaFactory.createBlock("oak_boards", <blockmaterial:Wood>);
oak_boards.setCreativeTab(<creativetab:rotn_blocks>);
oak_boards.setToolClass("pickaxe");
oak_boards.setBlockHardness(7.0);
oak_boards.setToolLevel(1);
oak_boards.register();
// spruce
var spruce_boards = VanillaFactory.createBlock("spruce_boards", <blockmaterial:Wood>);
spruce_boards.setCreativeTab(<creativetab:rotn_blocks>);
spruce_boards.setToolClass("pickaxe");
spruce_boards.setBlockHardness(7.0);
spruce_boards.setToolLevel(1);
spruce_boards.register();
// birch
var birch_boards = VanillaFactory.createBlock("birch_boards", <blockmaterial:Wood>);
birch_boards.setCreativeTab(<creativetab:rotn_blocks>);
birch_boards.setToolClass("pickaxe");
birch_boards.setBlockHardness(7.0);
birch_boards.setToolLevel(1);
birch_boards.register();
// jungle
var jungle_boards = VanillaFactory.createBlock("jungle_boards", <blockmaterial:Wood>);
jungle_boards.setCreativeTab(<creativetab:rotn_blocks>);
jungle_boards.setToolClass("pickaxe");
jungle_boards.setBlockHardness(7.0);
jungle_boards.setToolLevel(1);
jungle_boards.register();
// acacia
var acacia_boards = VanillaFactory.createBlock("acacia_boards", <blockmaterial:Wood>);
acacia_boards.setCreativeTab(<creativetab:rotn_blocks>);
acacia_boards.setToolClass("pickaxe");
acacia_boards.setBlockHardness(7.0);
acacia_boards.setToolLevel(1);
acacia_boards.register();
// dark oak
var dark_oak_boards = VanillaFactory.createBlock("dark_oak_boards", <blockmaterial:Wood>);
dark_oak_boards.setCreativeTab(<creativetab:rotn_blocks>);
dark_oak_boards.setToolClass("pickaxe");
dark_oak_boards.setBlockHardness(7.0);
dark_oak_boards.setToolLevel(1);
dark_oak_boards.register();
// stalagnate
var stalagnate_boards = VanillaFactory.createBlock("stalagnate_boards", <blockmaterial:Wood>);
stalagnate_boards.setCreativeTab(<creativetab:rotn_blocks>);
stalagnate_boards.setToolClass("pickaxe");
stalagnate_boards.setBlockHardness(7.0);
stalagnate_boards.setToolLevel(1);
stalagnate_boards.register();
// sacred oak
var sacred_oak_boards = VanillaFactory.createBlock("sacred_oak_boards", <blockmaterial:Wood>);
sacred_oak_boards.setCreativeTab(<creativetab:rotn_blocks>);
sacred_oak_boards.setToolClass("pickaxe");
sacred_oak_boards.setBlockHardness(7.0);
sacred_oak_boards.setToolLevel(1);
sacred_oak_boards.register();
// cherry
var cherry_boards = VanillaFactory.createBlock("cherry_boards", <blockmaterial:Wood>);
cherry_boards.setCreativeTab(<creativetab:rotn_blocks>);
cherry_boards.setToolClass("pickaxe");
cherry_boards.setBlockHardness(7.0);
cherry_boards.setToolLevel(1);
cherry_boards.register();
// umbran
var umbran_boards = VanillaFactory.createBlock("umbran_boards", <blockmaterial:Wood>);
umbran_boards.setCreativeTab(<creativetab:rotn_blocks>);
umbran_boards.setToolClass("pickaxe");
umbran_boards.setBlockHardness(7.0);
umbran_boards.setToolLevel(1);
umbran_boards.register();
// fir
var fir_boards = VanillaFactory.createBlock("fir_boards", <blockmaterial:Wood>);
fir_boards.setCreativeTab(<creativetab:rotn_blocks>);
fir_boards.setToolClass("pickaxe");
fir_boards.setBlockHardness(7.0);
fir_boards.setToolLevel(1);
fir_boards.register();
// magic
var magic_boards = VanillaFactory.createBlock("magic_boards", <blockmaterial:Wood>);
magic_boards.setCreativeTab(<creativetab:rotn_blocks>);
magic_boards.setToolClass("pickaxe");
magic_boards.setBlockHardness(7.0);
magic_boards.setToolLevel(1);
magic_boards.register();
// mangrove
var mangrove_boards = VanillaFactory.createBlock("mangrove_boards", <blockmaterial:Wood>);
mangrove_boards.setCreativeTab(<creativetab:rotn_blocks>);
mangrove_boards.setToolClass("pickaxe");
mangrove_boards.setBlockHardness(7.0);
mangrove_boards.setToolLevel(1);
mangrove_boards.register();
// palm
var palm_boards = VanillaFactory.createBlock("palm_boards", <blockmaterial:Wood>);
palm_boards.setCreativeTab(<creativetab:rotn_blocks>);
palm_boards.setToolClass("pickaxe");
palm_boards.setBlockHardness(7.0);
palm_boards.setToolLevel(1);
palm_boards.register();
// redwood
var redwood_boards = VanillaFactory.createBlock("redwood_boards", <blockmaterial:Wood>);
redwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
redwood_boards.setToolClass("pickaxe");
redwood_boards.setBlockHardness(7.0);
redwood_boards.setToolLevel(1);
redwood_boards.register();
// willow
var willow_boards = VanillaFactory.createBlock("willow_boards", <blockmaterial:Wood>);
willow_boards.setCreativeTab(<creativetab:rotn_blocks>);
willow_boards.setToolClass("pickaxe");
willow_boards.setBlockHardness(7.0);
willow_boards.setToolLevel(1);
willow_boards.register();
// pine
var pine_boards = VanillaFactory.createBlock("pine_boards", <blockmaterial:Wood>);
pine_boards.setCreativeTab(<creativetab:rotn_blocks>);
pine_boards.setToolClass("pickaxe");
pine_boards.setBlockHardness(7.0);
pine_boards.setToolLevel(1);
pine_boards.register();
// hellbark
var hellbark_boards = VanillaFactory.createBlock("hellbark_boards", <blockmaterial:Wood>);
hellbark_boards.setCreativeTab(<creativetab:rotn_blocks>);
hellbark_boards.setToolClass("pickaxe");
hellbark_boards.setBlockHardness(7.0);
hellbark_boards.setToolLevel(1);
hellbark_boards.register();
// jacaranda
var jacaranda_boards = VanillaFactory.createBlock("jacaranda_boards", <blockmaterial:Wood>);
jacaranda_boards.setCreativeTab(<creativetab:rotn_blocks>);
jacaranda_boards.setToolClass("pickaxe");
jacaranda_boards.setBlockHardness(7.0);
jacaranda_boards.setToolLevel(1);
jacaranda_boards.register();
// mahogany
var mahogany_boards = VanillaFactory.createBlock("mahogany_boards", <blockmaterial:Wood>);
mahogany_boards.setCreativeTab(<creativetab:rotn_blocks>);
mahogany_boards.setToolClass("pickaxe");
mahogany_boards.setBlockHardness(7.0);
mahogany_boards.setToolLevel(1);
mahogany_boards.register();
// ebony
var ebony_boards = VanillaFactory.createBlock("ebony_boards", <blockmaterial:Wood>);
ebony_boards.setCreativeTab(<creativetab:rotn_blocks>);
ebony_boards.setToolClass("pickaxe");
ebony_boards.setBlockHardness(7.0);
ebony_boards.setToolLevel(1);
ebony_boards.register();
// eucalyptus
var eucalyptus_boards = VanillaFactory.createBlock("eucalyptus_boards", <blockmaterial:Wood>);
eucalyptus_boards.setCreativeTab(<creativetab:rotn_blocks>);
eucalyptus_boards.setToolClass("pickaxe");
eucalyptus_boards.setBlockHardness(7.0);
eucalyptus_boards.setToolLevel(1);
eucalyptus_boards.register();
// tenebra
var tenebra_boards = VanillaFactory.createBlock("tenebra_boards", <blockmaterial:Wood>);
tenebra_boards.setCreativeTab(<creativetab:rotn_blocks>);
tenebra_boards.setToolClass("pickaxe");
tenebra_boards.setBlockHardness(7.0);
tenebra_boards.setToolLevel(1);
tenebra_boards.register();
// dreadwood
var dreadwood_boards = VanillaFactory.createBlock("dreadwood_boards", <blockmaterial:Wood>);
dreadwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
dreadwood_boards.setToolClass("pickaxe");
dreadwood_boards.setBlockHardness(7.0);
dreadwood_boards.setToolLevel(1);
dreadwood_boards.register();
// olive
var olive_boards = VanillaFactory.createBlock("olive_boards", <blockmaterial:Wood>);
olive_boards.setCreativeTab(<creativetab:rotn_blocks>);
olive_boards.setToolClass("pickaxe");
olive_boards.setBlockHardness(7.0);
olive_boards.setToolLevel(1);
olive_boards.register();
// ironwood
var ironwood_boards = VanillaFactory.createBlock("ironwood_boards", <blockmaterial:Wood>);
ironwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
ironwood_boards.setToolClass("pickaxe");
ironwood_boards.setBlockHardness(7.0);
ironwood_boards.setToolLevel(1);
ironwood_boards.register();
// wyrmwood
var wyrmwood_boards = VanillaFactory.createBlock("wyrmwood_boards", <blockmaterial:Wood>);
wyrmwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
wyrmwood_boards.setToolClass("pickaxe");
wyrmwood_boards.setBlockHardness(7.0);
wyrmwood_boards.setToolLevel(1);
wyrmwood_boards.register();
// skywood
var skywood_boards = VanillaFactory.createBlock("skywood_boards", <blockmaterial:Wood>);
skywood_boards.setCreativeTab(<creativetab:rotn_blocks>);
skywood_boards.setToolClass("pickaxe");
skywood_boards.setBlockHardness(7.0);
skywood_boards.setToolLevel(1);
skywood_boards.register();

// Loose Bricks
// Mud
var loose_mud_bricks = VanillaFactory.createBlock("loose_mud_bricks", <blockmaterial:Rock>);
loose_mud_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_mud_bricks.setGravity(true);
loose_mud_bricks.setToolLevel(1);
loose_mud_bricks.register();
// Clay
var loose_clay_bricks = VanillaFactory.createBlock("loose_clay_bricks", <blockmaterial:Rock>);
loose_clay_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_clay_bricks.setGravity(true);
loose_clay_bricks.setToolLevel(1);
loose_clay_bricks.register();
// Adobe
var loose_adobe_bricks = VanillaFactory.createBlock("loose_adobe_bricks", <blockmaterial:Rock>);
loose_adobe_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_adobe_bricks.setGravity(true);
loose_adobe_bricks.setToolLevel(1);
loose_adobe_bricks.register();
// Masonry
var loose_stone_bricks = VanillaFactory.createBlock("loose_stone_bricks", <blockmaterial:Rock>);
loose_stone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_stone_bricks.setGravity(true);
loose_stone_bricks.setToolLevel(1);
loose_stone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_stone_bricks.register();
// Holystone
var loose_holystone_bricks = VanillaFactory.createBlock("loose_holystone_bricks", <blockmaterial:Rock>);
loose_holystone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_holystone_bricks.setGravity(true);
loose_holystone_bricks.setToolLevel(1);
loose_holystone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_holystone_bricks.register();
// Sandstone
var loose_sandstone_bricks = VanillaFactory.createBlock("loose_sandstone_bricks", <blockmaterial:Rock>);
loose_sandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_sandstone_bricks.setGravity(true);
loose_sandstone_bricks.setToolLevel(1);
loose_sandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_sandstone_bricks.register();
// Red Sandstone
var loose_red_sandstone_bricks = VanillaFactory.createBlock("loose_red_sandstone_bricks", <blockmaterial:Rock>);
loose_red_sandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_red_sandstone_bricks.setGravity(true);
loose_red_sandstone_bricks.setToolLevel(1);
loose_red_sandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_red_sandstone_bricks.register();
// Soulsandstone
var loose_soulsandstone_bricks = VanillaFactory.createBlock("loose_soulsandstone_bricks", <blockmaterial:Rock>);
loose_soulsandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_soulsandstone_bricks.setGravity(true);
loose_soulsandstone_bricks.setToolLevel(1);
loose_soulsandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_soulsandstone_bricks.register();
// Nether
var loose_nether_bricks = VanillaFactory.createBlock("loose_nether_bricks", <blockmaterial:Rock>);
loose_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_nether_bricks.setGravity(true);
loose_nether_bricks.setToolLevel(1);
loose_nether_bricks.register();
// Red Nether
var loose_red_nether_bricks = VanillaFactory.createBlock("loose_red_nether_bricks", <blockmaterial:Rock>);
loose_red_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_red_nether_bricks.setGravity(true);
loose_red_nether_bricks.setToolLevel(1);
loose_red_nether_bricks.register();
// Fiery Nether
var loose_fiery_nether_bricks = VanillaFactory.createBlock("loose_fiery_nether_bricks", <blockmaterial:Rock>);
loose_fiery_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_fiery_nether_bricks.setGravity(true);
loose_fiery_nether_bricks.setToolLevel(1);
loose_fiery_nether_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_fiery_nether_bricks.register();
// Basalt Nether
var loose_basalt_nether_bricks = VanillaFactory.createBlock("loose_basalt_nether_bricks", <blockmaterial:Rock>);
loose_basalt_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_basalt_nether_bricks.setGravity(true);
loose_basalt_nether_bricks.setToolLevel(1);
loose_basalt_nether_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_basalt_nether_bricks.register();
// Refractory
var loose_refractory_bricks = VanillaFactory.createBlock("loose_refractory_bricks", <blockmaterial:Rock>);
loose_refractory_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_refractory_bricks.setGravity(true);
loose_refractory_bricks.setToolLevel(1);
loose_refractory_bricks.register();
// Porcelain
var loose_porcelain_bricks = VanillaFactory.createBlock("loose_porcelain_bricks", <blockmaterial:Rock>);
loose_porcelain_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_porcelain_bricks.setGravity(true);
loose_porcelain_bricks.setToolLevel(1);
loose_porcelain_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_porcelain_bricks.register();
// Coade
var loose_big_coade_bricks = VanillaFactory.createBlock("loose_big_coade_bricks", <blockmaterial:Rock>);
loose_big_coade_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_coade_bricks.setGravity(true);
loose_big_coade_bricks.setToolLevel(1);
loose_big_coade_bricks.register();
// End
var loose_big_end_bricks = VanillaFactory.createBlock("loose_big_end_bricks", <blockmaterial:Rock>);
loose_big_end_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_end_bricks.setGravity(true);
loose_big_end_bricks.setToolLevel(1);
loose_big_end_bricks.register();
// White
var loose_big_white_bricks = VanillaFactory.createBlock("loose_big_white_bricks", <blockmaterial:Rock>);
loose_big_white_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_white_bricks.setGravity(true);
loose_big_white_bricks.setToolLevel(1);
loose_big_white_bricks.register();
// Dreadstone
var loose_big_dreadstone_bricks = VanillaFactory.createBlock("loose_big_dreadstone_bricks", <blockmaterial:Rock>);
loose_big_dreadstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_dreadstone_bricks.setGravity(true);
loose_big_dreadstone_bricks.setToolLevel(1);
loose_big_dreadstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_big_dreadstone_bricks.register();
// Red Granite
var loose_big_red_granite_bricks = VanillaFactory.createBlock("loose_big_red_granite_bricks", <blockmaterial:Rock>);
loose_big_red_granite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_red_granite_bricks.setGravity(true);
loose_big_red_granite_bricks.setToolLevel(1);
loose_big_red_granite_bricks.register();
// Black Granite
var loose_big_black_granite_bricks = VanillaFactory.createBlock("loose_big_black_granite_bricks", <blockmaterial:Rock>);
loose_big_black_granite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_black_granite_bricks.setGravity(true);
loose_big_black_granite_bricks.setToolLevel(1);
loose_big_black_granite_bricks.register();
// Rhyolite
var loose_big_rhyolite_bricks = VanillaFactory.createBlock("loose_big_rhyolite_bricks", <blockmaterial:Rock>);
loose_big_rhyolite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_rhyolite_bricks.setGravity(true);
loose_big_rhyolite_bricks.setToolLevel(1);
loose_big_rhyolite_bricks.register();
// Andesite
var loose_big_andesite_bricks = VanillaFactory.createBlock("loose_big_andesite_bricks", <blockmaterial:Rock>);
loose_big_andesite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_andesite_bricks.setGravity(true);
loose_big_andesite_bricks.setToolLevel(1);
loose_big_andesite_bricks.register();
// Gabbro
var loose_big_gabbro_bricks = VanillaFactory.createBlock("loose_big_gabbro_bricks", <blockmaterial:Rock>);
loose_big_gabbro_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_gabbro_bricks.setGravity(true);
loose_big_gabbro_bricks.setToolLevel(1);
loose_big_gabbro_bricks.register();
// Basalt
var loose_big_basalt_bricks = VanillaFactory.createBlock("loose_big_basalt_bricks", <blockmaterial:Rock>);
loose_big_basalt_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_basalt_bricks.setGravity(true);
loose_big_basalt_bricks.setToolLevel(1);
loose_big_basalt_bricks.register();
// Komatiite
var loose_big_komatiite_bricks = VanillaFactory.createBlock("loose_big_komatiite_bricks", <blockmaterial:Rock>);
loose_big_komatiite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_komatiite_bricks.setGravity(true);
loose_big_komatiite_bricks.setToolLevel(1);
loose_big_komatiite_bricks.register();
// Dacite
var loose_big_dacite_bricks = VanillaFactory.createBlock("loose_big_dacite_bricks", <blockmaterial:Rock>);
loose_big_dacite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_dacite_bricks.setGravity(true);
loose_big_dacite_bricks.setToolLevel(1);
loose_big_dacite_bricks.register();
// Gneiss
var loose_big_gneiss_bricks = VanillaFactory.createBlock("loose_big_gneiss_bricks", <blockmaterial:Rock>);
loose_big_gneiss_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_gneiss_bricks.setGravity(true);
loose_big_gneiss_bricks.setToolLevel(1);
loose_big_gneiss_bricks.register();
// Eclogite
var loose_big_eclogite_bricks = VanillaFactory.createBlock("loose_big_eclogite_bricks", <blockmaterial:Rock>);
loose_big_eclogite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_eclogite_bricks.setGravity(true);
loose_big_eclogite_bricks.setToolLevel(1);
loose_big_eclogite_bricks.register();
// Marble
var loose_big_marble_bricks = VanillaFactory.createBlock("loose_big_marble_bricks", <blockmaterial:Rock>);
loose_big_marble_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_marble_bricks.setGravity(true);
loose_big_marble_bricks.setToolLevel(1);
loose_big_marble_bricks.register();
// Quartzite
var loose_big_quartzite_bricks = VanillaFactory.createBlock("loose_big_quartzite_bricks", <blockmaterial:Rock>);
loose_big_quartzite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_quartzite_bricks.setGravity(true);
loose_big_quartzite_bricks.setToolLevel(1);
loose_big_quartzite_bricks.register();
// Blueschist
var loose_big_blueschist_bricks = VanillaFactory.createBlock("loose_big_blueschist_bricks", <blockmaterial:Rock>);
loose_big_blueschist_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_blueschist_bricks.setGravity(true);
loose_big_blueschist_bricks.setToolLevel(1);
loose_big_blueschist_bricks.register();
// Greenschist
var loose_big_greenschist_bricks = VanillaFactory.createBlock("loose_big_greenschist_bricks", <blockmaterial:Rock>);
loose_big_greenschist_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_greenschist_bricks.setGravity(true);
loose_big_greenschist_bricks.setToolLevel(1);
loose_big_greenschist_bricks.register();
// Soapstone
var loose_big_soapstone_bricks = VanillaFactory.createBlock("loose_big_soapstone_bricks", <blockmaterial:Rock>);
loose_big_soapstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_soapstone_bricks.setGravity(true);
loose_big_soapstone_bricks.setToolLevel(1);
loose_big_soapstone_bricks.register();
// Migmatite
var loose_big_migmatite_bricks = VanillaFactory.createBlock("loose_big_migmatite_bricks", <blockmaterial:Rock>);
loose_big_migmatite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_migmatite_bricks.setGravity(true);
loose_big_migmatite_bricks.setToolLevel(1);
loose_big_migmatite_bricks.register();
// Serpentinite
var loose_big_serpentinite_bricks = VanillaFactory.createBlock("loose_big_serpentinite_bricks", <blockmaterial:Rock>);
loose_big_serpentinite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_serpentinite_bricks.setGravity(true);
loose_big_serpentinite_bricks.setToolLevel(1);
loose_big_serpentinite_bricks.register();
// Limestone
var loose_big_limestone_bricks = VanillaFactory.createBlock("loose_big_limestone_bricks", <blockmaterial:Rock>);
loose_big_limestone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_limestone_bricks.setGravity(true);
loose_big_limestone_bricks.setToolLevel(1);
loose_big_limestone_bricks.register();
// Chalk
var loose_big_chalk_bricks = VanillaFactory.createBlock("loose_big_chalk_bricks", <blockmaterial:Rock>);
loose_big_chalk_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_chalk_bricks.setGravity(true);
loose_big_chalk_bricks.setToolLevel(1);
loose_big_chalk_bricks.register();
// Shale
var loose_big_shale_bricks = VanillaFactory.createBlock("loose_big_shale_bricks", <blockmaterial:Rock>);
loose_big_shale_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_shale_bricks.setGravity(true);
loose_big_shale_bricks.setToolLevel(1);
loose_big_shale_bricks.register();
// Siltstone
var loose_big_siltstone_bricks = VanillaFactory.createBlock("loose_big_siltstone_bricks", <blockmaterial:Rock>);
loose_big_siltstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_siltstone_bricks.setGravity(true);
loose_big_siltstone_bricks.setToolLevel(1);
loose_big_siltstone_bricks.register();
// Lignite
var loose_big_lignite_bricks = VanillaFactory.createBlock("loose_big_lignite_bricks", <blockmaterial:Rock>);
loose_big_lignite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_lignite_bricks.setGravity(true);
loose_big_lignite_bricks.setToolLevel(1);
loose_big_lignite_bricks.register();
// Dolomite
var loose_big_dolomite_bricks = VanillaFactory.createBlock("loose_big_dolomite_bricks", <blockmaterial:Rock>);
loose_big_dolomite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_dolomite_bricks.setGravity(true);
loose_big_dolomite_bricks.setToolLevel(1);
loose_big_dolomite_bricks.register();
// Greywacke
var loose_big_greywacke_bricks = VanillaFactory.createBlock("loose_big_greywacke_bricks", <blockmaterial:Rock>);
loose_big_greywacke_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_greywacke_bricks.setGravity(true);
loose_big_greywacke_bricks.setToolLevel(1);
loose_big_greywacke_bricks.register();
// Chert
var loose_big_chert_bricks = VanillaFactory.createBlock("loose_big_chert_bricks", <blockmaterial:Rock>);
loose_big_chert_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_chert_bricks.setGravity(true);
loose_big_chert_bricks.setToolLevel(1);
loose_big_chert_bricks.register();
// Purple Slate
var loose_big_purple_slate_bricks = VanillaFactory.createBlock("loose_big_purple_slate_bricks", <blockmaterial:Rock>);
loose_big_purple_slate_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_purple_slate_bricks.setGravity(true);
loose_big_purple_slate_bricks.setToolLevel(1);
loose_big_purple_slate_bricks.register();
// Blue Slate
var loose_big_blue_slate_bricks = VanillaFactory.createBlock("loose_big_blue_slate_bricks", <blockmaterial:Rock>);
loose_big_blue_slate_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_blue_slate_bricks.setGravity(true);
loose_big_blue_slate_bricks.setToolLevel(1);
loose_big_blue_slate_bricks.register();
// Green Slate
var loose_big_green_slate_bricks = VanillaFactory.createBlock("loose_big_green_slate_bricks", <blockmaterial:Rock>);
loose_big_green_slate_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_green_slate_bricks.setGravity(true);
loose_big_green_slate_bricks.setToolLevel(1);
loose_big_green_slate_bricks.register();
// Brimstone
var loose_big_brimstone_bricks = VanillaFactory.createBlock("loose_big_brimstone_bricks", <blockmaterial:Rock>);
loose_big_brimstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_brimstone_bricks.setGravity(true);
loose_big_brimstone_bricks.setToolLevel(1);
loose_big_brimstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_big_brimstone_bricks.register();
// Permafrost
var loose_big_permafrost_bricks = VanillaFactory.createBlock("loose_big_permafrost_bricks", <blockmaterial:Rock>);
loose_big_permafrost_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_permafrost_bricks.setGravity(true);
loose_big_permafrost_bricks.setToolLevel(1);
loose_big_permafrost_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_big_permafrost_bricks.register();

// Sedimentary Bricks
// Limestone
var big_limestone_bricks = VanillaFactory.createBlock("big_limestone_bricks", <blockmaterial:Rock>);
big_limestone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_limestone_bricks.setToolLevel(1);
big_limestone_bricks.setBlockHardness(18);
big_limestone_bricks.register();
// Chalk
var big_chalk_bricks = VanillaFactory.createBlock("big_chalk_bricks", <blockmaterial:Rock>);
big_chalk_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_chalk_bricks.setToolLevel(1);
big_chalk_bricks.setBlockHardness(18);
big_chalk_bricks.register();
// Shale
var big_shale_bricks = VanillaFactory.createBlock("big_shale_bricks", <blockmaterial:Rock>);
big_shale_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_shale_bricks.setToolLevel(1);
big_shale_bricks.setBlockHardness(18);
big_shale_bricks.register();
// Siltstone
var big_siltstone_bricks = VanillaFactory.createBlock("big_siltstone_bricks", <blockmaterial:Rock>);
big_siltstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_siltstone_bricks.setToolLevel(1);
big_siltstone_bricks.setBlockHardness(18);
big_siltstone_bricks.register();
// Lignite
var big_lignite_bricks = VanillaFactory.createBlock("big_lignite_bricks", <blockmaterial:Rock>);
big_lignite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_lignite_bricks.setToolLevel(1);
big_lignite_bricks.setBlockHardness(18);
big_lignite_bricks.register();
// Dolomite
var big_dolomite_bricks = VanillaFactory.createBlock("big_dolomite_bricks", <blockmaterial:Rock>);
big_dolomite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_dolomite_bricks.setToolLevel(1);
big_dolomite_bricks.setBlockHardness(18);
big_dolomite_bricks.register();
// Greywacke
var big_greywacke_bricks = VanillaFactory.createBlock("big_greywacke_bricks", <blockmaterial:Rock>);
big_greywacke_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_greywacke_bricks.setToolLevel(1);
big_greywacke_bricks.setBlockHardness(18);
big_greywacke_bricks.register();
// Chert
var big_chert_bricks = VanillaFactory.createBlock("big_chert_bricks", <blockmaterial:Rock>);
big_chert_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_chert_bricks.setToolLevel(1);
big_chert_bricks.setBlockHardness(18);
big_chert_bricks.register();

// Tapestry Wool
var tapestry_purple = VanillaFactory.createBlock("tapestry_purple", <blockmaterial:Ground>);
tapestry_purple.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_purple.setBlockSoundType(<soundtype:cloth>);
tapestry_purple.setBlockHardness(0.8);
tapestry_purple.setBlockResistance(0.8);
tapestry_purple.register();
var tapestry_red = VanillaFactory.createBlock("tapestry_red", <blockmaterial:Ground>);
tapestry_red.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_red.setBlockSoundType(<soundtype:cloth>);
tapestry_red.setBlockHardness(0.8);
tapestry_red.setBlockResistance(0.8);
tapestry_red.register();

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

var foundation_micomi = VanillaFactory.createBlock("foundation_micomi", <blockmaterial:Rock>);
foundation_micomi.setCreativeTab(<creativetab:rotn_blocks>);
foundation_micomi.setBlockSoundType(<soundtype:stone>);
foundation_micomi.setBlockHardness(4.0);
foundation_micomi.setBlockResistance(20.0);
foundation_micomi.setToolLevel(0);
foundation_micomi.register();

var fire_block = VanillaFactory.createBlock("fire_block", <blockmaterial:Fire>);
fire_block.setBlockSoundType(<soundtype:cloth>);
fire_block.setLightValue(15);
fire_block.setBlockLayer("CUTOUT");
fire_block.setPassable(true);
fire_block.setCreativeTab(<creativetab:decorations>);
fire_block.register();

var planarspsp2 = VanillaFactory.createBlock("planarspsp2", <blockmaterial:Rock>);
planarspsp2.setCreativeTab(<creativetab:rotn_blocks>);
planarspsp2.setBlockHardness(350.0);
planarspsp2.setBlockResistance(3600000.0);
planarspsp2.setBlockSoundType(<soundtype:stone>);
planarspsp2.setToolClass("pickaxe");
planarspsp2.setToolLevel(99);
planarspsp2.register();

var salty_crust = VanillaFactory.createBlock("salty_crust", <blockmaterial:Ground>);
salty_crust.setCreativeTab(<creativetab:rotn_blocks>);
salty_crust.setBlockSoundType(<soundtype:ground>);
salty_crust.setToolClass("shovel");
salty_crust.setBlockHardness(1.0);
salty_crust.setBlockResistance(5.0);
salty_crust.setToolLevel(0);
salty_crust.register();

var rocky_dirt = VanillaFactory.createBlock("rocky_dirt", <blockmaterial:Ground>);
rocky_dirt.setCreativeTab(<creativetab:rotn_blocks>);
rocky_dirt.setBlockSoundType(<soundtype:ground>);
rocky_dirt.setToolClass("shovel");
rocky_dirt.setBlockHardness(4.0);
rocky_dirt.setBlockResistance(5.0);
rocky_dirt.setToolLevel(1);
rocky_dirt.register();

var weathered_dirt = VanillaFactory.createBlock("weathered_dirt", <blockmaterial:Ground>);
weathered_dirt.setCreativeTab(<creativetab:rotn_blocks>);
weathered_dirt.setBlockSoundType(<soundtype:ground>);
weathered_dirt.setToolClass("shovel");
weathered_dirt.setBlockHardness(4.0);
weathered_dirt.setBlockResistance(5.0);
weathered_dirt.setToolLevel(1);
weathered_dirt.register();

var diatomite = VanillaFactory.createBlock("diatomite", <blockmaterial:Ground>);
diatomite.setCreativeTab(<creativetab:rotn_blocks>);
diatomite.setBlockSoundType(<soundtype:ground>);
diatomite.setToolClass("shovel");
diatomite.setBlockHardness(5.5);
diatomite.setBlockResistance(5.0);
diatomite.setToolLevel(1);
diatomite.register();

var ofuda = VanillaFactory.createBlock("ofuda", <blockmaterial:Plants>);
ofuda.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
ofuda.setBlockHardness(0.0);
ofuda.setBlockResistance(2.0);
ofuda.setFullBlock(false);
ofuda.setPassable(true);
ofuda.setReplaceable(false);
ofuda.setLightOpacity(0);
ofuda.setLightValue(0.2);
ofuda.setBlockLayer("CUTOUT");
ofuda.setBlockSoundType(<soundtype:plant>);
ofuda.setToolClass("none");
ofuda.register();

// sandstone native copper
var n_copper_sandstone = VanillaFactory.createBlock("n_copper_sandstone", <blockmaterial:Rock>);
n_copper_sandstone.setCreativeTab(<creativetab:rotn_blocks>);
n_copper_sandstone.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone.setBlockHardness(4.0);
n_copper_sandstone.setBlockResistance(15.0);
n_copper_sandstone.setBeaconBase(true);
n_copper_sandstone.setToolLevel(0);
n_copper_sandstone.register();

var n_copper_sandstone_red = VanillaFactory.createBlock("n_copper_sandstone_red", <blockmaterial:Rock>);
n_copper_sandstone_red.setCreativeTab(<creativetab:rotn_blocks>);
n_copper_sandstone_red.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone_red.setBlockHardness(4.0);
n_copper_sandstone_red.setBlockResistance(15.0);
n_copper_sandstone_red.setBeaconBase(true);
n_copper_sandstone_red.setToolLevel(0);
n_copper_sandstone_red.register();

// cobblestone paths
// Coade
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
cobblestone_path_coade.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_coade.setToolLevel(0);
cobblestone_path_coade.register();
// Red Granite
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
cobblestone_path_red_granite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_red_granite.setToolLevel(0);
cobblestone_path_red_granite.register();
// Black Granite
var cobblestone_path_black_granite = VanillaFactory.createBlock("cobblestone_path_black_granite", <blockmaterial:Rock>);
cobblestone_path_black_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_black_granite.setFullBlock(false);
cobblestone_path_black_granite.setLightOpacity(254);
cobblestone_path_black_granite.setSlipperiness(0.75f);
cobblestone_path_black_granite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_black_granite.setToolLevel(0);
cobblestone_path_black_granite.register();
// Rhyolite
var cobblestone_path_rhyolite = VanillaFactory.createBlock("cobblestone_path_rhyolite", <blockmaterial:Rock>);
cobblestone_path_rhyolite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_rhyolite.setFullBlock(false);
cobblestone_path_rhyolite.setLightOpacity(254);
cobblestone_path_rhyolite.setSlipperiness(0.75f);
cobblestone_path_rhyolite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_rhyolite.setToolLevel(0);
cobblestone_path_rhyolite.register();
// Andesite
var cobblestone_path_andesite = VanillaFactory.createBlock("cobblestone_path_andesite", <blockmaterial:Rock>);
cobblestone_path_andesite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_andesite.setFullBlock(false);
cobblestone_path_andesite.setLightOpacity(254);
cobblestone_path_andesite.setSlipperiness(0.75f);
cobblestone_path_andesite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_andesite.setToolLevel(0);
cobblestone_path_andesite.register();
// Gabbro
var cobblestone_path_gabbro = VanillaFactory.createBlock("cobblestone_path_gabbro", <blockmaterial:Rock>);
cobblestone_path_gabbro.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_gabbro.setFullBlock(false);
cobblestone_path_gabbro.setLightOpacity(254);
cobblestone_path_gabbro.setSlipperiness(0.75f);
cobblestone_path_gabbro.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_gabbro.setToolLevel(0);
cobblestone_path_gabbro.register();
// Basalt
var cobblestone_path_basalt = VanillaFactory.createBlock("cobblestone_path_basalt", <blockmaterial:Rock>);
cobblestone_path_basalt.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_basalt.setFullBlock(false);
cobblestone_path_basalt.setLightOpacity(254);
cobblestone_path_basalt.setSlipperiness(0.75f);
cobblestone_path_basalt.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_basalt.setToolLevel(0);
cobblestone_path_basalt.register();
// Komatiite
var cobblestone_path_komatiite = VanillaFactory.createBlock("cobblestone_path_komatiite", <blockmaterial:Rock>);
cobblestone_path_komatiite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_komatiite.setFullBlock(false);
cobblestone_path_komatiite.setLightOpacity(254);
cobblestone_path_komatiite.setSlipperiness(0.75f);
cobblestone_path_komatiite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_komatiite.setToolLevel(0);
cobblestone_path_komatiite.register();
// Dacite
var cobblestone_path_dacite = VanillaFactory.createBlock("cobblestone_path_dacite", <blockmaterial:Rock>);
cobblestone_path_dacite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_dacite.setFullBlock(false);
cobblestone_path_dacite.setLightOpacity(254);
cobblestone_path_dacite.setSlipperiness(0.75f);
cobblestone_path_dacite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_dacite.setToolLevel(0);
cobblestone_path_dacite.register();

// torch posts / vanilla torch post is BWM's shaft
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
glareshaft.setCreativeTab(<creativetab:decorations>);
glareshaft.setToolLevel(0);
glareshaft.register();
