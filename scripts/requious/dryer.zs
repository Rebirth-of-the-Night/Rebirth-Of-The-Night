import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.GaugeDirection;

var dryer = <assembly:dryer>;
 
static dryerProgress as SlotVisual = SlotVisual.createGauge("requious:textures/gui/assembly_slots.png",6,5,1,6,GaugeDirection.right(),false);
 
dryer.setTextSlot(3,0).setVisual(SlotVisual.create(7,1)).setRenderText("Drying Unit");
dryer.setItemSlot(3,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input1");
dryer.setItemSlot(4,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input2");
dryer.setItemSlot(5,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input3");
dryer.setDurationSlot(3,2).setGroup("input1").setVisual(dryerProgress);
dryer.setDurationSlot(4,2).setGroup("input2").setVisual(dryerProgress);
dryer.setDurationSlot(5,2).setGroup("input3").setVisual(dryerProgress);
dryer.setItemSlot(3,3,ComponentFace.all(),1).setAccess(false,true).setHandAccess(false,true).allowOverfill().setGroup("output1");
dryer.setItemSlot(4,3,ComponentFace.all(),1).setAccess(false,true).setHandAccess(false,true).allowOverfill().setGroup("output2");
dryer.setItemSlot(5,3,ComponentFace.all(),1).setAccess(false,true).setHandAccess(false,true).allowOverfill().setGroup("output3");

// dry sponge
var drySponge1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<minecraft:sponge>);
}).requireItem("input1",<minecraft:sponge:1>).requireDuration("input1", 360);
dryer.addRecipe(drySponge1);

var drySponge2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<minecraft:sponge>);
}).requireItem("input2",<minecraft:sponge:1>) .requireDuration("input2", 360);
dryer.addRecipe(drySponge2);

var drySponge3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<minecraft:sponge>);
}).requireItem("input3",<minecraft:sponge:1>) .requireDuration("input3", 360);
dryer.addRecipe(drySponge3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var drySpongeJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<minecraft:sponge>);
}).requireItem("input",<minecraft:sponge:1>).requireDuration("duration", 360);

dryer.addJEIRecipe(drySpongeJEI);

// pulp paper
var pulpPaper1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<minecraft:paper>);
}).requireItem("input1",<pyrotech:material:25>).requireDuration("input1", 220);
dryer.addRecipe(pulpPaper1);

var pulpPaper2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<minecraft:paper>);
}).requireItem("input2",<pyrotech:material:25>) .requireDuration("input2", 220);
dryer.addRecipe(pulpPaper2);

var pulpPaper3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<minecraft:paper>);
}).requireItem("input3",<pyrotech:material:25>) .requireDuration("input3", 220);
dryer.addRecipe(pulpPaper3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var pulpPaperJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<minecraft:paper>);
}).requireItem("input",<pyrotech:material:25>).requireDuration("duration", 220);

dryer.addJEIRecipe(pulpPaperJEI);

// raisins
var grapeRaisins1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<harvestcraft:raisinsitem>);
}).requireItem("input1",<ore:cropGrape>).requireDuration("input1", 540);
dryer.addRecipe(grapeRaisins1);

var grapeRaisins2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<harvestcraft:raisinsitem>);
}).requireItem("input2",<ore:cropGrape>) .requireDuration("input2", 540);
dryer.addRecipe(grapeRaisins2);

var grapeRaisins3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<harvestcraft:raisinsitem>);
}).requireItem("input3",<ore:cropGrape>) .requireDuration("input3", 540);
dryer.addRecipe(grapeRaisins3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var grapeRaisinsJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<harvestcraft:raisinsitem>);
}).requireItem("input",<ore:cropGrape>).requireDuration("duration", 540);

dryer.addJEIRecipe(grapeRaisinsJEI);

// vanilla
var vanillaVanilla1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<harvestcraft:vanillaitem>);
}).requireItem("input1",<harvestcraft:vanillabeanitem>).requireDuration("input1", 540);
dryer.addRecipe(vanillaVanilla1);

var vanillaVanilla2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<harvestcraft:vanillaitem>);
}).requireItem("input2",<harvestcraft:vanillabeanitem>) .requireDuration("input2", 540);
dryer.addRecipe(vanillaVanilla2);

var vanillaVanilla3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<harvestcraft:vanillaitem>);
}).requireItem("input3",<harvestcraft:vanillabeanitem>) .requireDuration("input3", 540);
dryer.addRecipe(vanillaVanilla3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var vanillaVanillaJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<harvestcraft:vanillaitem>);
}).requireItem("input",<harvestcraft:vanillabeanitem>).requireDuration("duration", 540);

dryer.addJEIRecipe(vanillaVanillaJEI);

// jute
var dryJute1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<pyrotech:material:2>);
}).requireItem("input1",<harvestcraft:juteitem>).requireDuration("input1", 220);
dryer.addRecipe(dryJute1);

var dryJute2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<pyrotech:material:2>);
}).requireItem("input2",<harvestcraft:juteitem>) .requireDuration("input2", 220);
dryer.addRecipe(dryJute2);

var dryJute3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<pyrotech:material:2>);
}).requireItem("input3",<harvestcraft:juteitem>) .requireDuration("input3", 220);
dryer.addRecipe(dryJute3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var dryJuteJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<pyrotech:material:2>);
}).requireItem("input",<harvestcraft:juteitem>).requireDuration("duration", 220);

dryer.addJEIRecipe(dryJuteJEI);

// dried fiber
var dryFiber1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<pyrotech:tinder>);
}).requireItem("input1",<pyrotech:material:12>).requireDuration("input1", 220);
dryer.addRecipe(dryFiber1);

var dryFiber2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<pyrotech:tinder>);
}).requireItem("input2",<pyrotech:material:12>) .requireDuration("input2", 220);
dryer.addRecipe(dryFiber2);

var dryFiber3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<pyrotech:tinder>);
}).requireItem("input3",<pyrotech:material:12>) .requireDuration("input3", 220);
dryer.addRecipe(dryFiber3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var dryFiberJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<pyrotech:tinder>);
}).requireItem("input",<pyrotech:material:12>).requireDuration("duration", 220);

dryer.addJEIRecipe(dryFiberJEI);

// dried sapling
var drySapling1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<pyrotech:tinder>);
}).requireItem("input1",<ore:treeSapling>).requireDuration("input1", 220);
dryer.addRecipe(drySapling1);

var drySapling2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<pyrotech:tinder>);
}).requireItem("input2",<ore:treeSapling>) .requireDuration("input2", 220);
dryer.addRecipe(drySapling2);

var drySapling3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<pyrotech:tinder>);
}).requireItem("input3",<ore:treeSapling>) .requireDuration("input3", 220);
dryer.addRecipe(drySapling3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var drySaplingJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<pyrotech:tinder>);
}).requireItem("input",<ore:treeSapling>).requireDuration("duration", 220);

dryer.addJEIRecipe(drySaplingJEI);

// adobe
var dryAdobe1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<earthworks:item_adobe>);
}).requireItem("input1",<contenttweaker:unfired_adobe_brick>).requireDuration("input1", 310);
dryer.addRecipe(dryAdobe1);

var dryAdobe2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<earthworks:item_adobe>);
}).requireItem("input2",<contenttweaker:unfired_adobe_brick>) .requireDuration("input2", 310);
dryer.addRecipe(dryAdobe2);

var dryAdobe3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<earthworks:item_adobe>);
}).requireItem("input3",<contenttweaker:unfired_adobe_brick>) .requireDuration("input3", 310);
dryer.addRecipe(dryAdobe3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var dryAdobeJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<earthworks:item_adobe>);
}).requireItem("input",<contenttweaker:unfired_adobe_brick>).requireDuration("duration", 310);

dryer.addJEIRecipe(dryAdobeJEI);

// muh soap
var drySoap1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<betterwithmods:aesthetic:10>);
}).requireItem("input1",<betterwithaddons:wet_soap>).requireDuration("input1", 200);
dryer.addRecipe(drySoap1);

var drySoap2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<betterwithmods:aesthetic:10>);
}).requireItem("input2",<betterwithaddons:wet_soap>) .requireDuration("input2", 200);
dryer.addRecipe(drySoap2);

var drySoap3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<betterwithmods:aesthetic:10>);
}).requireItem("input3",<betterwithaddons:wet_soap>) .requireDuration("input3", 200);
dryer.addRecipe(drySoap3);

dryer.setJEIItemSlot(3,2,"input");
dryer.setJEIItemSlot(5,2,"output");
dryer.setJEIDurationSlot(4,2,"duration", dryerProgress);
 
var drySoapJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<betterwithmods:aesthetic:10>);
}).requireItem("input",<betterwithaddons:wet_soap>).requireDuration("duration", 200);

dryer.addJEIRecipe(drySoapJEI);