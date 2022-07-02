import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.GaugeDirection;

var redstolyzer = <assembly:redstolyzer>;
 
static redstolyzerProgress as SlotVisual = SlotVisual.createGauge("requious:textures/gui/assembly_slots.png",6,5,1,6,GaugeDirection.right(),false);
 
redstolyzer.setTextSlot(3,0).setVisual(SlotVisual.create(7,1)).setRenderText("Drying Unit");
redstolyzer.setItemSlot(3,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input1");
redstolyzer.setItemSlot(4,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input2");
redstolyzer.setItemSlot(5,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input3");
redstolyzer.setDurationSlot(3,2).setGroup("input1").setVisual(redstolyzerProgress);
redstolyzer.setDurationSlot(4,2).setGroup("input2").setVisual(redstolyzerProgress);
redstolyzer.setDurationSlot(5,2).setGroup("input3").setVisual(redstolyzerProgress);
redstolyzer.setItemSlot(3,3,ComponentFace.all(),1).setAccess(false,true).setHandAccess(false,true).allowOverfill().setGroup("output1");
redstolyzer.setItemSlot(4,3,ComponentFace.all(),1).setAccess(false,true).setHandAccess(false,true).allowOverfill().setGroup("output2");
redstolyzer.setItemSlot(5,3,ComponentFace.all(),1).setAccess(false,true).setHandAccess(false,true).allowOverfill().setGroup("output3");

// dry sponge
var drySponge1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<minecraft:sponge>);
}).requireItem("input1",<minecraft:sponge:1>).requireDuration("input1", 360);
redstolyzer.addRecipe(drySponge1);

var drySponge2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<minecraft:sponge>);
}).requireItem("input2",<minecraft:sponge:1>) .requireDuration("input2", 360);
redstolyzer.addRecipe(drySponge2);

var drySponge3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<minecraft:sponge>);
}).requireItem("input3",<minecraft:sponge:1>) .requireDuration("input3", 360);
redstolyzer.addRecipe(drySponge3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var drySpongeJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<minecraft:sponge>);
}).requireItem("input",<minecraft:sponge:1>).requireDuration("duration", 360);

redstolyzer.addJEIRecipe(drySpongeJEI);

// pulp paper
var pulpPaper1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<minecraft:paper>);
}).requireItem("input1",<pyrotech:material:25>).requireDuration("input1", 220);
redstolyzer.addRecipe(pulpPaper1);

var pulpPaper2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<minecraft:paper>);
}).requireItem("input2",<pyrotech:material:25>) .requireDuration("input2", 220);
redstolyzer.addRecipe(pulpPaper2);

var pulpPaper3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<minecraft:paper>);
}).requireItem("input3",<pyrotech:material:25>) .requireDuration("input3", 220);
redstolyzer.addRecipe(pulpPaper3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var pulpPaperJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<minecraft:paper>);
}).requireItem("input",<pyrotech:material:25>).requireDuration("duration", 220);

redstolyzer.addJEIRecipe(pulpPaperJEI);

// raisins
var grapeRaisins1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<harvestcraft:raisinsitem>);
}).requireItem("input1",<ore:cropGrape>).requireDuration("input1", 540);
redstolyzer.addRecipe(grapeRaisins1);

var grapeRaisins2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<harvestcraft:raisinsitem>);
}).requireItem("input2",<ore:cropGrape>) .requireDuration("input2", 540);
redstolyzer.addRecipe(grapeRaisins2);

var grapeRaisins3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<harvestcraft:raisinsitem>);
}).requireItem("input3",<ore:cropGrape>) .requireDuration("input3", 540);
redstolyzer.addRecipe(grapeRaisins3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var grapeRaisinsJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<harvestcraft:raisinsitem>);
}).requireItem("input",<ore:cropGrape>).requireDuration("duration", 540);

redstolyzer.addJEIRecipe(grapeRaisinsJEI);

// vanilla
var vanillaVanilla1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<harvestcraft:vanillaitem>);
}).requireItem("input1",<harvestcraft:vanillabeanitem>).requireDuration("input1", 540);
redstolyzer.addRecipe(vanillaVanilla1);

var vanillaVanilla2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<harvestcraft:vanillaitem>);
}).requireItem("input2",<harvestcraft:vanillabeanitem>) .requireDuration("input2", 540);
redstolyzer.addRecipe(vanillaVanilla2);

var vanillaVanilla3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<harvestcraft:vanillaitem>);
}).requireItem("input3",<harvestcraft:vanillabeanitem>) .requireDuration("input3", 540);
redstolyzer.addRecipe(vanillaVanilla3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var vanillaVanillaJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<harvestcraft:vanillaitem>);
}).requireItem("input",<harvestcraft:vanillabeanitem>).requireDuration("duration", 540);

redstolyzer.addJEIRecipe(vanillaVanillaJEI);

// jute
var dryJute1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<pyrotech:material:2>);
}).requireItem("input1",<harvestcraft:juteitem>).requireDuration("input1", 220);
redstolyzer.addRecipe(dryJute1);

var dryJute2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<pyrotech:material:2>);
}).requireItem("input2",<harvestcraft:juteitem>) .requireDuration("input2", 220);
redstolyzer.addRecipe(dryJute2);

var dryJute3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<pyrotech:material:2>);
}).requireItem("input3",<harvestcraft:juteitem>) .requireDuration("input3", 220);
redstolyzer.addRecipe(dryJute3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var dryJuteJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<pyrotech:material:2>);
}).requireItem("input",<harvestcraft:juteitem>).requireDuration("duration", 220);

redstolyzer.addJEIRecipe(dryJuteJEI);

// dried fiber
var dryFiber1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<pyrotech:tinder>);
}).requireItem("input1",<pyrotech:material:12>).requireDuration("input1", 220);
redstolyzer.addRecipe(dryFiber1);

var dryFiber2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<pyrotech:tinder>);
}).requireItem("input2",<pyrotech:material:12>) .requireDuration("input2", 220);
redstolyzer.addRecipe(dryFiber2);

var dryFiber3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<pyrotech:tinder>);
}).requireItem("input3",<pyrotech:material:12>) .requireDuration("input3", 220);
redstolyzer.addRecipe(dryFiber3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var dryFiberJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<pyrotech:tinder>);
}).requireItem("input",<pyrotech:material:12>).requireDuration("duration", 220);

redstolyzer.addJEIRecipe(dryFiberJEI);

// dried sapling
var drySapling1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<pyrotech:tinder>);
}).requireItem("input1",<ore:treeSapling>).requireDuration("input1", 220);
redstolyzer.addRecipe(drySapling1);

var drySapling2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<pyrotech:tinder>);
}).requireItem("input2",<ore:treeSapling>) .requireDuration("input2", 220);
redstolyzer.addRecipe(drySapling2);

var drySapling3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<pyrotech:tinder>);
}).requireItem("input3",<ore:treeSapling>) .requireDuration("input3", 220);
redstolyzer.addRecipe(drySapling3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var drySaplingJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<pyrotech:tinder>);
}).requireItem("input",<ore:treeSapling>).requireDuration("duration", 220);

redstolyzer.addJEIRecipe(drySaplingJEI);

// adobe
var dryAdobe1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<earthworks:item_adobe>);
}).requireItem("input1",<contenttweaker:unfired_adobe_brick>).requireDuration("input1", 310);
redstolyzer.addRecipe(dryAdobe1);

var dryAdobe2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<earthworks:item_adobe>);
}).requireItem("input2",<contenttweaker:unfired_adobe_brick>) .requireDuration("input2", 310);
redstolyzer.addRecipe(dryAdobe2);

var dryAdobe3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<earthworks:item_adobe>);
}).requireItem("input3",<contenttweaker:unfired_adobe_brick>) .requireDuration("input3", 310);
redstolyzer.addRecipe(dryAdobe3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var dryAdobeJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<earthworks:item_adobe>);
}).requireItem("input",<contenttweaker:unfired_adobe_brick>).requireDuration("duration", 310);

redstolyzer.addJEIRecipe(dryAdobeJEI);

// muh soap
var drySoap1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<betterwithmods:aesthetic:10>);
}).requireItem("input1",<betterwithaddons:wet_soap>).requireDuration("input1", 200);
redstolyzer.addRecipe(drySoap1);

var drySoap2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<betterwithmods:aesthetic:10>);
}).requireItem("input2",<betterwithaddons:wet_soap>) .requireDuration("input2", 200);
redstolyzer.addRecipe(drySoap2);

var drySoap3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<betterwithmods:aesthetic:10>);
}).requireItem("input3",<betterwithaddons:wet_soap>) .requireDuration("input3", 200);
redstolyzer.addRecipe(drySoap3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var drySoapJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<betterwithmods:aesthetic:10>);
}).requireItem("input",<betterwithaddons:wet_soap>).requireDuration("duration", 200);

redstolyzer.addJEIRecipe(drySoapJEI);


// dirt to mud
var dryMud1 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output1",<betterwithmods:dirt_pile>);
}).requireItem("input1",<biomesoplenty:mudball>).requireDuration("input1", 200);
redstolyzer.addRecipe(dryMud1);

var dryMud2 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output2",<betterwithmods:dirt_pile>);
}).requireItem("input2",<biomesoplenty:mudball>) .requireDuration("input2", 200);
redstolyzer.addRecipe(dryMud2);

var dryMud3 = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output3",<betterwithmods:dirt_pile>);
}).requireItem("input3",<biomesoplenty:mudball>) .requireDuration("input3", 200);
redstolyzer.addRecipe(dryMud3);

redstolyzer.setJEIItemSlot(3,2,"input");
redstolyzer.setJEIItemSlot(5,2,"output");
redstolyzer.setJEIDurationSlot(4,2,"duration", redstolyzerProgress);
 
var dryMudJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<betterwithmods:dirt_pile>);
}).requireItem("input",<biomesoplenty:mudball>).requireDuration("duration", 200);

redstolyzer.addJEIRecipe(dryMudJEI);