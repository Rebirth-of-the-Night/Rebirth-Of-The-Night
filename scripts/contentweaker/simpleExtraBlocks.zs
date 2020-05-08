#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

/*Recipes for Extra Blocks are handled in the minecraft.zs script*/

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

//Unfired Refractory Crucible
var crucible = VanillaFactory.createBlock("crucible", <blockmaterial:Iron>);
crucible.setCreativeTab(<creativetab:buildingBlocks>);
crucible.setBlockSoundType(<soundtype:stone>);
crucible.setFullBlock(false);
crucible.register();

//Broken Elevator
var elevator = VanillaFactory.createBlock("elevator", <blockmaterial:Ground>);
elevator.setCreativeTab(<creativetab:redstone>);
elevator.setBlockSoundType(<soundtype:stone>);
elevator.setFullBlock(false);
elevator.register();

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
//Rime
var rimelunarin = VanillaFactory.createBlock("lunarinrimebrick", <blockmaterial:Iron>);
rimelunarin.setCreativeTab(<creativetab:buildingBlocks>);
rimelunarin.register();
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
witheredblock.setWitherProof(true);
witheredblock.setCreativeTab(<creativetab:buildingBlocks>);
witheredblock.setBlockSoundType(<soundtype:sand>);
witheredblock.setGravity(true);
witheredblock.register();

var starblock = VanillaFactory.createBlock("starblock", <blockmaterial:Glass>);
starblock.setWitherProof(false);
starblock.setCreativeTab(<creativetab:buildingBlocks>);
starblock.setLightValue(8);
starblock.setBlockSoundType(<soundtype:glass>);
starblock.register();
