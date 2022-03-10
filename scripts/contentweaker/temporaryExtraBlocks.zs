#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;

import mods.contenttweaker.AxisAlignedBB;

var limestone_cobble = VanillaFactory.createBlock("limestone_cobble", <blockmaterial:Rock>);
limestone_cobble.setCreativeTab(<creativetab:buildingBlocks>);
limestone_cobble.setBlockSoundType(<soundtype:stone>);
limestone_cobble.setToolLevel(0);
limestone_cobble.setBlockHardness(4);
limestone_cobble.register();

var chalk_cobble = VanillaFactory.createBlock("chalk_cobble", <blockmaterial:Rock>);
chalk_cobble.setCreativeTab(<creativetab:buildingBlocks>);
chalk_cobble.setBlockSoundType(<soundtype:stone>);
chalk_cobble.setToolLevel(0);
chalk_cobble.setBlockHardness(4);
chalk_cobble.register();

var shale_cobble = VanillaFactory.createBlock("shale_cobble", <blockmaterial:Rock>);
shale_cobble.setCreativeTab(<creativetab:buildingBlocks>);
shale_cobble.setBlockSoundType(<soundtype:stone>);
shale_cobble.setToolLevel(0);
shale_cobble.setBlockHardness(4);
shale_cobble.register();

var siltstone_cobble = VanillaFactory.createBlock("siltstone_cobble", <blockmaterial:Rock>);
siltstone_cobble.setCreativeTab(<creativetab:buildingBlocks>);
siltstone_cobble.setBlockSoundType(<soundtype:stone>);
siltstone_cobble.setToolLevel(0);
siltstone_cobble.setBlockHardness(4);
siltstone_cobble.register();

var lignite_cobble = VanillaFactory.createBlock("lignite_cobble", <blockmaterial:Rock>);
lignite_cobble.setCreativeTab(<creativetab:buildingBlocks>);
lignite_cobble.setBlockSoundType(<soundtype:stone>);
lignite_cobble.setToolLevel(0);
lignite_cobble.setBlockHardness(4);
lignite_cobble.register();

var dolomite_cobble = VanillaFactory.createBlock("dolomite_cobble", <blockmaterial:Rock>);
dolomite_cobble.setCreativeTab(<creativetab:buildingBlocks>);
dolomite_cobble.setBlockSoundType(<soundtype:stone>);
dolomite_cobble.setToolLevel(0);
dolomite_cobble.setBlockHardness(4);
dolomite_cobble.register();

var greywacke_cobble = VanillaFactory.createBlock("greywacke_cobble", <blockmaterial:Rock>);
greywacke_cobble.setCreativeTab(<creativetab:buildingBlocks>);
greywacke_cobble.setBlockSoundType(<soundtype:stone>);
greywacke_cobble.setToolLevel(0);
greywacke_cobble.setBlockHardness(4);
greywacke_cobble.register();

var chert_cobble = VanillaFactory.createBlock("chert_cobble", <blockmaterial:Rock>);
chert_cobble.setCreativeTab(<creativetab:buildingBlocks>);
chert_cobble.setBlockSoundType(<soundtype:stone>);
chert_cobble.setToolLevel(0);
chert_cobble.setBlockHardness(4);
chert_cobble.register();

// Harder Block variants
// These can be removed and replaced with their default counterparts once ESM can read Tool Progression's values or once TP registers its values in a way that ESM can use them

var rammed_earth_vanilla_dirt = VanillaFactory.createBlock("rammed_earth_vanilla_dirt", <blockmaterial:Rock>);
rammed_earth_vanilla_dirt.setCreativeTab(<creativetab:rotn_blocks>);
rammed_earth_vanilla_dirt.setBlockSoundType(<soundtype:stone>);
rammed_earth_vanilla_dirt.setToolLevel(0);
rammed_earth_vanilla_dirt.setBlockHardness(30);
rammed_earth_vanilla_dirt.register();

var rammed_earth_loamy_dirt = VanillaFactory.createBlock("rammed_earth_loamy_dirt", <blockmaterial:Rock>);
rammed_earth_loamy_dirt.setCreativeTab(<creativetab:rotn_blocks>);
rammed_earth_loamy_dirt.setBlockSoundType(<soundtype:stone>);
rammed_earth_loamy_dirt.setToolLevel(0);
rammed_earth_loamy_dirt.setBlockHardness(30);
rammed_earth_loamy_dirt.register();

var rammed_earth_sandy_dirt = VanillaFactory.createBlock("rammed_earth_sandy_dirt", <blockmaterial:Rock>);
rammed_earth_sandy_dirt.setCreativeTab(<creativetab:rotn_blocks>);
rammed_earth_sandy_dirt.setBlockSoundType(<soundtype:stone>);
rammed_earth_sandy_dirt.setToolLevel(0);
rammed_earth_sandy_dirt.setBlockHardness(30);
rammed_earth_sandy_dirt.register();

var rammed_earth_silty_dirt = VanillaFactory.createBlock("rammed_earth_silty_dirt", <blockmaterial:Rock>);
rammed_earth_silty_dirt.setCreativeTab(<creativetab:rotn_blocks>);
rammed_earth_silty_dirt.setBlockSoundType(<soundtype:stone>);
rammed_earth_silty_dirt.setToolLevel(0);
rammed_earth_silty_dirt.setBlockHardness(30);
rammed_earth_silty_dirt.register();

var dry_fitted_coade_stone = VanillaFactory.createBlock("dry_fitted_coade_stone", <blockmaterial:Rock>);
dry_fitted_coade_stone.setCreativeTab(<creativetab:rotn_blocks>);
dry_fitted_coade_stone.setBlockSoundType(<soundtype:stone>);
dry_fitted_coade_stone.setToolLevel(1);
dry_fitted_coade_stone.setBlockHardness(32);
dry_fitted_coade_stone.register();

var dry_fitted_mixed_stone = VanillaFactory.createBlock("dry_fitted_mixed_stone", <blockmaterial:Rock>);
dry_fitted_mixed_stone.setCreativeTab(<creativetab:rotn_blocks>);
dry_fitted_mixed_stone.setBlockSoundType(<soundtype:stone>);
dry_fitted_mixed_stone.setToolLevel(1);
dry_fitted_mixed_stone.setBlockHardness(32);
dry_fitted_mixed_stone.register();

var brick_minecraft_stone = VanillaFactory.createBlock("brick_minecraft_stone", <blockmaterial:Rock>);
brick_minecraft_stone.setCreativeTab(<creativetab:rotn_blocks>);
brick_minecraft_stone.setBlockSoundType(<soundtype:stone>);
brick_minecraft_stone.setToolLevel(1);
brick_minecraft_stone.setBlockHardness(36);
brick_minecraft_stone.register();

var brick_aether_legacy_holystone = VanillaFactory.createBlock("brick_aether_legacy_holystone", <blockmaterial:Rock>);
brick_aether_legacy_holystone.setCreativeTab(<creativetab:rotn_blocks>);
brick_aether_legacy_holystone.setBlockSoundType(<soundtype:stone>);
brick_aether_legacy_holystone.setToolLevel(1);
brick_aether_legacy_holystone.setBlockHardness(36);
brick_aether_legacy_holystone.register();

var brick_quark_sandstone = VanillaFactory.createBlock("brick_quark_sandstone", <blockmaterial:Rock>);
brick_quark_sandstone.setCreativeTab(<creativetab:rotn_blocks>);
brick_quark_sandstone.setBlockSoundType(<soundtype:stone>);
brick_quark_sandstone.setToolLevel(1);
brick_quark_sandstone.setBlockHardness(39);
brick_quark_sandstone.register();

var brick_quark_red_sandstone = VanillaFactory.createBlock("brick_quark_red_sandstone", <blockmaterial:Rock>);
brick_quark_red_sandstone.setCreativeTab(<creativetab:rotn_blocks>);
brick_quark_red_sandstone.setBlockSoundType(<soundtype:stone>);
brick_quark_red_sandstone.setToolLevel(1);
brick_quark_red_sandstone.setBlockHardness(39);
brick_quark_red_sandstone.register();

var brick_quark_soul_sandstone = VanillaFactory.createBlock("brick_quark_soul_sandstone", <blockmaterial:Rock>);
brick_quark_soul_sandstone.setCreativeTab(<creativetab:rotn_blocks>);
brick_quark_soul_sandstone.setBlockSoundType(<soundtype:stone>);
brick_quark_soul_sandstone.setToolLevel(1);
brick_quark_soul_sandstone.setBlockHardness(39);
brick_quark_soul_sandstone.register();

var brick_biomesoplenty_mud = VanillaFactory.createBlock("brick_biomesoplenty_mud", <blockmaterial:Rock>);
brick_biomesoplenty_mud.setCreativeTab(<creativetab:rotn_blocks>);
brick_biomesoplenty_mud.setBlockSoundType(<soundtype:stone>);
brick_biomesoplenty_mud.setToolLevel(1);
brick_biomesoplenty_mud.setBlockHardness(45);
brick_biomesoplenty_mud.register();

var brick_earthworks_adobe = VanillaFactory.createBlock("brick_earthworks_adobe", <blockmaterial:Rock>);
brick_earthworks_adobe.setCreativeTab(<creativetab:rotn_blocks>);
brick_earthworks_adobe.setBlockSoundType(<soundtype:stone>);
brick_earthworks_adobe.setToolLevel(1);
brick_earthworks_adobe.setBlockHardness(50);
brick_earthworks_adobe.register();

var brick_quark_brimstone = VanillaFactory.createBlock("brick_quark_brimstone", <blockmaterial:Rock>);
brick_quark_brimstone.setCreativeTab(<creativetab:rotn_blocks>);
brick_quark_brimstone.setBlockSoundType(<soundtype:stone>);
brick_quark_brimstone.setToolLevel(1);
brick_quark_brimstone.setBlockHardness(80);
brick_quark_brimstone.register();

var brick_quark_permafrost = VanillaFactory.createBlock("brick_quark_permafrost", <blockmaterial:Rock>);
brick_quark_permafrost.setCreativeTab(<creativetab:rotn_blocks>);
brick_quark_permafrost.setBlockSoundType(<soundtype:stone>);
brick_quark_permafrost.setToolLevel(1);
brick_quark_permafrost.setBlockHardness(80);
brick_quark_permafrost.register();

var brick_minecraft_clay = VanillaFactory.createBlock("brick_minecraft_clay", <blockmaterial:Rock>);
brick_minecraft_clay.setCreativeTab(<creativetab:rotn_blocks>);
brick_minecraft_clay.setBlockSoundType(<soundtype:stone>);
brick_minecraft_clay.setToolLevel(1);
brick_minecraft_clay.setBlockHardness(88);
brick_minecraft_clay.register();

var brick_quark_sandy = VanillaFactory.createBlock("brick_quark_sandy", <blockmaterial:Rock>);
brick_quark_sandy.setCreativeTab(<creativetab:rotn_blocks>);
brick_quark_sandy.setBlockSoundType(<soundtype:stone>);
brick_quark_sandy.setToolLevel(1);
brick_quark_sandy.setBlockHardness(88);
brick_quark_sandy.register();

var brick_pyrotech_masonry = VanillaFactory.createBlock("brick_pyrotech_masonry", <blockmaterial:Rock>);
brick_pyrotech_masonry.setCreativeTab(<creativetab:rotn_blocks>);
brick_pyrotech_masonry.setBlockSoundType(<soundtype:stone>);
brick_pyrotech_masonry.setToolLevel(1);
brick_pyrotech_masonry.setBlockHardness(92);
brick_pyrotech_masonry.register();

var brick_pyrotech_refractory = VanillaFactory.createBlock("brick_pyrotech_refractory", <blockmaterial:Rock>);
brick_pyrotech_refractory.setCreativeTab(<creativetab:rotn_blocks>);
brick_pyrotech_refractory.setBlockSoundType(<soundtype:stone>);
brick_pyrotech_refractory.setToolLevel(2);
brick_pyrotech_refractory.setBlockHardness(100);
brick_pyrotech_refractory.register();

var brick_minecraft_nether = VanillaFactory.createBlock("brick_minecraft_nether", <blockmaterial:Rock>);
brick_minecraft_nether.setCreativeTab(<creativetab:rotn_blocks>);
brick_minecraft_nether.setBlockSoundType(<soundtype:stone>);
brick_minecraft_nether.setToolLevel(3);
brick_minecraft_nether.setBlockHardness(115);
brick_minecraft_nether.register();

var brick_netherex_fiery = VanillaFactory.createBlock("brick_netherex_fiery", <blockmaterial:Rock>);
brick_netherex_fiery.setCreativeTab(<creativetab:rotn_blocks>);
brick_netherex_fiery.setBlockSoundType(<soundtype:stone>);
brick_netherex_fiery.setToolLevel(3);
brick_netherex_fiery.setBlockHardness(115);
brick_netherex_fiery.register();

var brick_minecraft_end = VanillaFactory.createBlock("brick_minecraft_end", <blockmaterial:Rock>);
brick_minecraft_end.setCreativeTab(<creativetab:rotn_blocks>);
brick_minecraft_end.setBlockSoundType(<soundtype:stone>);
brick_minecraft_end.setToolLevel(1);
brick_minecraft_end.setBlockHardness(130);
brick_minecraft_end.register();

var brick_betterwithaddons_whitebrick = VanillaFactory.createBlock("brick_betterwithaddons_whitebrick", <blockmaterial:Rock>);
brick_betterwithaddons_whitebrick.setCreativeTab(<creativetab:rotn_blocks>);
brick_betterwithaddons_whitebrick.setBlockSoundType(<soundtype:stone>);
brick_betterwithaddons_whitebrick.setToolLevel(1);
brick_betterwithaddons_whitebrick.setBlockHardness(130);
brick_betterwithaddons_whitebrick.register();

var brick_ceramics_porcelain = VanillaFactory.createBlock("brick_ceramics_porcelain", <blockmaterial:Rock>);
brick_ceramics_porcelain.setCreativeTab(<creativetab:rotn_blocks>);
brick_ceramics_porcelain.setBlockSoundType(<soundtype:stone>);
brick_ceramics_porcelain.setToolLevel(2);
brick_ceramics_porcelain.setBlockHardness(180);
brick_ceramics_porcelain.register();

//]